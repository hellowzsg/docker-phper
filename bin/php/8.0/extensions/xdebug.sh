mkdir xdebug \
&& tar -xf ./etc/xdebug-2.6.1.tgz -C xdebug --strip-components=1 \
&& ( cd xdebug && phpize && ./configure && make ${MC} && make install ) \
&& docker-php-ext-enable xdebug