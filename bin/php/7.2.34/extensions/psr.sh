pecl install psr &&  docker-php-ext-enable psr

## 在https://pecl.php.net 下载扩展到/etc/目录下
# mkdir psr \
# && tar xf ./etc/psr-xxx.tgz  -C psr --strip-components=1 \
# && cd psr \
# && phpize \
# && ./configure \
# && make ${MC} && make install \
# && docker-php-ext-enable psr