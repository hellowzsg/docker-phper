apk add --no-cache aspell-dev \
&& apk add --no-cache aspell-en \
&& docker-php-ext-install ${MC} pspell
