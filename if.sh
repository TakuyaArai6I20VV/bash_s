#!/bin/bash
# ifスクリプト
# Last Edited: 2024-09-16
if [ "$#" -lt 1 ] ; then
    read -p "Enter your name: " name
else
    name=$1
fi
echo "Hello $name"
exit 0