<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet"  href="./css/style1.css">
    <title>Gestion</title>
</head>
<body>
</body>
</html>

<?php
    include 'Model/DBconfig.php';
    $db = new Database;
    $db->connect();

    if (isset($_GET['controller'])) {
        $controller = $_GET['controller'];
    }
    else{
        $controller = '';
    }

    switch ($controller) {
        case 'membre':{
            require_once('Controller/membre/index.php');
        }

        default:
            # code...
            break;
    }

 ?>
