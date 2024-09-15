#!/bin/bash
# サーバーにssh接続するスクリプト
# Last Edited: 2024-09-15
read -p "Which server doy you wanto to connect to?: " server_name
read -p "Which username do you want to user?: " user_name
ssh ${user_name}@${server_name}