修改默认网页
修改/etc/apache2/mods-available/dir.conf中的内容
<IfModule mod_dir.c>
DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm
</IfModule>