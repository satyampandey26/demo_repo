#!/bin/bash

if [ "$#" -ne 2]; then
	echo "Usage: $0 SOURCE_DIRECTORY BACKUP_DIRECTORY"
	exit 1 
fi

SOURCE_DIR = $1
BACKUP_DIR = $2

if [ ! -d "$SOURCE_DIR"  ]; then 
	echo "Provided Directory doesnot exist"
	exit 1
fi 

if [ ! -d "$BACKUP_DIR"  ]; then 
	mkdir -p "$BACKUP_DIR"
fi

TIMESTAMP = $(date+"%Y%m%d%H%M%S")

BACKUP_FILE="$BACKUP_DIR/backup_TIMSTAMP.tar.gz"

tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR".

if [ $? -eq 0 ]; then
	echo " Backup file created as: $BACKUP_FILE"

else 
	echo "Backup failed"
	exit 1 
fi 

	 
