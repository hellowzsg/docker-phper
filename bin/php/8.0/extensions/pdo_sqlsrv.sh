apk add --no-cache unixodbc-dev \
&& mkdir pdo_sqlsrv \
&& tar -xf ./etc/pdo_sqlsrv-5.8.1.tgz -C pdo_sqlsrv --strip-components=1 \
&& ( cd pdo_sqlsrv && phpize && ./configure && make ${MC} && make install ) \
&& docker-php-ext-enable pdo_sqlsrv