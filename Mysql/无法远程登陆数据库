无法远程登陆数据库
问题描述：在一台主机上安装Mysql数据库，在主机本地使用Navicat可以连接，但是从另外一台主机则无法访问提示：130-host . is not allowed to connect to this MySql server，即不允许远程连接。

解决方案：

1. 改表法。

可能是你的帐号不允许从远程登陆，只能在localhost。这个时候只要在localhost的那台电脑，登入MySQL后，更改 "mysql" 数据库里的 "user" 表里的 "host" 项，从"localhost"改称"%"

mysql -u root -p

mysql>use mysql;

mysql>update user set host = '%' where user = 'root';

mysql>select host, user from user;

 

【错误内容】：SQL Error (2013): Lost connection to MySQL server at 'waiting for initial communication packet', system error: 0

【错产生经过】：链接MySQL时出现.

【解决办法】：打开my.ini，找到[mysqld]项，在其后加入一句：skip-name-resolve，保存，重启mysql服务即可~

 

2. 授权法。

例如，你想myuser使用mypassword从任何主机连接到mysql服务器的话。

GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'%' IDENTIFIED BY 'mypassword' WITH GRANT OPTION;

FLUSH   PRIVILEGES;

如果你想允许用户myuser从ip为192.168.1.6的主机连接到mysql服务器，并使用mypassword作为密码

GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'192.168.1.3' IDENTIFIED BY 'mypassword' WITH GRANT OPTION;

FLUSH   PRIVILEGES;

如果你想允许用户myuser从ip为192.168.1.6的主机连接到mysql服务器的dk数据库，并使用mypassword作为密码

GRANT ALL PRIVILEGES ON dk.* TO 'myuser'@'192.168.1.3' IDENTIFIED BY 'mypassword' WITH GRANT OPTION;

FLUSH   PRIVILEGES;

 

我用的第一个方法,最后执行一个语句 mysql>FLUSH RIVILEGES 使修改生效.就可以了

另外一种方法,不过我没有亲自试过的,在csdn.net上找的,可以看一下.

在安装mysql的机器上运行：

1、d:/mysql/bin/>mysql   -h   localhost   -u   root  //这样应该可以进入MySQL服务器

2、mysql>GRANT   ALL   PRIVILEGES   ON   *.*   TO   'root'@'%'   WITH   GRANT   OPTION  //赋予任何主机访问数据的权限

3、mysql>FLUSH   PRIVILEGES  //修改生效

4、mysql>EXIT  //退出MySQL服务器

这样就可以在其它任何的主机上以root身份登录啦！
