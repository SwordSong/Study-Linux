 1.在本地机器上对两个目录同步

$ rsync -zvr filename1 filename2
上述代码是将filename1中的文件与filename2中的文件同步，如果将filename2中的文件同步到filename1中，修改代码为：
$ rsync -zvr filename2 filename1


2.使用rsync –a 同步保留时间按标记
$ rsync -azv filename1 filename2
使用上述命令，将filename2中新同步的文件的时间与filename1中的创建的时间相同，它保留符号链接、权限、时间标记、用户名及组名相同。

3.将远程服务器的文件同步到本地
$rsync -avz 用户名@远程主机:/home/filename2 filename1
上述命令是将远程主机的主机上filename2同步到本地的filename1。
注意：如果远程主机的端口不是默认的22端口，假如是4000端口，上述的命令修改为，
$ rsync -avz '-e ssh -p 4000' 用户名@远程主机:/home/filename2 filename1 

4.从本地同步文件到远程服务器
$rsync -avz filename1 用户名@远程主机:/home/filename2
上述命令是将本地的filename1同步到远程主机的主机上。
同理如果端口不是22，使用以下命令
$ rsync -avz '-e ssh -p 4000' filename1 用户名@远程主机:/home/filename2