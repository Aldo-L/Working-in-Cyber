#!/bin/bash 

ipv6_address=$(ip a | grep inet6 | grep -v '::1' | awk '{print $2}' | head -n 1)

echo $ipv6_address > ipv6.txt
 
ipv6_hash=$(sha256sum ipv6.txt |  awk '{print $1}') 


echo "*********************************"
echo
echo "IPv6 Address: $ipv6_address"
echo
echo "SHA256 Hash: $ipv6_hash"
echo
echo "*********************************"
