安装zabbix
步骤1 配置LAMP环境


步骤2 –启用必需的Apt储存库
 ## Ubuntu 16.04 LTS (Xenial):
 wget https://repo.zabbix.com/zabbix/4.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.0-3+xenial_all.deb
 sudo dpkg -i zabbix-release_4.0-3+xenial_all.deb

步骤3 –安装Zabbix服务器
 sudo apt-get update
 sudo apt-get install zabbix-server-mysql zabbix-frontend-php zabbix-agent

步骤4 –创建数据库架构
 mysql -u root -p
 mysql> CREATE DATABASE zabbixdb character set utf8 collate utf8_bin;
 mysql> CREATE USER 'zabbix'@'localhost' IDENTIFIED BY 'password';
 mysql> GRANT ALL PRIVILEGES ON zabbixdb.* TO 'zabbix'@'localhost' WITH GRANT OPTION;
 mysql> FLUSH PRIVILEGES;

将Zabbix数据库格式加载到上面创建的zabbixdb数据库中
cd /usr/share/doc/zabbix-server-mysql
zcat create.sql.gz | mysql -u zabbix -p zabbixdb

步骤5 –编辑Zabbix配置文件
vim /etc/zabbix/zabbix_server.conf
  DBHost=数据库地址
  DBName=数据库名
  DBUser=数据库用户名
  DBPassword=数据库用户密码

步骤6 –重新启动Apache和Zabbix
cp /etc/zabbixapache.conf /etc/apache2/apache.cof
systemctl restart apache2
systemctl restart zabbix-server.service 

Zabbix登录
 Username:  Admin
 Password:  zabbix
