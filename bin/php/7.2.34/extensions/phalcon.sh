pecl install phalcon && docker-php-ext-enable phalcon

## 在https://pecl.php.net 下载扩展到/etc/目录下
# mkdir phalcon \
# && tar -xf ./etc/phalcon-xxx.tar  -C  phalcon --strip-components=1 \
# && ( cd phalcon && phpize && ./configure && make ${MC} && make install ) \
# && docker-php-ext-enable phalcon