#!/bin/bash

count=10

while [ $count -gt 0 ]; do
    echo "$count"
    sleep 1
    (( count-- ))
done

echo "BOOM"

