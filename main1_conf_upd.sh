#!/bin/bash

# Update from GitHub
cd /root/main1/
git pull origin main

# Update index.html in /var/www/html/
cp -f /root/main1/index.html /var/www/html/

# Reload nginx configs
systemctl reload httpd
