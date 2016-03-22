#!/bin/sh

cat <<EOF > /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

# Add a delay to the interface up: for dhclient
auto eth0
iface eth0 inet dhcp
  pre-up sleep 2

allow-hotplug eth1
iface eth1 inet dhcp
EOF

