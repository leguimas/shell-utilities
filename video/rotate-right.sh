#!/bin/bash

#
# You have to enter input and output file
#
if [ $# -ne 2 ];
then
        echo ""
        echo "$0 <input-file> <output-file>" >&2
        echo ""
        exit 1
fi

INPUT_FILE=$1
OUTPUT_FILE=$2

mencoder ${INPUT_FILE} -vf rotate=1 -oac pcm -ovc lavc -o ${OUTPUT_FILE}
