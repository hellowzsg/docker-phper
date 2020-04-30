FROM php:7.1.31-fpm-alpine
RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories;
RUN apk add --no-cache autoconf g++ libtool make curl-dev libxml2-dev linux-headers
RUN docker-php-ext-install  pdo_mysql

