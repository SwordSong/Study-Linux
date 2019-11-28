#!/bin/bash
sudo apt-get -y purge mysql-*
sudo apt-get -y remove mysql-server
sudo apt-get -y autoremove mysql-*
sudo apt-get -y autoremove mysql* 
sudo apt-get -y remove mysql-*
sudo rm -rf /var/lib/mysql/ -R
sudo rm -rf /etc/mysql/ -R
sudo apt-get -y remove apparmor