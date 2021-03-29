FROM nginx:latest

RUN apt update && apt install -y git && git clone https://github.com/diranetafen/static-website-example.git /var/www/html

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080