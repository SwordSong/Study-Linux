#
# The MySQL database server configuration file.
#
# You can copy this to one of:
# - "/etc/mysql/my.cnf" to set global options,
# - "~/.my.cnf" to set user-specific options.
# 
# One can use all long options that the program supports.
# Run program with --help to get a list of available options and with
# --print-defaults to see which it would actually understand and use.
#
# For explanations see
# http://dev.mysql.com/doc/mysql/en/server-system-variables.html

# This will be passed to all mysql clients
# It has been reported that passwords should be enclosed with ticks/quotes
# escpecially if they contain "#" chars...
# Remember to edit /etc/mysql/debian.cnf when changing the socket location.

# Here is entries for some specific programs
# The following values assume you have at least 32M ram

[mysqld_safe]
socket		= /var/run/mysqld/mysqld.sock #为mysql客户程序和服务器之间的本地通信指点一个套接字文件，系统默认为/var/lib/mysql/mysql.sock一般可设置为 /tmp/mysql.sock
nice		= 0

[mysqld]
#
# * Basic Settings
#
user		= mysql #指定使用用户为mysql
pid-file	= /var/run/mysqld/mysqld.pid #为mysqld程序指定应该存放进程id的文件 Init脚本文件则需要这个id来结束mysqld进程 一般为/usr/local/mysql/data/mysql.pid
socket		= /var/run/mysqld/mysqld.sock
port		= 3306   #mysql的端口 默认为3306
basedir		= /user  #指定安装路径
datadir		= /var/lib/mysql #指定数据文件路径
tmpdir		= /tmp 	#指定临时文件路径
lc-messages-dir	= /usr/share/mysql
skip-external-locking
#
# Instead of skip-networking the default is now to listen only on
# localhost which is more compatible and is not less secure.
bind-address		= 127.0.0.1 #只监听本地主机
#
# * Fine Tuning
#
key_buffer_size		= 16M #密钥缓冲区大小
max_allowed_packet	= 16M # 接受的数据包大小；增加该变量的值十分安全，这是因为仅当需要时才会分配额外内存。例如，仅当你发出长查询或MySQLd必须返回大的结果行时MySQLd才会分配更多内存。该变量之所以取较小默认值是一种预防措施，以捕获客户端和服务器之间的错误信息包，并确保不会因偶然使用大的信息包而导致内存溢出。
thread_stack		= 192K #线程堆栈
thread_cache_size       = 8 #线程缓存大小
# This replaces the startup script and checks MyISAM tables if needed
# the first time they are touched
myisam-recover-options  = BACKUP #替换启动脚本，并在需要时检查MyISAM表,h会在第一时间启动

#max_connections        = 100  #MySQL的最大连接数，如果服务器的并发连接请求量比较大，建议调高此值，以增加并行连接数量，当然这建立在机器能支撑的情况下因为如果连接数越多，介于MySQL会为每个连接提供连接缓冲区，就会开销越多的内存，所以要适当调整该值，不能盲目提高设值。可以过'conn%'通配符查看当前状态的连接数量，以定夺该值的大小

#table_cache            = 64	#MySQL每打开一个表，都会读入一些数据到table_open_cache缓存中，当MySQL在这个缓存中找不到相应信息时，才会去磁盘上读取。默认值64假定系统有200个并发连接，则需将此参数设置为200*N(N为每个连接所需的文件描述符数目)当把table_open_cache设置为很大时，如果系统处理不了那么多文件描述符，那么就会出现客户端失效，连接不上
#thread_concurrency     = 10	#线程并发
#
# * Query Cache Configuration
#
query_cache_limit	= 1M #查询缓存限制
query_cache_size        = 16M #查询缓存大小
#
# * Logging and Replication
#
# Both location gets rotated by the cronjob.
# Be aware that this log type is a performance killer.
# As of 5.1 you can enable the log at runtime!
#性能杀手日志
#general_log_file        = /var/log/mysql/mysql.log   #常规日志文件
#general_log             = 1
#
# Error log - should be very few entries.
#
log_error = /var/log/mysql/error.log  #错误日志
#
# Here you can see queries with especially long duration
#log_slow_queries	= /var/log/mysql/mysql-slow.log
#long_query_time = 2
#log-queries-not-using-indexes
#
# The following can be used as easy to replay backup logs or for replication.
# note: if you are setting up a replication slave, see README.Debian about
#       other settings you may need to change.
#server-id		= 1  #表示是本机的序号为1,一般来讲就是master的意思
#log_bin			= /var/log/mysql/mysql-bin.log
expire_logs_days	= 10 #日志过期天数
max_binlog_size   = 100M #日志大小
#binlog_do_db		= include_database_name
#binlog_ignore_db	= include_database_name
#
# * InnoDB
#
# InnoDB is enabled by default with a 10MB datafile in /var/lib/mysql/.
# Read the manual for more InnoDB related options. There are many!
#
# * Security Features
#
# Read the manual, too, if you want chroot!
# chroot = /var/lib/mysql/
#
# For generating SSL certificates I recommend the OpenSSL GUI "tinyca".
#SSL证书
# ssl-ca=/etc/mysql/cacert.pem
# ssl-cert=/etc/mysql/server-cert.pem
# ssl-key=/etc/mysql/server-key.pem
