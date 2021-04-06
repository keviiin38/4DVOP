FROM nginx:1.19

RUN apt-get update \
  && apt-get install -y --no-install-recommends git=1:2.20.* \
  && rm -rf /usr/share/nginx/html \
  && git clone https://github.com/diranetafen/static-website-example.git /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080