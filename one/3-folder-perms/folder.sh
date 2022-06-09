#!/bin/bash

# check for arguments
if [ -z "$1" ]; then
    echo "Directory name not specified."
    exit 2
fi

if [ -z "$2" ]; then
    echo "File name not specified."
    exit 3
fi

# assign variables
FOLDER=$1
FILE=$2

# test if folder can be made
if [ -e "$FOLDER" ]; then
    echo "Cannot create directory $FOLDER."
    exit 1
fi

# make folder
mkdir "$FOLDER"
echo "Created directory $FOLDER."

# make file 
echo "Test File" > "$FOLDER/$FILE"
echo "Created file $FILE in $FOLDER."

# set perms for file
chmod 777 "$FOLDER/$FILE"
echo "Set permissions for $FILE."

# delete folder with file
rm -rf "$FOLDER"
echo "Deleted $FOLDER."


