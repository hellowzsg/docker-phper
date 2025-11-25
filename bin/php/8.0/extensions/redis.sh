mkdir redis \
&& tar -xf ./etc/redis-4.1.1.tgz -C redis --strip-components=1 \
&& ( cd redis && phpize && ./configure && make ${MC} && make install ) \
&& docker-php-ext-enable redis