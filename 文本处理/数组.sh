普通数组
books={linux nginx shell}
普通数组下标为1234
关联数组
info={ [name]=bgx  [age]=18 [skill]=linux }
关联数组下标可以为字符串

echo ${tt[1]}   	显示数组第二位
echo ${tt[*]}	显示全部数组
echo ${tt[@]}      	显示全部数组
echo ${!tt[*]}	显示全部数组下标
echo ${#tt[*]}	统计数组内元素个数

declare -A xxx  	声明xxx是关联数组 才能直接赋值
info={ [name]=bgx  [age]=18 [skill]=linux }