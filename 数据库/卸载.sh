删除mysql完整步骤：

1、sudo apt-get remove mysql-server.

 

2、sudo apt-get autoremove mysql-server



3、sudo apt-get remove mysql-common



4、
sudo rm /var/lib/mysql/ -R

sudo rm /etc/mysql/ -R



sudo apt-get autoremove mysql* --purge

sudo apt-get remove apparmor

