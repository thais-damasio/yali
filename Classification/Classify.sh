set -e

YC='\033[0;33m'
RC='\033[0;31m'
NC='\033[0m'

ROUNDS=$1
MEMORYPROF=$2
MODEL=$3
TRAINDATASET=$4
OPTLEVELTRAIN=$5
NUMCLASSES=$6
REPRESENTATION=$7
FILTER_HISTOGRAM=$8
TESTDATASET=$9
OPTLEVELTEST=${10}

# Set Parameters 
checkParameters() {
    if [ -z "${ROUNDS}" ]; then
        echo -e "${RC}Error: No number of rounds specified!${NC}"
        exit 1
    elif [ -z "${MODEL}" ]; then
        echo -e "${RC}Error: No model specified!${NC}"
        exit 1
    elif [ -z "${TRAINDATASET}" ]; then
        echo -e "${RC}Error: No training dataset specified!${NC}"
        exit 1
    elif [ -z "${OPTLEVELTRAIN}" ]; then
        echo -e "${RC}Error: No optimization level specified for the training dataset!${NC}"
        exit 1
    elif [ -z "${NUMCLASSES}" ]; then
        echo -e "${RC}Error: No number of classes specified!${NC}"
        exit 1
    elif [ -z "${REPRESENTATION}" ]; then
        echo -e "${RC}Error: No representation type specified!${NC}"
        exit 1
    fi

    if [[ ! -z "${TESTDATASET}" ]]; then
        if [ -z "${OPTLEVELTEST}" ]; then
            echo -e "${RC}Error: No optimization level specified for the testing dataset!${NC}"
            exit 1
        fi
    fi

    if [ -z "${MEMORYPROF}" ]; then
        echo -e "${RC}Error: No flag memory profiler specified!${NC}"
        exit 1
    else
        if [ "${MEMORYPROF}" = "yes" ]; then
            MEMORYPROF=""
        fi
    fi
}

# Create the histograms
histograms() {
    local setName=$1
    local optType=$2
    local outputDir=$3
    local type=$4
    local flagExtended=$5
    local irFolder=~/yali/Dataset/Irs/${setName}${optType}/
    local csvFile=~/yali/Dataset/Csv/features_${setName}${optType}.csv
    local csvFinished=~/yali/Dataset/Csv/Finished_${setName}${optType}

    # Histogram CSV
    touch ${csvFinished}
    if [ -z "$(cat ${csvFinished})" ]; then
        echo -e "${YC}===> Creating histograms (${type}) ${setName}...${NC}"
        make -C ${irFolder}
        echo -e "${YC}===> Histograms finished ${setName} <===${NC}"
        echo -e "1" > ${csvFinished}
    fi

    # Histogram Numpy Format
    mkdir -p ${outputDir}
    touch ${outputDir}/Finished
    if [ -z "$(cat ${outputDir}/Finished)" ]; then
        echo -e "${YC}===> Converting CSV (${type}) to Numpy ${setName}...${NC}"
        python3 ~/yali/Extraction/Utils/ConvertCSVToNP.py \
            --histogramCSV ${csvFile} \
            --outputDir ${outputDir}/ \
            ${flagExtended}
        echo -e "1" > ${outputDir}/Finished
        echo -e "${YC}===> Conversion finished ${setName} <===${NC}"
    fi
}

# Create the programs
compiling() {
    local setName=$1
    local optType=$2
    local irFolder=~/yali/Dataset/Irs/${setName}${optType}
    local compilationScriptFolder=~/yali/Compilation/
    local representationScriptFolder=~/yali/Extraction/

    mkdir -p ${irFolder}
    touch ${irFolder}/Finished

    if [ -z "$(cat ${irFolder}/Finished)" ]; then
        echo -e "${YC}===> Compiling ${setName}...${NC}"

        if [ "${setName}" = "BCF" ] || [ "${setName}" = "FLA" ] || [ "${setName}" = "SUB" ] || [ "${setName}" = "OLLVM" ]; then
            source ${compilationScriptFolder}/CompileOLLVM.sh ${optType} ${setName}
            echo -e "${YC}===> Compilation finished <===${NC}"
        else
            source ${compilationScriptFolder}/Compile.sh ${setName} ${optType}
            echo -e "${YC}===> Compilation finished <===${NC}"
        fi
    fi

    if [ ${REPRESENTATION} == "histogram" ]; then
        local outputDir=~/yali/Dataset/Histograms/${setName}${optType}
        histograms ${setName} ${optType} ${outputDir} "only opcodes" "--noextended"
    elif [ ${REPRESENTATION} == "histogram_ext" ]; then
        local outputDir=~/yali/Dataset/Embeddings/histogram_ext/${setName}${optType}
        histograms ${setName} ${optType} ${outputDir} "extended" "--extended"
    else
        source ${representationScriptFolder}/Extract.sh "${setName}${optType}" ${REPRESENTATION}
    fi
}

# Copy custom results to another folder, this avoids overwritten
copyCustomResults() {
    local trainName=$1
    local optTypeTrain=$2
    local testName=$3
    local optTypeTest=$4

    if [ ${REPRESENTATION} == "histogram" ] && [[ ! -z "${FILTER_HISTOGRAM}" ]]; then
        local n=0

        if [ -z ${testName} ]; then
            local resultsOnlyTrain=$HOME/yali/Dataset/Results/${trainName}${optTypeTrain}/${MODEL}/${NUMCLASSES}/custom
            while [ -d "$resultsOnlyTrain$n" ]; do
                (( n = n + 1 ));
            done

            cp -R $resultsOnlyTrain $resultsOnlyTrain$n
        else
            local resultsWithTest=$HOME/yali/Dataset/Results/${trainName}${optTypeTrain}_${testName}${optTypeTest}/${MODEL}/${NUMCLASSES}/custom
            while [ -d "$resultsWithTest$n" ]; do
                (( n = n + 1 ));
            done

            cp -R $resultsWithTest $resultsWithTest$n
        fi
    fi
}

# Classification process
classification() {
    local rounds=$1
    local trainName=$2
    local optTypeTrain=$3
    local testName=$4
    local optTypeTest=$5
    
    if [ ${REPRESENTATION} == "histogram" ]; then
        local trainDir=~/yali/Dataset/Histograms/${trainName}${optTypeTrain}/
        local testDir=~/yali/Dataset/Histograms/${testName}${optTypeTest}/

        if [[ ! -z "${FILTER_HISTOGRAM}" ]]; then
            echo -e "${YC}Opcodes filter will be applied!${NC}"
            local resultsOnlyTrain=~/yali/Dataset/Results/${trainName}${optTypeTrain}/${MODEL}/${NUMCLASSES}/custom
            local resultsWithTest=~/yali/Dataset/Results/${trainName}${optTypeTrain}_${testName}${optTypeTest}/${MODEL}/${NUMCLASSES}/custom
        else
            local resultsOnlyTrain=~/yali/Dataset/Results/${trainName}${optTypeTrain}/${MODEL}/${NUMCLASSES}
            local resultsWithTest=~/yali/Dataset/Results/${trainName}${optTypeTrain}_${testName}${optTypeTest}/${MODEL}/${NUMCLASSES}
        fi
    else
        local trainDir=~/yali/Dataset/Embeddings/${REPRESENTATION}/${trainName}${optTypeTrain}
        local testDir=~/yali/Dataset/Embeddings/${REPRESENTATION}/${testName}${optTypeTest}
        local resultsOnlyTrain=~/yali/Dataset/Results/Embeddings/${REPRESENTATION}/${trainName}${optTypeTrain}/${MODEL}/${NUMCLASSES}
        local resultsWithTest=~/yali/Dataset/Results/Embeddings/${REPRESENTATION}/${trainName}${optTypeTrain}_${testName}${optTypeTest}/${MODEL}/${NUMCLASSES}
    fi

    if [ -z ${testName} ]; then
        echo -e "${YC}===> Classification with ${MODEL}: training and testing phase (${trainName}${optTypeTrain} -- ${REPRESENTATION}), ${NUMCLASSES} classes ...${NC}"
        python3 ~/yali/Classification/ClassifyPrograms.py \
            --train_dataset_directory ${trainDir} \
            --rounds ${rounds} \
            --${MEMORYPROF}memory_prof \
            --classes ${NUMCLASSES} \
            --results_directory ${resultsOnlyTrain} \
            --model ${MODEL} \
            --representation ${REPRESENTATION} \
            --filter_histogram "${FILTER_HISTOGRAM}"
    else
        echo -e "${YC}===> Classification with ${MODEL}: training phase (${trainName}${optTypeTrain} -- ${REPRESENTATION}) --- testing phase (${testName}${optTypeTest}), ${NUMCLASSES} classes ...${NC}"
        python3 ~/yali/Classification/ClassifyPrograms.py \
            --train_dataset_directory ${trainDir} \
            --rounds ${rounds} \
            --${MEMORYPROF}memory_prof \
            --classes ${NUMCLASSES} \
            --train_p 100 \
            --test_dataset_directory ${testDir} \
            --results_directory ${resultsWithTest} \
            --model ${MODEL} \
            --representation ${REPRESENTATION} \
            --filter_histogram "${FILTER_HISTOGRAM}"
    fi

    copyCustomResults ${trainName} ${optTypeTrain} ${testName} ${optTypeTest}
    echo -e "${YC}===> Classification finished <===${NC}"
}


checkParameters

if [ -z ${TESTDATASET} ]; then
    compiling ${TRAINDATASET} ${OPTLEVELTRAIN}

    classification ${ROUNDS} ${TRAINDATASET} ${OPTLEVELTRAIN}
else
    compiling ${TRAINDATASET} ${OPTLEVELTRAIN}
    compiling ${TESTDATASET} ${OPTLEVELTEST}
    
    classification ${ROUNDS} ${TRAINDATASET} ${OPTLEVELTRAIN} ${TESTDATASET} ${OPTLEVELTEST}
fi
