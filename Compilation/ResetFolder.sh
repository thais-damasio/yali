REPOSITORY=$1
AVERAGESIZE=50000

resetFolder() {
	FOLDER=$(basename ${REPOSITORY})
	DIR=$(dirname ${REPOSITORY})
	mv ${DIR}/${FOLDER} ${DIR}/tmp_${FOLDER}
	mv ${DIR}/${FOLDER}.done ${FOLDER}
	mv tmp_${FOLDER} ${FOLDER}.done
}

if [ -z $1 ]; then
	echo "Error: No repository specified!"
else	
	echo "===> Reseting folder $1..."
	NUMFILES=$(ls ${REPOSITORY}/* | wc -l)
	
	if [ ${NUMFILES} -gt ${AVERAGESIZE} ]; then
		echo "The repository is now ready to be processed!"
	else
		resetFolder
		echo "The repository is ready to be processed!"
	fi
fi