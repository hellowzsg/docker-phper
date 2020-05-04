<?php
$dbms = 'mysql';     //数据库类型
$host = 'dp_mysql'; //数据库主机名
$dbName = 'test';    //使用的数据库
$user = 'test';      //数据库连接用户名
$pass = '123456';          //对应的密码
$dsn= "$dbms:host=$host;dbname=$dbName";


try {
    $dbh = new PDO($dsn, $user, $pass); //初始化一个PDO对象
    echo "连接成功<br/>";
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