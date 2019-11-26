联合表查询
select count（* ） from 表名1 where 表头1='关键字' and 表头='关键字' and 数据库名=;

按表头查询
select 表头 from 表名;

显示表所有内容
select * from 表名;

精确查找
SELECT * FROM 表名 WHERE 表头='关键字' ;

mysql中模糊查询的四种用法：

查询出所有含有“关键字”的记录
SELECT * FROM 表名 WHERE 表头 like '%关键字%' ;

多表头联合模糊查询
select * from 表名 where 表头 like '%关键字%'  and 表头 like '%关键字%'

查询出既含有“关键字1”同时又有“关键字2”的所有记录
select * from 表名 where 表头 like '%关键字1%关键字2%'

查询出中间含有“关键字”的字段，下划线_表示任意单个字符。匹配单个任意字符，它常用来限制表达式的字符长度语句
select * from 表名 where 表头 like '%__关键字__%'

[]表示括号内所列字符中的一个（类似正则表达式）。指定一个字符、字符串或范围，要求所匹配对象为它们中的任一个。
select * from 表名 where 表头 like '[张蔡王]杰'
查询出“张杰”，“蔡杰”，“王杰”（而不是“张蔡王杰”）
 
如[]内有一系列字符（01234、abcde之类的）则可略写为“0-4”、“a-e” 
select * from 表名 where 表头 like '林[1-9]'将会查询出“林1”“林2”......“林9”

^表示不在括号所列之内的单个字符。其取值和 [] 相同，但它要求所匹配对象为指定字符以外的任一个字符。
select * from 表名 where 表头 like '[^张蔡王]杰'
查询出不姓“张”，“蔡”，“王”的“林杰”，“赵杰”等
 
select * from 表名 where 表头 like '林[^1-4]'
将排除“林1”到“林4”，寻找“林5”、“林6”、…… 