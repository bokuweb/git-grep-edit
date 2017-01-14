#!/bin/bash

P=$(git grep -n $1 | peco | awk '{split($0, arr, ":")} { print arr[1]":"arr[2]}')
if [ ${#P} -ne 0 ]; then
    code -r -g $P;
fi
