#!/usr/bin/env bash

clear

echo "Removing PHP..."

apt-get purge php* --yes > /dev/null

echo "Cleaning PHP directories..."

rm -rf /etc/php

echo "Finished removing PHP"

echo "Removing Nginx"

apt-get purge nginx* --yes > /dev/null

echo "Cleaning Nginx directories..."

rm -rf /etc/nginx
rm -rf /var/www

echo "Finished removing Nginx"