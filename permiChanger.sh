#!/bin/bash

read -p "Enter the directory path: " directory_path


if [ -d "$directory_path" ]; then
    
    find "$directory_path" -type f -exec chmod 444 {} \;
    echo "Files in $directory_path are now read-only."

else
    echo "Error: Directory does not exist."
fi

