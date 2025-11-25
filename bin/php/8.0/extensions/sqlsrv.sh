apk add --no-cache unixodbc-dev \
&& mkdir sqlsrv \
&& tar -xf ./etc/sqlsrv-5.8.1.tgz -C sqlsrv --strip-components=1 \
&& ( cd sqlsrv && phpize && ./configure && make ${MC} && make install ) \
&& docker-php-ext-enable sqlsrv