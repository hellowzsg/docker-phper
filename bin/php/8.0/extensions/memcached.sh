apk add --no-cache libmemcached-dev zlib-dev \
&& mkdir memcached \
&& tar -xf ./etc/memcached-3.1.3.tgz -C memcached --strip-components=1 \
&& ( cd memcached && phpize && ./configure && make ${MC} && make install ) \
&& docker-php-ext-enable memcached
