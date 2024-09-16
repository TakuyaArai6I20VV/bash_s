#!/bin/bash
# backup
# Last Edited: 2024-09-16
# カレントディレクトリを指定した圧縮形式でバックアップする
cat <<EOF
This script is for back up directory.
Compression types are as follows:
    H: High compression (bzip2)
    M: Medium compression (gz)
    L: Low compression (tar)
EOF
# read -p "Enter the directory name you want to backup to: " backup_dir
read -p "Choose H, M or L compression: " compression

# 現在のディレクトリを取得
current_dir=$(pwd)
dir_name=$(basename "$current_dir")

# バックアップ先のディレクトリを作成
backup_dir="$HOME/backup"
if [ ! -d "$backup_dir" ]; then
    mkdir "$backup_dir"
fi

# バックアップファイルのパス
backup_file="$backup_dir/$dir_name"

case $compression in
    H)
        tar -cjvf "$backup_file.tar.bz2" -C "$(dirname "$current_dir")" "$dir_name"
        ;;
    M)
       tar -czvf "$backup_file.tar.gz" -C "$(dirname "$current_dir")" "$dir_name"
        ;;
    L)
        tar -cvf "$backup_file.tar" -C "$(dirname "$current_dir")" "$dir_name"
        ;;
    *)
        echo "Invalid compression type"
        exit 1
        ;;
esac
exit 0
