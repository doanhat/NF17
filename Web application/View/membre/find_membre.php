<?php $title = "Liste des membres" ?>

<div class="container-fluid">
    <div class="find">
        <div class="table table-borderless">
            <form action="" method="GET">
                <div class="form-group row">
                    <div class="col-sm-12">
                        <input type="hidden" class="form-control" name="controller" value="membre">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-9">
                        <input type="text" class="form-control" name="Motclef" placeholder="Saisir le mot clef">
                    </div>
                    <input type="submit" class="btn btn-primary" value="Rechercher">
                </div>
                <div class="form-group row">
                    <div class="col-sm-12">
                        <input type="hidden" class="form-control" name="action" value="find">
                    </div>
                </div>
            </form>
        </div>

    </div>
</div>

<div class="container-fluid">
    <div class="list_membre">
    <h3>Liste des membres</h3>

    <table class="table">
        <thead class="thead-light">
            <tr>
              <th scope="col">#</th>
              <th scope="col">Nom et Prénom</th>
              <th scope="col">Année naissance</th>
              <th scope="col">Ville</th>
              <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $id = 1;
                foreach ($dataFind as $value) {
             ?>
            <tr>
                <th scope="row"><?php echo $id; ?></th>
                <td><?php echo $value['nomEtPrenom'] ?></td>
                <td><?php echo $value['anneeNaissance'] ?></td>
                <td><?php echo $value['ville'] ?></td>
                <td>
                    <a onclick="return confirm('Voulez-vous vraiment modifier ce membre ?')" href="index.php?controller=membre&action=edit&id=<?php echo $value['id'] ?>">Modifier</a>
                    <a onclick="return confirm('Voulez-vous vraiment supprimer ce membre ?')" href="index.php?controller=membre&action=delete&id=<?php echo $value['id'] ?>">Supprimer</a>
                </td>
            </tr>
            <?php
                $id++;
                }
             ?>
        </tbody>
    </table>

</div>
