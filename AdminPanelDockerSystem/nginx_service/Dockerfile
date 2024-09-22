FROM nginx:alpine

WORKDIR /app

COPY ./cert/4yana.pl.pem /etc/nginx/ssl/4yana.pl.pem
COPY ./cert/4yana.pl.key /etc/nginx/ssl/4yana.pl.key

COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 443