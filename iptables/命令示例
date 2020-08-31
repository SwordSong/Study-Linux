对某个端口封禁
iptables -t filter -A INPUT -p tcp --dport 22 -j DROP
-t 指定表   -A 添加规则  INPUT 输入  -p选择协议 --dport指定端口 -j指定操作

对某个网段/ip封禁
iptables -t filter -A INPUT -i ens32 -s 10.0.0.0/24 -j DROP
-t 指定表   -A 添加规则  INPUT 输入 -i选择网卡 -s指定网段或ip -j指定操作

对除了192.168.10.39这个ip/网段外的网络封禁
iptables -t filter -A INPUT -i ens32 ! -s 192.168.10.39 -j DROP 

对除了192.168.10.106这个ip/网段外的ICMP包封禁，其他服务正常 （--icmp-type any）
iptables -t filter -A INPUT -p icmp --icmp-type 8 -i ens32 ! -s 192.168.10.106 -j DROP

从ens3网卡出去
iptables -A FORWARD -o ens3
从ens网卡进入
iptables -A FORWARD -i ens3


企业网配置
iptables -t filter -A INPUT -p tcp --dport 22 -s 192.168.10.0/24 -j ACCEPT 
iptables -t filter -A INPUT -i lo -j ACCEPT 
iptables -t filter -A OUTPUT -o lo -j ACCEPT
-P DROP

把目的端口服务转到指定IP端口
iptables -t nat -A PREROUTING -d 10.0.0.1 -p tcp --dport 80 -j DNAT --to-destination 192.178.1.1:9000

NAT转换
iptables -t nat -A POSTROUTING -s 192.168.1.0/24 -o eth0 -j SNAT --to-source 10.0.0.7

IP一对一转换
iptables -A PRETOUTING -d 192.168.1.1 -j DNAT --to-destination 10.0.0.1
iptables -A POSTROUTNG -s 10.0.0.8 -o eth0 -j SNAT --to-source 123.123.123.123