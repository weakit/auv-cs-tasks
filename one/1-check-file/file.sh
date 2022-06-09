#!/bin/bash

# check for argument
if [ -z "$1" ]; then
    echo "No filepath specified."
    exit 1
fi

PATH=$1

# perform file checks
if [ -e "$PATH" ]; then
    echo "Specified path exists."
fi

if [ -d "$PATH" ]; then
    echo "Specfied path is a directory."
    exit 2
else
    echo "Specified path is a file."
fi

if [ -w "$PATH" ]; then
    echo "You have permission to edit the file $PATH."
else
    echo "You do not have permission to edit the file $PATH."
fi
