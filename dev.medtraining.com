server {
	listen 88;
	listen [::]:88;

	root /var/www/html/dev.medtraining.com;

	server_name dev.medtraining.com;
	index index.php index.html index.htm;
	location / {
		#try_files $uri $uri/ = 404;
		try_files $uri $uri/ /index.php$is_args$args;
	}

	location /training {
		proxy_pass https://127.0.0.1:4000;

	location ~ \.php$ {
		include snippets/fastcgi-php.conf;
		fastcgi_pass unix:/run/php/php7.2-fpm.sock;
	}	
}
