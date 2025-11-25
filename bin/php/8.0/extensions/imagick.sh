apk add --no-cache file-dev \
&& apk add --no-cache imagemagick-dev \
&& printf "\n" | pecl install imagick-3.4.4 \
&& docker-php-ext-enable imagick
