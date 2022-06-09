#!/bin/bash

# check for argument
if [ -z "$1" ]; then
    echo "No filename specified."
    exit 1
fi

# use sed to replace in place
sed -i 's/0xA0/0x50/g;s/0xFF/0x7F/g' "$1"

