#!/bin/bash

while true; do
    read -p "Enter a positive number: " number
    if [[ $number =~ ^[0-9]+(\.[0-9]+)?$ && $number -gt 0 ]]; then
        echo "You entered: $number"
        break
    else
        echo "Please enter a valid positive number."
    fi
done


