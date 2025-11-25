apk add --no-cache ldb-dev \
&& apk add --no-cache openldap-dev \
&& docker-php-ext-install ${MC} ldap
