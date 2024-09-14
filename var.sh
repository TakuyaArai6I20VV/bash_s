#!/bin/bash
name="John"
age=23
total=16.5
arr=(1, 2, 3, 4, 5)
echo $name
echo $age
echo $total
echo ${arr[*]}
unset arr[2]
echo ${arr[*]}