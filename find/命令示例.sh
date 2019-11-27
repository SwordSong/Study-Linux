find /etc/ -name passwd      ##查找/etc/下名称中带有passwd的文件
find /etc -maxdepth 1 -name passwd     ##查找/etc/下名称中带有passwd的文件，查找一层。
find /etc -name *.conf       ##查找/etc/下名称中带有*.conf的文件(下面显示的是部分)
find /etc -maxdepth 2 -name *.conf  ##查找/etc/下名称中带有*.conf的文件，且查找两层，包括一层（下面显示的是部分）
find /etc -maxdepth 2 -mindepth 2 -name *.conf  ##查找/etc/下名称中带有*.conf的文件，且只查找第二层
find /mnt -group tony             ##查找/mnt中所有组是tony用户的文件
find /mnt -user student -group student  ##查找/mnt中所有人和所有组都是student的文件
find /mnt -not -user student      ##查找/mnt中所有人不是student用户的文件
find /mnt -not -user student -o -group tony   ##查找/mnt中所有人不是student用户或者所有组是tony用户的文件
find /mnt -size 20K       ##查找/mnt文件大小近似20k的文件
find /mnt -size +20K      ##查找/mnt文件大小大于20k的文件
find /mnt -size -20K      ##查找/mnt文件大小小于20k的文件
find /mnt -type d         ##按type查找/mnt中目录
find /mnt -type f         ##按type查找/mnt中文件
find /mnt -cmin 10        ##查找/mnt中十分钟左右修改的
find /mnt -cmin +10       ##查找/mnt中十分钟以上修改的
find /mnt -cmin -10       ##查找/mnt中十分钟以内修改的
find /mnt -ctime 10       ##查找/mnt中十天左右修改的
find /mnt -ctime +10      ##查找/mnt中十天以上修改的
find /mnt -ctime -10      ##查找/mnt中十天以内修改的
find /mnt/ -perm 444      ##查找/mnt文件权限为444的文件
find /mnt/ -perm -444     ##查找/mnt中user有读的权限且group有读的权限且other有读的权限的文件。（三个条件，u.g.o至少要读的权限即r--r--r--）
find /mnt/ -perm -004     ##查找/mnt中other有读权限的文件（一个条件,o至少有读的权限）
find /mnt/ -perm -644     ##查找/mnt中user有读写的权限且group至少有读权限且other有读的权限的文件。（四个条件,rw-r--r--）
find /etc/ -name *.conf -exec cp -rp {} /mnt \;   ##把/etc/目录下名称中带有.conf的文件递归复制到/mnt下
find /mnt -name "*.conf" -exec rm -fr {} \; ##删除/mnt名称中带有.conf的文件
find / -group mail -exec cp -rp {} /mnt \; ##把/目录下的组属于mail的文件复制到/mnt
