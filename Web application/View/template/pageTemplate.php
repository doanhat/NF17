<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $title ?></title>
    <!-- Import Boostrap css, js, font awesome here -->
    <link rel="stylesheet"  href="Assets/css/styleForm.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js">
    </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <link href="Assets/css/stylePage.css" rel="stylesheet">
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top sticky-mid">
    <div class="container-fluid">
        <a class="navbar-branch" href="clubsportif.php">
            <img src="Assets/images/logo.png" height="50">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="<?php echo $homePage ?>">Acceuil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo $aboutPage ?>">À propos</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo $servicesPage ?>">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="<?php echo $authorsPage ?>">Auteurs</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<?php echo $content; ?>
<footer>
    <div class="container-fluid padding">
        <div class="row text-center">

            <div class="col-md-12">
                <hr class="light">
                <h5>Projet</h5>
                <hr class="light">
                <p>NF17 : Club sportif</p>

            </div>

            <div class="col-12">
                <hr class="light">
                <h5>&copy; UTC</h5>
            </div>
        </div>
    </div>
</footer>
</body>
</html>











