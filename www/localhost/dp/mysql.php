<?php
$servername = "dp_mysql";
$username = "root";
$password = "123456";
$port=3306;

$maxTries = 10;
do {
    $mysql = new mysqli($servername, $username, $password, '', $port, '');
    if ($mysql->connect_error) {
        echo 'MySQL Connection Error: (' . $mysql->connect_errno . ') ' . $mysql->connect_error . '<br />' . PHP_EOL;
        --$maxTries;
        if ($maxTries <= 0) {
            exit(1);
        }
        sleep(3);
    }
} while ($mysql->connect_error);

try {
    $conn = new PDO("mysql:host=$servername", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $dbname = 'dp_test';
    $sql = "CREATE DATABASE $dbname";
    $conn->exec($sql);
    echo "create database $dbname" . "<br />" . PHP_EOL;

    $conn->exec("use $dbname");
    $sql = "CREATE TABLE `dp` ( `id` INT(10) NOT NULL AUTO_INCREMENT , `name` VARCHAR(20) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;";
    $conn->exec($sql);
    echo "create table dp" ."<br />" . PHP_EOL;

    $conn->exec("INSERT INTO `dp` (`id`, `name`) VALUES (NULL , '哇咔咔');");
    foreach ($conn->query('SELECT * from dp') as $row) {
        print_r($row);
        echo "<br />" . PHP_EOL;
    }

    $conn->exec("drop database $dbname");
    echo date('Y-m-d H:i:s') . " mysql-all-success" . "<br/>" . PHP_EOL;
} catch(PDOException $e) {
    echo $e->getMessage() . PHP_EOL;
}
$conn = null;