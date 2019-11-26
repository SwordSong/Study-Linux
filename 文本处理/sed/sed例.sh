#!/bin/bash
1. 把/etc/passwd 复制到/root/test.txt，用sed打印所有行；
	root@jian:/home/sh# cp /etc/passwd /root/test.txt | sed -n '1,$p' /root/test.txt

2. 打印test.txt的3到10行；
	root@jian:/home/sh# sed -n '3,10'p test.txt 

3. 打印test.txt 中包含’root’的行；
	root@jian:/home/sh# sed -n '/root/'p test.txt 

4. 删除test.txt 的15行以及以后所有行；
	root@jian:/home/sh# sed '15,$'d test.txt 

5. 删除test.txt中包含’bash’的行；
	root@jian:/home/sh# sed '/bash/'d test.txt 

6. 替换test.txt 中’root’为’toor’；
	root@jian:/home/sh# sed 's/root/toor/g' test.txt 

7. 替换test.txt中’/sbin/nologin’为’/bin/login’
	root@jian:/home/sh# sed 's/\/sbin\/nologin/\/bin\/login/g' test.txt 	
	root@jian:/home/sh# sed 's#sbin/nologin#bin/login#g' test.txt

8. 删除test.txt中5到10行中所有的数字；
	root@jian:/home/sh# sed -n   '3,15'p  test.txt | sed 's/[0-9]//g'

9. 删除test.txt 中所有特殊字符（除了数字以及大小写字母）；
	root@jian:/home/sh# sed  's/[^0-9a-Z]//g'  test.txt

10. 在test.txt 20行到末行最前面加’aaa:’；
	root@jian:/home/sh# sed '20,$s/^.*$/aaa:&/' 

11. 在test.txt第50行前加111111111111111111
	root@jian:/home/sh# sed '50i 111111111111111111' test.txt

12. 在test.txt第50行后加111111111111111111
	root@jian:/home/sh# sed '50a 111111111111111111' test.txt
	
