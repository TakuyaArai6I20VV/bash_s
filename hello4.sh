#!/bin/bash
# 
# Last Edited: 2024-09-16
echo "You are using $(basename $0)"
test -z "$1" || echo "Hello $1"
exit 0