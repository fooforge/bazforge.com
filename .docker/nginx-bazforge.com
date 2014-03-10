server {
  listen 8002;
  root /var/www/bazforge.com/_site;
  index index.html;

  server_name localhost;

  location / {
    try_files $uri $uri/ /index.html;
  }
}
