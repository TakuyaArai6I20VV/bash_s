#!/bin/bash
# search
# Last Edited: 2024-09-16
usage="Usage: serch.sh <ファイル名> <検索文字列> <操作>"

if [ "$#" -eq 4 ]; then
    echo "$usage"
    exit 2
fi

[ ! -f "$1" ] && exit 3

case "$3" in
    [cC])
        mesg="$1の中で$2にマッチする行数を表示します"
        opt="-c"
        ;;
    [pP])
        mesg="$1の中で$2にマッチする行を表示します"
        opt=""
        ;;
    [dD])
        mesg="$1の中で$2にマッチする行を除いてします"
        opt="-v"
        ;;
    *)
        echo "$usage"
        exit 1
        ;;
esac
echo $mesg
grep $opt $2 $1
exit