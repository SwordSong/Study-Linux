1.Apache2安装
apt-get install -y apache2

2.监听端口
vim etc/apache2/ports.conf    #默认80

3.修改默认网页地址
vim /etc/apache2/sites-enabled/000-default.conf


4.添加路径白名单
vim /etc/apache2/apache2.conf 

<Directory 新路径>
	Options Indexes FollowSymLinks
	AllowOverride None
	Require all granted
</Directory>

4.重启服务
systemctl restart apache2.service