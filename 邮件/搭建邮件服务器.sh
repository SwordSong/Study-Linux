快速部署postfix邮件服务器
装包、配置、起服务
      ——默认的标准配置即可谓本机提供发/收邮件服务
      ——若有必要，可扩大服务范围


用户发邮件的协议 ： SMTP 端口25
用户收邮件的协议：pop3 端口110  直接下载 |  IMAP 端口 143 点开的时候再下载

10.8.8.162   搭建邮件服务 （aaa.com）
     1.设置永久主机名 aaa.com



apt install postfix