#!/usr/bin/env bash

clear

echo -e "Please enter PHP version: \c"
read version
phpVersion=$version

echo "Adding ppa:ondrej/php to software sources"

add-apt-repository ppa:ondrej/php --yes > /dev/null 2>&1

echo "Refreshing software sources..."

apt-get update > /dev/null

echo "Installing PHP $phpVersion..."

apt-get install php$phpVersion-fpm php$phpVersion-mysql php$phpVersion-xml php$phpVersion-gd php$phpVersion-mbstring php$phpVersion-xdebug --yes > /dev/null

echo "Checking PHP installation..."

php -v

echo "Copying PHP Config files..."

cp ./config-files/php-fpm/php.ini /etc/php/$phpVersion/fpm/php.ini
cp ./config-files/php-fpm/php-fpm.conf /etc/php/$phpVersion/fpm/php-fpm.conf
cp ./config-files/php-fpm/www.conf /etc/php/$phpVersion/fpm/pool.d/www.conf

echo "Starting php$phpVersion-fpm deamon..."
service php$phpVersion-fpm start
service php$phpVersion-fpm restart


echo "Installing Nginx..."

apt-get install nginx --yes > /dev/null

echo "Checking Nginx installation..."

nginx -v

echo "Copying Nginx config files..."

cp ./config-files/nginx/sites-available/default /etc/nginx/sites-available/default
cp ./config-files/nginx/sites-available/newSiteTemplate /etc/nginx/sites-available/newSiteTemplate

echo "Starting Nginx..."
service nginx start
