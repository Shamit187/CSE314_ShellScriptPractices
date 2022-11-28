#!/bin/bash

if [[ $# -ne 2 ]]; then
    echo "Usage $0 n \"expression\""
else
    for filename in $(ls); do
        string=$(cat $filename | head -$1 | tail -1)
        if [[ $filename != $0 ]] && [[ $filename != "filegenerator.sh" ]]; then
            if grep -q "$2" <<<"$string"; then
                rm $filename
            fi
        fi
    done
fi
