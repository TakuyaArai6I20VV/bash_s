#!/bin/bash
# Autor: @banbanbonbon
# Web: www.banbanbonbon.com
# バッアップをするファイルと場所を入力するよう促すスクリプト
# ファイルはユーザーの＄HOME/binから検索され、
# ＄HOME内のディレクトリにだけバックアップできる
# Last Edited: 2024-09-15
read -p "Which file types do you want to backup?: " file_suffix
read -p "Which directory do you want to backup to?: " dir_name
# 指定さえたディレクトリが存在するか確認, なければ作成
test -d $HOME/$dir_name || mkdir -m 700 $HOME/$dir_name
# $HOME/$dir_nameに$HOME/Workspace/bash_s内のファイルをコピー
find "$HOME/Workspace/bash_s" -path "$HOME/$dir_name" -prune -o \
    -name "*$file_suffix" -exec cp {} "$HOME/$dir_name/" \;

exit 0
