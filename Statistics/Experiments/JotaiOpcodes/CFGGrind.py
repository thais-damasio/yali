"""Gets histograms using CFGGring."""
from shutil import which
from pathlib import Path
from typing import Optional, List, Dict, Tuple
import subprocess
import argparse
import json
import re
import os
import pandas as pd

PATH_TO_YALI = str(Path(Path(
    Path(Path(__file__).parent.absolute()).parent.absolute()
).parent.absolute()).parent.absolute())

PATH_TO_SCRIPT = str(Path(__file__).parent.absolute())

parser = argparse.ArgumentParser()
parser.add_argument(
    "--dataset", type=str, required=True,
    help="Directory name with the IRs (Jotai) to get the histogram")
parser.add_argument("--clang", type=str, required=True, help="Path to clang")
parser.add_argument(
    "--baselineCSVStatic", type=str, required=False,
    help="CSV path for static histograms compiled with -O0")
parser.add_argument(
    "--baselineCSVDynamic", type=str, required=False,
    help="CSV path for dynamic histograms compiled with -O0")
args = parser.parse_args()


def _GetCFGGrindStatistics(
        file_name: str, class_code: str, obj_path: str, csv_static: List[Dict],
        csv_dynamic: List[Dict]):
    """Gets statistics (json format) for `obj_path`.

    Args:
        file_name: Name of the file
        class_code: Class of the program
        obj_path: Path to the object
        csv_static: List to add histogram with static opcodes
        csv_dynamic: List to add histogram with dynamic opcodes
    """
    temp = re.sub(r".*\.[A-Za-z]*_", "", file_name)
    function_name = re.sub("_Final..*", "", temp)

    command = (f"cfggrind_info -s functions -f \"{obj_path}::{function_name}\" "
               + f"-i {obj_path}.map -m json {obj_path}.cfg")

    out_raw = subprocess.run(
        command, capture_output=True, shell=True, check=True)
    out_json = json.loads(out_raw.stdout)

    if isinstance(out_json, list) and len(out_json) > 0:
        out_json = out_json[0]

        out_json["static"]["instructions"]["opcodes"]["id"] = file_name
        out_json["static"]["instructions"]["opcodes"]["class"] = class_code
        out_json["dynamic"]["instructions"]["opcodes"]["id"] = file_name
        out_json["dynamic"]["instructions"]["opcodes"]["class"] = class_code

        csv_static.append(out_json["static"]["instructions"]["opcodes"])
        csv_dynamic.append(out_json["dynamic"]["instructions"]["opcodes"])
    else:
        print(f"Err handling output. Output: {out_json}")


def _Compile(
        file_name: str, file_path: str, out_path: str,
        clang_path: str) -> Optional[str]:
    """Compiles `file_path`

    Args:
        file_name: Name of the file to generate the output
        file_path: Path to the IR file
        out_path: Path to the folder to save the output
        clang_path: Path to clang

    Returns:
        Path to the object file if the compilation was successful, `None`
        otherwise
    """
    out_file = f"{out_path}/{file_name}.o"
    os_result = os.system(
        f"{clang_path} -Wno-everything {file_path} -o {out_file}")

    if os_result != 0:
        print(f"Err compiling {file_path}!")
        return None

    return out_file


def _CreateDot(obj_path: str, path_to_dots: str):
    """Creates cfg and dots to a object file.

    Args:
        obj_path: Path to the object file
        path_to_dots: Path to save the dot files
    """
    os.chdir(path_to_dots)
    os_result = os.system(
        f"valgrind --tool=cfggrind --cfg-outfile={obj_path}.cfg" +
        f" --instrs-map={obj_path}.map --cfg-dump=main {obj_path} 0")

    if os_result != 0:
        print(f"Err generating cfg for {obj_path}!")


def _CreateMap(obj_path: str):
    """Creates a map to a object file.

    Args:
        obj_path: Path to the object file
    """
    os_result = os.system(f"cfggrind_asmmap {obj_path} > {obj_path}.map")

    if os_result != 0:
        print(f"Err generating map for {obj_path}!")


def _GenerateHistogramsUsingCFGGrind(
        dataset_name: str, clang_path: str,
        path_to_dots: str) -> Tuple[List[Dict], List[Dict]]:
    """Generates histograms from the IRs of each subfolder in `dataset_name`.

    Args:
        dataset_name: Name of the dataset with the IR files
        clang_path: Path to Clang
        path_to_dots: Path to save the dot files

    Returns:
        Tuple with:
            - List with static histograms
            - List with dynamic histograms
    """
    dataset_path = f"{PATH_TO_YALI}/Volume/Irs/{dataset_name}"
    if not os.path.exists(dataset_path):
        raise ValueError("Dataset does not exist!")

    build_root = f"{PATH_TO_YALI}/Volume/Build/{dataset_name}"
    subdirs = [x[0] for x in os.walk(dataset_path)]
    csv_dynamic = []
    csv_static = []

    for subdir in subdirs:
        if subdir == dataset_path:
            continue

        subdir_name = os.path.basename(subdir)
        build_path = f"{build_root}/{subdir_name}"

        files = os.walk(subdir).__next__()[2]
        if len(files) > 0:
            os.makedirs(build_path, exist_ok=True)
            for file in files:
                file_path = os.path.join(subdir, file)
                out_file = _Compile(file, file_path, build_path, clang_path)
                if out_file is not None:
                    _CreateMap(out_file)
                    _CreateDot(out_file, path_to_dots)
                    _GetCFGGrindStatistics(
                        file, subdir_name, out_file, csv_dynamic, csv_static)

    return csv_static, csv_dynamic


def _InstallCFGGrind(valgrind_version: str, path_to_build: str):
    """Installs CFGGrind.

    Args:
        valgrind_version: Name of the valgrind version
        path_to_build: Path to build valgrind
    """
    valgrind_url = (
        f"https://sourceware.org/pub/valgrind/{valgrind_version}.tar.bz2")
    cfggrind_repo = "https://github.com/rimsa/CFGgrind.git"

    os.chdir(path_to_build)
    os.system(f"wget -qO - {valgrind_url} | tar jxv")
    os.chdir(f"{path_to_build}/{valgrind_version}")
    os.system(f"git clone {cfggrind_repo} cfggrind")
    os.system("patch -p1 < cfggrind/cfggrind.patch")
    os.system("./autogen.sh")
    os.system("./configure")
    os.system("make -j4")
    os.system("sudo make install")


def _CallHistogramScript(
        baseline_csv: str, csv_path: str, out_folder_name: str):
    """Calls script python to extract histograms (numpy format)

    Args:
        baseline_csv: CSV path for histograms compiled with -O0
        csv_path: Path to CSV with histograms
        out_folder_name: Output directory name
    """
    out_dir = f"{PATH_TO_YALI}/Volume/Histograms/{out_folder_name}"
    os.makedirs(out_dir, exist_ok=True)
    ext_features = "loop_depth_1 loop_depth_2 loop_depth_3 loop_depth_n num_bbs"

    command = (f"python3 {PATH_TO_YALI}/Extraction/Utils/ConvertCSVsToNP.py " +
        f"--histogramCSV1 {baseline_csv} " +
        f"--histogramCSV2 {csv_path} " +
        f"--outputDir {out_dir} " +
        f"--remove {ext_features}")
    os_result = os.system(command)

    if os_result != 0:
        print("Err extracting histogram (numpy format)!")


def _SaveHistograms(
        csv_dynamic: List[Dict], csv_static: List[Dict],
        dataset_name: str, baseline_sta_csv: str, baseline_dyn_csv: str):
    """Saves the CSVs and Histograms (numpy format) on hard disk.

    Args:
        csv_dynamic: Data of the CSV with dynamic histograms
        csv_static: Data of the CSV with static histograms
        dataset_name: Name of the dataset
        baseline_sta_csv: CSV path for static histograms compiled with -o0
        baseline_dyn_csv: CSV path for dynamic histograms compiled with -o0
    """
    df_static = pd.DataFrame(csv_static).set_index("id")
    df_static = df_static.fillna(0).astype(int)

    df_dynamic = pd.DataFrame(csv_dynamic).set_index("id")
    df_dynamic = df_dynamic.fillna(0).astype(int)

    dyn_name = f"CFGGRIND-D{dataset_name}"
    sta_name = f"CFGGRIND-S{dataset_name}"
    dyn_csv = f"{PATH_TO_YALI}/Volume/Csv/features_{dyn_name}.csv"
    sta_csv = f"{PATH_TO_YALI}/Volume/Csv/features_{sta_name}.csv"

    df_static.to_csv(dyn_csv)
    df_dynamic.to_csv(sta_csv)

    if baseline_sta_csv is not None:
        _CallHistogramScript(baseline_sta_csv, sta_csv, sta_name)
    if baseline_dyn_csv is not None:
        _CallHistogramScript(baseline_dyn_csv, dyn_csv, dyn_name)


def GetDynamicHistograms(
        dataset_name: str, clang_path: str,
        baseline_sta_csv: str, baseline_dyn_csv: str):
    """Generates histograms from `dataset` through a dynamic analysis.

    Args:
        dataset_path: Path to the dataset
        clang_path: Path to clang
        baseline_sta_csv: CSV path for static histograms compiled with -o0
        baseline_dyn_csv: CSV path for dynamic histograms compiled with -o0
    """
    if which(clang_path) is None:
        raise ValueError("Clang cannot be found!")

    valgrind_version = "valgrind-3.20.0"
    cfggrind_path = f"{PATH_TO_SCRIPT}/build"
    path_to_dots = f"{cfggrind_path}/dots"
    os.makedirs(path_to_dots, exist_ok=True)

    if which("cfggrind_asmmap") is None:
        _InstallCFGGrind(valgrind_version, cfggrind_path)

    csv_static, csv_dynamic = _GenerateHistogramsUsingCFGGrind(
        dataset_name, clang_path, path_to_dots)

    _SaveHistograms(
        csv_dynamic, csv_static, dataset_name, baseline_sta_csv,
        baseline_dyn_csv)


if __name__ == "__main__":
    dataset = args.dataset
    clang = args.clang
    baselineCSVStatic = args.baselineCSVStatic
    baselineCSVDynamic = args.baselineCSVDynamic

    GetDynamicHistograms(dataset, clang, baselineCSVStatic, baselineCSVDynamic)
