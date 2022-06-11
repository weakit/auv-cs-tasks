#!/bin/bash

echo "While loop:"
let i=1

while [ $i -le 10 ]; do
    echo -n "$i "
    let i++
done

echo
echo "Until loop:"

let i=1
until [ $i -gt 10 ]; do
    echo -n "$i "
    let i++
done

echo
echo "For loop:"

for i in {1..10}; do
    echo -n "$i "
done

echo
