典型用法
1.清空一个文件           > 文件
2.屏蔽命令行结果	命令行 &> /dev/null
3.保存命令行显示结果	命令行 > 文件
4.保存命令行的报错信息 命令行 2> err.log


1>&2
>&2 标准信息变成标准错误
2>&1