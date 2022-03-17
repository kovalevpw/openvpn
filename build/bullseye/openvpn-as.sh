#!/bin/bash

mkdir -p /dev/net
mknod /dev/net/tun c 10 200
chmod 600 /dev/net/tun

rm /twistd.pid || true
/usr/local/openvpn_as/scripts/openvpnas --nodaemon
