#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi


if [ ! -f "$1" ]; then
    echo "Error: File $1 not found."
    exit 1
fi

line_number=1

while IFS= read -r line; do
    
    echo "$line_number: $line"
    
    ((line_number++))
done < "$1"

