# 🥷🏻 Yali Project 🥷🏻
Let _D_ be a deep learning model that classifies programs according to the problem they solve. This project aims to evaluate how _D_ behaves with obfuscated code. We want to know how much the accuracy of _D_ is affected.

---
## 🗂️ Dataset Folder
Each folder within the **dataset** folder contains data from a specific dataset. Each one contains:
- Folders to store the compiled code (in the **IR** - Intermediate Representation - format) using different modes (O0, O3, obfuscation, etc).

>Each folder is named as `build_[strategy]`, where the `[strategy]` is the name of the strategy applied to the compiled code. For instance, if POJ104 programs were compiled using `-O3`, then we are going to store them in the `build_O3` folder

- A `make` script to get the histogram representation of the compiled programs

## 📊 Features Folder
It contains `.csv` with the features extracted from the datasets. The files have the following pattern name:

`[dataset_name]/[dataset_name]_features_[mode].csv`

There is a file `opcodes.csv` that describes the name of the LLVM opcodes.

## 🛠️ Histogram Pass
This is an edited version of an LLVM pass made by Kind brothers (Cissa and Bruno Kind) that extracts the histogram from the entire program instead of extracting one function at a time.


## 🤖 Models
This is a folder with the models trained and tested with the datasets from the dataset folder.


## 📉 Scripts
This folder contains Jupyter notebooks that summarize the results of each model used in this work.
