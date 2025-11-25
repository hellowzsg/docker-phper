apk add --no-cache rabbitmq-c-dev \
&& mkdir amqp \
&& tar -xf ./etc/amqp-1.9.4.tgz -C amqp --strip-components=1 \
&& ( cd amqp && phpize && ./configure && make ${MC} && make install ) \
&& docker-php-ext-enable amqp
