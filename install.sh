#!/bin/bash

echo Before begin make sure you have enabled your subdomain isp & webmail ex. isp.yourdomain.com  webmail.yourdomain.com
echo What is your domain ex. yourdomain.com ?
read domain
echo Setup with fresh install for $domain
echo What is your password for isp config / mysql / webmail ?
read password
ip="$(ifconfig | grep -A 1 'eth0' | tail -1 | cut -d ':' -f 2 | cut -d ' ' -f 1)"
echo your ip is $ip

