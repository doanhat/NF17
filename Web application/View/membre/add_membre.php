<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Ajouter un membre</title>
</head>
<body>
    <div class="container-fluid">
        <div class="inscription_membre">
            <h3>
                Ajouter un nouveau membre
            </h3>
            <div class="table table-borderless">
                <form action="" method="POST">
                    <div class="form-group row">
                        <label for="inputNomEtPrenom" class="col-sm-2 col-form-label">Nom et Prénom</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="nomEtPrenom" placeholder="Nom et Prénom">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputAnneeNaissance" class="col-sm-2 col-form-label">Annéee naissance</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="anneeNaissance" placeholder="Année naissance">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputVille" class="col-sm-2 col-form-label">Ville</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="ville" placeholder="Ville">
                        </div>
                    </div>
                    <input type="submit" class="btn btn-primary" name="add_membre" value="Ajouter">
                    <a href="index.php?controller=membre&action=list">
                        <button type="button" class="btn btn-outline-secondary text-center" >Afficher la liste des membres
                        </button>
                    </a>


                </form>
            </div>
            <?php
                if (isset($success) && $success=='add_success') {
                        echo "<p style='color: green'; text-align:center >le membre est ajouté avec succès<p/>";
                }
             ?>
        </div>
    </div>

</body>
</html>
