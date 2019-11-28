1. 把/etc/passwd 复制到/root/test.txt，用sed打印所有行；
root@jian:/home/txt# cp /etc/passwd /root/test.txt | sed -n '1,$p' /root/test.txt

2. 打印test.txt的3到10行；
root@jian:/home/txt# sed -n '3,10'p test.txt 

3. 打印test.txt 中包含’root’的行；
root@jian:/home/txt# sed -n '/root/'p test.txt 

4. 删除test.txt 的15行以及以后所有行；
root@jian:/home/txt# sed '15,$'d test.txt 

5. 删除test.txt中包含’bash’的行；
root@jian:/home/txt# sed '/bash/'d test.txt 

6. 替换test.txt 中’root’为’toor’；
root@jian:/home/txt# sed 's/root/toor/g' test.txt 

7. 替换test.txt中’/sbin/nologin’为’/bin/login’
root@jian:/home/txt# sed 's/\/sbin\/nologin/\/bin\/login/g' test.txt 	
root@jian:/home/txt# sed 's#sbin/nologin#bin/login#g' test.txt

8. 删除test.txt中5到10行中所有的数字；
root@jian:/home/txt#  sed -n   '3,15'p  test.txt | sed 's/[0-9]//g'

9. 删除test.txt 中所有特殊字符（除了数字以及大小写字母）；
root@jian:/home/txt# sed  's/[^0-9a-Z]//g'  test.txt


13. 在test.txt 20行到末行最前面加’aaa:’；
root@jian:/home/txt# sed '20,$s/^.*$/aaa:&/' test.txt


1. 用awk 打印整个test.txt （以下操作都是用awk工具实现，针对test.txt）；
awk '{print $0}' test.txt

2. 查找所有包含’bash’的行；
awk '/bash/' test.txt 

3. 用’:’作为分隔符，查找第三段等于0的行；
awk -F':'  '$3=="0"' test.txt 

4. 用’:’作为分隔符，查找第一段为’root’的行，并把该段的’root’换成’toor’(可以连同sed一起使用)；
awk -F':'  '$1=="root"' test.txt | sed 's/root/toor/g'

5. 用’:’作为分隔符，打印最后一段；
awk -F':' '{print $NF}' test.txt 

6. 打印行数大于20的所有行；
awk 'NR>20 '  test.txt 

7. 用’:’作为分隔符，打印所有第三段小于第四段的行；
awk -F':' '$3<$4' test.txt 

8. 用’:’作为分隔符，打印第一段以及最后一段，并且中间用’@’连接 （例如，第一行应该是这样的形式 “root@/bin/bash”；
awk -F':' '{print $1"@"$NF}' test.txt 



