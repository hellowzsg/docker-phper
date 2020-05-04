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


apk add --no-cache autoconf g++ libtool make curl-dev libxml2-dev linux-headers
echo "---------- Install general dependencies success----------"

#extensions=pdo_mysql,mysqli,swoole
default_extensions=`sed '/^default=/!d;s/.*=//' extensions.conf`

for extension in ${EXTENSIONS//,/ }
do
    if [[ $(echo $default_extensions | grep "${extension}") != "" ]];then
        echo "docker-php-ext-install ${MC} ${extension}"
        docker-php-ext-install ${MC} ${extension}
    else
        if [ -f "./${extension}.sh" ];then
            sh ${extension}.sh
            echo "sh ${extension}.sh"
        fi
    fi

    if [ $? == 0 ]; then
        echo "---------- Install ${extension} extension success----------"
    else
        echo "---------- Install ${extension} extension fail----------"
    fi
done
exit 0


