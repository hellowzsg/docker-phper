#!/bin/sh

curl -fs --resolve localhost.docker:80:127.0.0.1 "http://localhost.docker/dp/index.html" | grep "nginx-all-success" || exit 1

curl -fs --resolve localhost.docker:80:127.0.0.1 "http://localhost.docker/dp/index.php" | grep "php-all-success" || exit 1

curl -fs --resolve localhost.docker:80:127.0.0.1 "http://localhost.docker/dp/redis.php" | grep "redis-all-success" || exit 1

curl -fs --resolve localhost.docker:80:127.0.0.1 "http://localhost.docker/dp/mysql.php" | grep "mysql-all-success" || echo "mysql warning"

exit 0