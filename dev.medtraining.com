server {
listen 80;
listen [::]:80;
server_name dev.medtraining.com;
root /var/www/dev.medtraining.com;
index index.html;
location / {
try_files $uri $uri/ = 404;
}
location /training{
  proxy_pass https://127.0.0.1:4000;
}
}
