<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Club sportif</title>
    <!-- Import Boostrap css, js, font awesome here -->
    <link rel="stylesheet"  href="./css/style.css">
    <link rel="stylesheet"  href="./css/style1.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
    <div class="container-fluid">
        <a class="navbar-branch" href="index.html">
            <img src="./images/logo.png" height="50">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="index.html">Acceuil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html#apropos">À propos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.htmlservices">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.html#auteurs">Auteurs</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
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
