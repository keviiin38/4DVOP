FROM nginx:latest

COPY default.conf /etc/nginx/conf.d/default.conf

RUN apt update && apt install -y git && git clone https://github.com/diranetafen/static-website-example.git /var/www/html

EXPOSE 8080