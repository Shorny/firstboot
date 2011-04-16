#!/bin/sh -e

# Script for clean before create template on virtualmaster 

# clear all logs
echo "Clear logs start"
`find /var/log -type f`; do > $logs; done
echo "Clear logs done"

# delete ssh keys
echo "Delete ssh host key start"
rm /etc/ssh/ssh_host_*
echo "Delete ssh host key done"

# delete cache
echo "Delete cache start"
apt-get clean
echo "Delete cache done"

# clear all settings
echo "Clear settings start"
echo "" > /etc/network/interfaces
echo "" > /etc/resolv.conf
echo "virtualmaster" > /etc/hostname
echo "" > /etc/hosts

rm /etc/virtualmaster.cfg 
rm /etc/virtualmaster.cfg.disabled

echo "Clear settings done"


# clear root dir
echo "Clear root start"
rm /root/*
echo "Clear root done"
