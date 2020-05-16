#!/bin/bash

# This script is used to validate application 
ipaddr=$(curl http://15.206.167.61/latest/meta-data/local-ipv4)
listencount=$(netstat -an | grep 5000 | grep LISTEN | wc -l)
if [ "$listencount" -lt 1 ]; then
    exit 1
else
    exit 0
fi
