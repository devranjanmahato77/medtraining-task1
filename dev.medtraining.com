server {
listen 88;
listen [::]:88;
server_name dev.medtraining.com;
root /var/www/dev.medtraining.com;
index index.html;
location / {
try_files $uri $uri/ = 404;
}
}
