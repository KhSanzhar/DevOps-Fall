#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Not correct number of arguments"
    exit 1
fi

port=$1
server_ip=$2


iptables -A INPUT -p tcp --dport $port -s $server_ip -j ACCEPT
iptables -A INPUT -p tcp --dport $port -j DROP