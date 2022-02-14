#!/bin/bash

interface="tun0"

ret=$(ip a s $interface 2>/dev/null)
if [[ -z  "${ret}"  ]]
then
echo "Not connected to $interface" 
else
ip=$(ip a s $interface |grep -i inet|head -1|awk '{print $2}'|awk -F/ '{print $1}')
echo "tun0| $ip"
fi

