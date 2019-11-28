1.安装MYSQL
sudo apt-get install -y mysql-server
sudo apt-get install -y mysql-client
sudo apt-get install -y libmysqlclient-dev
输入密码

2.安装Apache
sudo apt-get install -y apache2
修改配置文件
sudo vim /etc/apache2/sites-enabled/000-default.conf 
sudo vim /etc/apache2/apache2.conf 

3.安装PHP
sudo apt-get install -y php7.0

4.apache结合php
sudo apt-get install -y libapache2-mod-php7.0
sudo apt-get install -y php7.0-fpm

配置php网页错误提示
vim /etc/php/7.0/apache2/php.ini
display_errors = On



配置apache的进程管理以及虚拟主机
Zend安装