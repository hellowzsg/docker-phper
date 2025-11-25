apk add --no-cache freetype-dev libjpeg-turbo-dev libpng-dev \
&& docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ \
&& docker-php-ext-install ${MC} gd
