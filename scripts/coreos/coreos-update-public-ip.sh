#!/bin/bash

RE_IP_ADDRESS="[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}"

RE_IP_ADDRESS_CIDR="$RE_IP_ADDRESS/[0-9]\{1,2\}"

COREOS_PUBLIC_NIC="ens192"

ROUTE_DESTINATION="0.0.0.0/0"


# Get IP address CIDR

public_ip=$(ip address show dev $COREOS_PUBLIC_NIC | egrep "^\s*inet\s" | grep -o $RE_IP_ADDRESS_CIDR | head -1)

# Wait until DHCP IP address is available and update IP address

while [ -z $public_ip ]
do
    sleep 5
    public_ip=$(ip address show dev $COREOS_PUBLIC_NIC | egrep "^\s*inet\s" | grep -o $RE_IP_ADDRESS_CIDR | head -1)
done

sudo /usr/share/oem/bin/vmtoolsd --cmd "info-set guestinfo.interface.0.ip.0.address $public_ip"


# Update default gateway

gateway=$(ip route show | egrep "^\s*default\svia\s" | grep -o $RE_IP_ADDRESS | head -1)
sudo /usr/share/oem/bin/vmtoolsd --cmd "info-set guestinfo.interface.0.route.0.destination $ROUTE_DESTINATION"
sudo /usr/share/oem/bin/vmtoolsd --cmd "info-set guestinfo.interface.0.route.0.gateway $gateway"


# Update DNS servers addresses

i=0
for dns_ip in $(egrep  "^nameserver.*" /etc/resolv.conf | grep -o $RE_IP_ADDRESS)
do
    sudo /usr/share/oem/bin/vmtoolsd --cmd "info-set guestinfo.dns.server.$((i++)) $dns_ip"
done


# Reboot the machine
sudo reboot
