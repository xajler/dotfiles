#!/bin/sh

if [[ $# -eq 0 ]] ; then
    echo 'Please specify path needs to be flattened.'
    exit 1
fi

for f in ${1}/*; do
    if [ -d ${f} ]; then
        echo $f
		mv ${f}/* ${f}/../
		rm -rf $f
    fi
done
