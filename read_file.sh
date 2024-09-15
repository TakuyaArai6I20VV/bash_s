#!/bin/bash
# ファイルを読み取るスクリプト
# Last Edited: 2024-09-15
# ファイル名を入力
read -p "Enter the file name you want to read: " file_name
# ファイルを読み取る
while read line
do 
    echo $line
done < $file_name