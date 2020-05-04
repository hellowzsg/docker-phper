mkdir swoole
tar -xf  ./etc/swoole-4.4.3.tgz  -C swoole --strip-components=1
cd swoole && phpize && ./configure --enable-openssl && make ${MC} && make install
docker-php-ext-enable swoole
