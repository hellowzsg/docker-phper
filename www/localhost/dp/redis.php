<?php
$host = 'dp_redis';
$port = '6379';

try {
    $redis = new Redis();
    $redis->connect($host, $port);
    echo "Connection to redis server<br />" . PHP_EOL;
    echo "redis is running: " . $redis->ping() . '<br />' .PHP_EOL;
    $key = 'dp' . time();
    $redis->set($key, "哇咔咔");
    echo "Stored string in redis:: " . $redis->get($key) . '<br>' .PHP_EOL;
    $redis->delete($key);
    echo "delete key in redis:: $key".'<br>'.PHP_EOL;
    echo "redis-all-success" . PHP_EOL;
} catch(PDOException $e) {
    echo $e->getMessage() . PHP_EOL;
}