
upstream group1{
	server 45.76.110.198 weight=1;
	server 45.63.93.14 weight=1;
}

server {
	listen 80;
	root /home/web;
	location / {
	 proxy_pass http://group1;
	}
}
