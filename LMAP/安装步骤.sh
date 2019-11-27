1.安装MYSQL
$sudo apt-get install mysql-server
$sudo apt-get install mysql-client
$sudo apt-get install libmysqlclient-dev

2.安装Apache
$sudo apt-get install apache2

3.安装PHP
$sudo apt-get install php7.0

4.安装apache2的php模块
$sudo apt-get install libapache2-mod-php7.0 
安装结束成功后使用cat只能查看是否安装成功。显示安装成功并且成功加载libphp7.0.so。
cat /etc/apache2/mods-enabled/php7.0.load 
# Conflicts: php5
LoadModule php7_module /usr/lib/apache2/modules/libphp7.0.so

5.安装php7.0的mysql插件
$sudo apt-get install php7.0-mysql 

然后重启mysql和apache2

接着去apache的目录建一个phpinfo.php文件