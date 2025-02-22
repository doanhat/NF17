
<?php
    $title = "Club sportif";
    ob_start();

?>
<!-- Carousel -->
<div id="slides" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
        <li data-target="#slides" data-slide-to="0" class="active"></li>
        <li data-target="#slides" data-slide-to="1"></li>
        <li data-target="#slides" data-slide-to="2"></li>
        <li data-target="#slides" data-slide-to="3"></li>
    </ul>
    <div class="carousel-inner">
        <div class="carousel-caption">
                <h1 class="display-2">Club Sportif</h1>
                <h3>Gérer votre club !</h3>
                <a type="button" class="btn btn-outline-light btn-lg" href="#about">
                    À PROPOS DU PROJET
                </a>
                <a type="button" class="btn btn-primary btn-lg" href="https://github.com/doanhat/Relational-and-non-relational-databases">GITHUB</a>
            </div>
        <div class="carousel-item active">
            <img src="Assets/images/carousel0.png">

        </div>
        <div class="carousel-item">
            <img src="Assets/images/carousel1.png">
        </div>
        <div class="carousel-item">
            <img src="Assets/images/carousel2.png">
        </div>
        <div class="carousel-item">
            <img src="Assets/images/carousel3.png">
        </div>
    </div>
</div>
<!-- jumbotron -->
<div class="container-fluid">
    <div class="jumbotron" id = "about">
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
            <p>Dans ce projet, nous proposerons une base de données pour la gestion d'un club sportif. Pour plus d'informations, veuillez lire la note de clarification.</p>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-12">
            <a href="https://github.com/doanhat/Relational-and-non-relational-databases/blob/master/ndc.md">
                <button type="button" class="btn btn-outline-secondary text-center" >Note de clarification</button>
            </a>
        </div>
    </div>
</div>
<div class="container-fluid padding" id="services">
    <div class="row welcome text-center">
        <div class="col-12">
            <h1 class="display-4">Nos services</h1>
        </div>
        <!-- Horizontal Rule -->
        <hr class="light">
        <div class="col-12">
            <p>Bienvenue à notre site de gestion de BDD</p>
        </div>
    </div>
</div>
<div class="container-fluid padding" >
    <div class="row text-center padding">
        <div class="col-xs-12 col-sm-6 col-md-3 ">
            <div class="ajouter">
                <a href="index.php?controller=membre&action=add">
                    <button type="button" class="btn btn-outline-secondary text-center" ><i class="fas fa-user-plus" ></i></button>
                </a>
            </div>


            <h3>Ajouer</h3>
            <p>Ajouter un nouveau membre</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="modifier">
                <a href="index.php?controller=membre&action=list">
                    <button type="button" class="btn btn-outline-secondary text-center" ><i class="fas fa-sliders-h" ></i></button>
                </a>
            </div>
            <h3>Modifier</h3>
            <p>Modifier un membre</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="modifier">
                <a href="index.php?controller=membre&action=list">
                    <button type="button" class="btn btn-outline-secondary text-center" ><i class="fas fa-user-times" ></i></button>
                </a>
            </div>

            <h3>Supprimer</h3>
            <p>Supprimer un membre</p>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="modifier">
                <a href="index.php?controller=membre&action=list">
                    <button type="button" class="btn btn-outline-secondary text-center" ><i class="fas fa-search" ></i></button>
                </a>
            </div>
            <h3>Chercher</h3>
            <p>Chercher un membre</p>
        </div>
    </div>
    <div class="button">
        <a href="index.php?controller=membre&action=list">
                <button type="button" class="btn btn-outline-secondary">Afficher la liste des membres</button>
        </a>
    </div>

    <hr class="my-4">
</div>

<div class="container-fluid padding" id="authors">
    <div class="row welcome text-center">
        <div class="col-12">
            <h1 class="display-4">Auteurs</h1>
        </div>

    </div>
    <hr>
</div>
<div class="container-fluid padding">
    <div class="row padding">
        <div class="col-md-3">
            <div class="card">
                <img class="card-img-top" src="Assets/images/doannhatminh.png">
                <div class="card-body">
                    <h4 class="card-title">DOAN Nhat-Minh</h4>
                    <p class="card-text">Étudiant en deuxième année à l'UTC</p>
                    <a href="https://www.linkedin.com/in/nhat-minh-doan-69755b146/" class="btn btn-outline-secondary">Profil</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <img class="card-img-top" src="Assets/images/johndoe.png">
                <div class="card-body">
                    <h4 class="card-title">
                        Clément Fraveau
                    </h4>
                    <p class="card-text">Étudiant en deuxième année à l'UTC</p>
                    <a href="#authors" class="btn btn-outline-secondary">Profil</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <img class="card-img-top" src="Assets/images/Natasha.png">
                <div class="card-body">
                    <h4 class="card-title">
                        Alicia Boullée
                    </h4>
                    <p class="card-text">Étudiante en deuxième année à l'UTC</p>
                    <a href="#authors" class="btn btn-outline-secondary">Profil</a>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <img class="card-img-top" src="Assets/images/Natasha.png">
                <div class="card-body">
                    <h4 class="card-title">
                        Candice Bimont
                    </h4>
                    <p class="card-text">Étudiante en deuxième année à l'UTC</p>
                    <a href="#authors" class="btn btn-outline-secondary">Profil</a>
                </div>
            </div>
        </div>
    </div>
    <hr class="my-4">
</div>
<?php $content = ob_get_clean(); ?>

<?php require('View/template/pageTemplate.php') ?>







