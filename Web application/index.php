<?php
    $title = "index";
    $homePage = "clubsportif.php";
    $aboutPage = "clubsportif.php#about";
    $servicesPage = "clubsportif.php#services";
    $authorsPage = "clubsportif.php#authors";
 ?>
<?php ob_start(); ?>
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
 <?php $content = ob_get_clean(); ?>
<?php require('View/template/pageTemplate.php') ?>
