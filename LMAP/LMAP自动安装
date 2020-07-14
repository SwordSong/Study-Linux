#!/bin/bash
#初级安装
sudo echo "开始安装LMAP环境"
sudo echo "正在安装Mysql"
sudo apt-get install -y mysql-server 
sudo apt-get install -y mysql-client
sudo apt-get install -y libmysqlclient-dev
sudo echo  "Mysql已安装"

sudo echo "正在安装Apache"
sudo apt-get install -y apache2
sudo echo  "Apache已安装 正在修改配置文件"
sleep	3
sudo sed -i 's#/var/www/html#/home/web#g' /etc/apache2/sites-enabled/000-default.conf
sudo sed -i '169a <Directory /home/web>' /etc/apache2/apache2.conf
sudo sed -i '170a Options Indexes FollowSymLinks' /etc/apache2/apache2.conf            
sudo sed -i '171a AllowOverride None' /etc/apache2/apache2.conf
sudo sed -i '172a Require all granted' /etc/apache2/apache2.conf
sudo sed -i '173a </Directory>' /etc/apache2/apache2.conf

sudo mkdir -p /home/web
sudo touch /home/web/index.php
sudo echo "<?php" > /home/web/index.php
sudo echo "phpinfo();" >> /home/web/index.php
sudo echo "?>" >> /home/web/index.php

sudo echo "配置文件已修改"
sudo echo  "正在安装PHP"
sudo apt-get install -y php7.0

sudo echo "PHP已安装"
sudo echo "正在安装依赖文件"
sudo apt-get install -y libapache2-mod-php7.0
sudo apt-get install -y php7.0-fpm
sudo apt-get install php7.0-mysql
sudo systemctl restart apache2.service 
sudo systemctl restart mysql.service
sudo echo "LMAP已配置完毕"
ip=$(ifconfig |awk -F':' '{print $2}' |sed -n '2'p |sed 's#Bcast##g'
)
echo "请到${ip}查看"
