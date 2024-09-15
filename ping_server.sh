#!/bin/bash
# サーバーにpingを3回送るスクリプト
# Last Edited: 2024-09-15
read -p "Enter the server name you want to ping: " server_name
ping -c3 $server_name 2>&1 > /dev/null || echo "server $server_name is down."