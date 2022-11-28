#!/bin/bash

for filename in $(ls); do
    if [[ -f $filename ]]; then
        if grep -q "[0-9]" <<<"$filename"; then
            echo "$filename"
            #rm $filename
        fi
    fi
done
