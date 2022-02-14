#!/bin/bash
# A hacky bash script to automatically grab IP address of VPN tunnel interface (tun0), without refreshing i3
# Before this, I had to refresh i3 for updating IP of tun0
 
interface="tun0"

ret=$(ip a s $interface 2>/dev/null)
if [[ -z  "${ret}"  ]]
then
echo "Not connected to $interface" 
else
ip=$(ip a s $interface |grep -i inet|head -1|awk '{print $2}'|awk -F/ '{print $1}')
echo "tun0| $ip"
fi

