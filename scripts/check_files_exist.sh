#!/bin/bash

# Check mandatory files/folders exist
MANDATORY_FILES=($2)
PATH_TO_SRC=$1

for FILE in ${MANDATORY_FILES[@]}
do
    FULL_PATH=$PATH_TO_SRC$FILE
 
    if ! ([[ -d $FULL_PATH ]] || [[ -f $FULL_PATH ]])
    then
	echo "\"$FILE\" does not exist"
    fi
done
