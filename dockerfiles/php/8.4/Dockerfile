FROM php:8.4-fpm-alpine

ENV TZ=Asia/Shanghai

ADD --chmod=0755 https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# allow build-time override of PHP extensions list; keep empty by default
ARG EXTENSIONS=

RUN set -eux; \
    chmod +x /usr/local/bin/install-php-extensions; \
    install-php-extensions \
    ${EXTENSIONS//,/ }; \
    apk add --no-cache tzdata

EXPOSE 9000
CMD ["php-fpm", "-R"]