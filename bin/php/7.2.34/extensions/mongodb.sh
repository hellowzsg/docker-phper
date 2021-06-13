mkdir mongodb \
&& tar -xf ./etc/mongodb-1.8.0beta1.tgz -C mongodb --strip-components=1 \
&& ( cd mongodb && phpize && ./configure && make ${MC} && make install ) \
&& docker-php-ext-enable mongodb
