#!/bin/bash

IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')

echo "export IPADDR=$IP" >> /etc/environment
source /etc/environment
echo $IPADDR
python3 /home/app/app.py
