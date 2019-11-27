Apache2安装
apt-get install apache2

修改php.ini 显示错误信息

 vi /etc/php/7.2/apache2/php.ini #默认情况下是display_errors = Off，把Off修改为On，保存关闭文件,然后重启apache。