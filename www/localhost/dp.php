<?php
echo date('Y-m-d H:i:s') . '<br />';
//----
$dbms = 'mysql';     //数据库类型
$host = 'dp_mysql'; //数据库主机名
$dbName = 'test';    //使用的数据库
$user = 'test';      //数据库连接用户名
$pass = '123456';          //对应的密码
$dsn= "$dbms:host=$host;dbname=$dbName";


try {
    $dbh = new PDO($dsn, $user, $pass); //初始化一个PDO对象
    echo " mysql 连接成功<br/>";
//    $dbh->exec("INSERT INTO `docker` (`id`, `name`) VALUES (NULL, '哇咔咔');");
//    echo "写入连接成功<br/>";
    foreach ($dbh->query('SELECT * from docker') as $row) {
        print_r($row);
        echo "<br />";
    }
    $dbh = null;
} catch (PDOException $e) {
    die ("Error!: " . $e->getMessage() . "<br/>");
}

//----------

$redis = new Redis();
$redis->connect('dp_redis', 6379);
echo "Connection to server successfully <br />";
//查看服务是否运行
echo "Server is running: " . $redis->ping() . '<br />';
$key = 'dp' . time();
$redis->set($key, "hello world redis");
echo "Stored string in redis:: " . $redis->get($key) . '<br>';