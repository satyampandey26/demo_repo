#!/bin/bash

# Check if a Directory  path is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <Directory_path>"
    exit 1
fi

Directory_path=$1

# Check if the file exists
if [ ! -d "$Directory_path" ]; then
    echo "File $Directory_path not found."
    exit 1
fi

cd "$Directory_path" || exit

# Modify the contents of the file to "AAAAAAAA"
#sed -i 's/.*/AAAAAAAA/g' "$file_path"

#echo "Contents of $file_path have been modified to AAAAAAAA."

for file in *; do
    if [ -f "$file" ]; then
        sed -i 's/.*/AAAAAAAA/g' "$file"
        echo "Contents of $file have been modified to AAAAAAAA."
    fi
done

echo "All files in $Directory_path have been modified."


