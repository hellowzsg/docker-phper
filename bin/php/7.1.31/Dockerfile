ARG PHP_VERSION
#7.1.31
FROM php:${PHP_VERSION}-fpm-alpine

ARG TZ
ARG ALPINE_REPOSITORIES
ARG EXTENSIONS

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories
#RUN if [ "${ALPINE_REPOSITORIES}" != "" ]; then \
#        sed -i "s/dl-cdn.alpinelinux.org/${ALPINE_REPOSITORIES}/g" /etc/apk/repositories; \
#    fi

RUN apk --no-cache add tzdata \
    && cp -r "/usr/share/zoneinfo/$TZ" /etc/localtime \
    && echo "$TZ" > /etc/timezone

COPY ./extensions /tmp/extensions

WORKDIR /tmp/extensions
RUN chmod +x install.sh \
    && sh install.sh \
    && rm -rf /tmp/extensions

WORKDIR /var/www/html

