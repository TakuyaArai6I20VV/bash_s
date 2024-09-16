#!/bin/bash
# ifスクリプト
# Last Edited: 2024-09-16
if [ -z "$1" ] ; then
    echo "Usage: $0 <name>"
    exit 1
fi
echo "Hello $1"
exit 0