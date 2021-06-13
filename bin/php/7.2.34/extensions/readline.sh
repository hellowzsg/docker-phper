apk add --no-cache readline-dev \
&& apk add --no-cache libedit-dev \
&& docker-php-ext-install ${MC} readline