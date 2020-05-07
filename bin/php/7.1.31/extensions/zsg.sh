#!/bin/sh
export MC="-j$(nproc)"

echo ""
echo "============================================================="
echo "Install from   : install.sh"
echo "PHP version               : ${PHP_VERSION}"
echo "Multicore Compilation     : ${MC}"
echo "Work directory            : ${PWD}"
echo "============================================================="
echo ""

#rm -rf /var/cache/apk/*
#apk update

echo "---------- Install general dependencies----------"
#apk add --no-cache autoconf g++ libtool make curl-dev libxml2-dev linux-headers

EXTENSIONS=pdo_mysql,mysqli,swoole,mbstring
default_extensions=`sed '/^default=/!d;s/.*=//' extensions.conf`

for extension in ${EXTENSIONS//,/ }
do
    if [ -n "$(echo $default_extensions | grep $extension)" ];then
        echo "---------- Install ${extension} extension 23333----------"
        #docker-php-ext-install ${MC} ${extension}
    else
        if [ -f "./${extension}.sh" ];then
            echo "---------- Install ${extension} extension----------"
            #sh ${extension}.sh
        fi
    fi
done
exit 0


