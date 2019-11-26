如何通过IPSec VPN服务器设置L2TP（Ubuntu 16.04）

apt-get install strongswan xl2tpd
＃（可选，需要检查）apt-get install ppp libgmp3-dev bison flex

 

编辑/etc/ipsec.conf

# /etc/ipsec.conf — Openswan IPsec configuration file modified for Strongswan
# (c) Kayama 2018
# Add connections here

conn L2TP-IPSEC
    authby=secret
    rekey=no
    keyingtries=3
    type=transport
    esp=aes128-sha1
    ike=aes128-sha-modp1024
    ikelifetime=8h
    keylife=1h
    left=XXX.XXX.XXX.XXX # 服务器ip
    leftprotoport=17/1701
    right=%any
    rightprotoport=17/%any
    rightsubnet=0.0.0.0/0
    auto=add
    dpddelay=30
    dpdtimeout=120
    dpdaction=clear
    #force all to be nat'ed. because of iOS
    forceencaps=yes

 

编辑/etc/ipsec.secrets

# This file holds shared secrets or RSA private keys for authentication.
# RSA private key for this host, authenticating it to any other host
# which knows the public part.

: PSK "TypeYourPassPhraseHere"
10.8.8.24 %any:PSK "admin"
		↑密码
 

编辑/etc/ppp/options.xl2tpd 

require-mschap-v2
refuse-mschap
ms-dns 8.8.8.8
ms-dns 8.8.4.4
asyncmap 0
auth
crtscts
idle 1800
mtu 1410
mru 1410
connect-delay 5000
lock
hide-password
local
#debug
modem
name l2tpd
proxyarp
lcp-echo-interval 30
lcp-echo-failure 4

  

编辑/etc/xl2tpd/xl2tpd.conf

[global]
ipsec saref = no
debug tunnel = no
debug avp = no
debug network = no
debug state = no
access control = no
rand source = dev
port = 1701
auth file = /etc/ppp/chap-secrets

[lns default]
ip range = 192.168.1.10-192.168.122.20
local ip = 192.168.1.1
require authentication = yes
name = l2tp
pass peer = yes
ppp debug = no
length bit = yes
refuse pap = yes
refuse chap = yes
pppoptfile = /etc/ppp/options.xl2tpd

 

最后将密码添加到/ etc / ppp / chap-secrets文件中

test    l2tpd     TestTest      "*"
账号 * 密码 *
 