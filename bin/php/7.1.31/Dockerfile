ARG PHP_VERSION

FROM php:${PHP_VERSION}-fpm-alpine

ARG ALPINE_REPOSITORIES
ARG EXTENSIONS

RUN sed -i "s/dl-cdn.alpinelinux.org/${ALPINE_REPOSITORIES}/g" /etc/apk/repositories

COPY ./extensions /tmp/extensions

WORKDIR /tmp/extensions

RUN chmod +x install.sh \
    && sh install.sh \
    && rm -rf /tmp/extensions

WORKDIR /var/www/html

