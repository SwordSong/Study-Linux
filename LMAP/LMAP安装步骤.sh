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

可选项：
配置php网页错误提示
vim /etc/php/7.0/apache2/php.ini
display_errors = On

Zend安装
有时，需要在你的LAMP环境中配置ZEND，因为有些php的应用程序比如Discuz! 或者phpwind等是需要用zend来解密的，不装zend会显示乱码。安装步骤为：

cd /usr/local/src

wget http://syslab.comsenz.com/downloads/linux/ZendOptimizer-3.3.3-linux-glibc23-i386.tar.gz

tar zxvf ZendOptimizer-3.3.3-linux-glibc23-i386.tar.gz

cd ZendOptimizer-3.3.3-linux-glibc23-i386

./install.sh

根据提示安装。php.ini文件的路径为：/usr/local/php/etc/ 当提示是否重启apache时，选择不重启。