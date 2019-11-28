#!/bin/bash
sudo apt-get -y purge mysql-*
sudo apt-get -y purge apache2*
sudo apt-get -y purge apache2-*
sudo apt-get -y purge php7.0-*
sudo apt-get -y purge php-*
sudo apt-get -y purge libapache2-mod-php7.0
sudo apt-get -y purge php7.0-fpm
sudo apt-get -y remove mysql-server
sudo apt-get -y remove mysql-*
sudo apt-get -y remove apparmor
sudo apt-get -y autoremove apache2*
sudo apt-get -y autoremove php7.0-*
sudo apt-get -y autoremove php-*
sudo apt-get -y autoremove mysql-*
sudo apt-get -y autoremove mysql* 
sudo rm -rf /var/lib/mysql/ 
sudo rm -rf /etc/mysql/ 
sudo rm -rf /etc/php
