#!/bin/bash
echo "开始安装LMAP环境"
echo "正在安装Mysql"
sudo apt-get install -y mysql-server 
sudo apt-get install -y mysql-client
sudo apt-get install -y libmysqlclient-dev
echo  "Mysql已安装"

echo "正在安装Apache"
sudo apt-get install -y apache2
echo  "Apache已安装 正在修改配置文件"
sleep	3
sed -i's#/var/www/html#/home/web#g' /etc/apache2/sites-enabled/000-default.conf
sed -i '169a <Directory /home/web>' /etc/apache2/apache2.conf
sed -i '170a Options Indexes FollowSymLinks' /etc/apache2/apache2.conf            
sed -i '171a AllowOverride None' /etc/apache2/apache2.conf
sed -i '172a Require all granted' /etc/apache2/apache2.conf
sed -i '173a </Directory>' /etc/apache2/apache2.conf
echo "配置文件已修改"

echo  "正在安装PHP"
sudo apt-get install -y php7.0
echo "PHP已安装"
echo "正在安装依赖文件"
sudo apt-get install -y libapache2-mod-php7.0
sudo apt-get install -y php7.0-fpm
sudo apt-get install php7.0-mysql
sudo systemctl restart apache2.service 
sudo systemctl restart mysql.service
echo "LMAP已配置完毕"