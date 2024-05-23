<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Allow: GET, POST, OPTIONS, PUT, DELETE");
$method = $_SERVER['REQUEST_METHOD'];
if($method == "OPTIONS") {
    die();
}

include "connect.php";

try {

    $stmt = $conn->prepare("CALL InsertarDatos(:estatus)");

    if (isset($_GET["valorEstatus"])) {
        $valorEstatus = $_GET["valorEstatus"];

        $stmt->bindParam(':estatus', $valorEstatus);
        $stmt->execute();

        echo "Nuevo Registro-> Estatus: " . $valorEstatus;
    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}

$conn = null;
