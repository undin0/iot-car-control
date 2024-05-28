<?php
$servername = "jsjf-iot-01.cveuw8ueos2w.us-east-2.rds.amazonaws.com:3306";
$username = "admin";
$password = "12345678";
$dbname = "iot_car";

try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  //echo "Connected successfully";
} catch (PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
