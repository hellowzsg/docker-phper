mkdir yaf \
&& tar -xf ./etc/yaf-3.2.1.tgz  -C yaf --strip-components=1 \
&& ( cd redis && phpize && ./configure && make ${MC} && make install ) \
&& docker-php-ext-enable yaf