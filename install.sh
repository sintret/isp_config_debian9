#!/bin/bash

echo Before begin make sure you have enabled your subdomain isp & webmail ex. isp.yourdomain.com  webmail.yourdomain.com
echo What is your domain ex. yourdomain.com ?
read domain
echo Setup with fresh install for $domain
echo What is your password for isp config / mysql / webmail ?
read password
ip4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1)
ip6=$(/sbin/ip -o -6 addr list eth0 | awk '{print $4}' | cut -d/ -f1)

echo your ip is $ip4

