#!/bin/bash
count=0
while [[ 1 -eq 1 ]]; do
    count=$((1 + $count))
    bash run.sh >out.txt 2>err.txt
    if [[ -n $(cat err.txt) ]]; then
        echo "Iteration to error: $count"
        exit 0
    fi
done
