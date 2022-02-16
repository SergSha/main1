#!/bin/bash

# Update from GitHub
cd /root/source/
git pull origin main

# Update index.html in /var/www/html/
cp -rf /root/source/html/* /var/www/html/

# Reload httpd configs
systemctl reload httpd
