show databases					查看所有库 
create database XXX					创建库
drop database XXX					删除库
mysql -uroot					默认无密码
root@aaa:~# mysqladmin -u root password 'qqq111...'	修改密码
use XXX						使用/选择数据库
show tables					列出有哪些表
desc xxx						显示表的结构
select * form xxx					查看xxx中表内容
select XXX,aaa form xxx 				显示xxx表中XXX、aaa内容

数据库的授权
 grant	权限列表	on	数据库名.表名	to	用户名@ 	客户机地址	identified	by	'密码';
 grant  	select 	on	xxx.*		to	xxx@xxxx			identified	by 	'123';


cp dashboard_info.js /usr/share/netdata/web/dashboard_info.js
cp dashboard.js /usr/share/netdata/web/dashboard.js
cp main.js /usr/share/netdata/web/main.js
cp index.html /usr/share/netdata/web/index.html