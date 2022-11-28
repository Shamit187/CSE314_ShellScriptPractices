#!/bin/bash

replacer() {
    for file in $*; do
        if [[ -d $file ]]; then
            cd $file
            replacer $(ls)
            cd ..
        elif [[ "${file##*.}" == "cpp" ]]; then
            mv $file "${file%.*}.c"
        fi
    done
}

replacer $(ls)
