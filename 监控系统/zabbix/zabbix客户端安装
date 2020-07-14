步骤1 –添加Apt储存库
#For Ubuntu 16.04 (Xenial):
wget https://repo.zabbix.com/zabbix/4.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.0-3+xenial_all.deb
sudo dpkg -i zabbix-release_4.0-3+xenial_all.deb


步骤2 安装代理
sudo apt-get update
sudo apt-get install zabbix-agent

步骤3 编辑zabbix代理配置
sudo vi /etc/zabbix/zabbix_agentd.conf

#Server=[zabbix server ip]
#Hostname=[Hostname of client system ]

Server=服务器ip
Hostname=Server2

步骤4 重启zabbix代理
sudo systemctl enable zabbix-agent 
sudo systemctl start zabbix-agent 

在服务端添加主机和模块