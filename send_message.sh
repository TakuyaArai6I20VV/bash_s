#!/bin/bash
# メッセージを送信するスクリプト
# Last Edited: 2024-09-16
# メッセージを入力
read -p "Enter the username you want to send a message to: " username
read -p "Enter the message you want to send: " message
# メッセージを送信する
who | grep -w $username && write $username $(tty) <<< $message