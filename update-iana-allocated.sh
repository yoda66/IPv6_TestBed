#!/bin/bash

set -e
cp /dev/null iana-allocated.txt
ipv6_addresses=`curl https://www.iana.org/assignments/ipv6-unicast-address-assignments/ipv6-unicast-address-assignments.txt 2>/dev/null | grep "ALLOCATED" | cut -c4- | cut -d' ' -f1`
[ ${#ipv6_addresses} -eq 0 ] && exit
ipset -exist create iana-allocated hash:net family inet6
ipset flush iana-allocated
for i in $ipv6_addresses; do
	echo $i >>iana-allocated.txt
	ipset add iana-allocated $i
done
