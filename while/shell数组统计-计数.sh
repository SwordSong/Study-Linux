需要统计谁的次数，就将谁作为数组的索引，然后让索引进行自增即可
使用let命令需要用 bash 启动脚本
#!/bin/bash
#定义关联数组
 declare -A info_sex
#写入关联数组
while read a
        do
                type=$(echo ${a} )        或 type=$(echo $a | awk -F ":" '{print $NF}')
                let info_sex[$type]++
        done<sex.txt
#遍历数组
for b in ${!info_sex[@]}
        do
                echo  " ${b}   ====================  ${info_sex[$b]}"
        done



