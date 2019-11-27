

server {
	listen 80;
        location / {
        	proxy_pass http://45.76.110.198;
	
	}

}
