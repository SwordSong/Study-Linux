iptables -L  查看规则  -t -n -v

启动modprobe ip_tables

iptables -F 清除规则不会删除默认规则
iptables -X 删除自定义的规则
iptables -C 计数器清零

添加
iptables -t filter -A	添加到规则结尾
iptables -t filter  -I	添加到规则首位  封IP首先

保存
保存: iptables-save > /etc/iptables.rules
恢复: iptables-restore < /etc/iptables.rules


！代表非  如果不是
-i 后跟着网卡
--sport源端口

-m state --state 
NEW：已经或将启动新的连接
ESTABLSHED：已建立的连接
RELATED：正在启动新连接
INVALID：非法或无法识别的
针对于FTP功能
如果连接状态是已建立的连接和正在启动新连接 则通过
iptables -A INPUT -m state --state ESTABLESHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state ESTABLESHED,RELATED -j ACCEPT



范围端口  
20:80   指20到80端口   对大范围端口
21，22，23	对几个范围端口
iptables -A INPUT -p tcp -m multiport --dport 21,22,23 -j DROP