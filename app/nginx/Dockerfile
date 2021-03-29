FROM nginx:latest

RUN apt update \
  && apt install -y git \
  && rm -rf /usr/share/nginx/html \
  && git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080