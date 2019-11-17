<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Modifier un membre</title>
</head>
<body>

    <div class="content">
        <div class="inscription_membre">
            <a href="index.php?controller=membre&action=list" class="list_button">Liste</a>
            <h3>
                Modifier un membre
            </h3>
            <form action="" method="POST">
                <table>
                    <tr>
                        <td>Nom et Prénom : </td>
                        <td><input type="text" name="nomEtPrenom" value="<?php  echo $dataID['nomEtPrenom'];?>" placeholder="Nom et Prénom"></td>
                    </tr>
                    <tr>
                        <td>Annéee naissance : </td>
                        <td><input type="text" name="anneeNaissance" value="<?php  echo $dataID['anneeNaissance'];?>" placeholder="Année naissance"></td>
                    </tr>
                    <tr>
                        <td>Ville : </td>
                        <td><input type="text" name="ville" value="<?php  echo $dataID['ville'];?>" placeholder="Ville"></td>
                    </tr>
                    <tr>
                        <td>&nbsp; </td>
                        <td><input type="submit" name="edit_membre" value="Mettre à jour"></td>
                    </tr>
                </table>
            </form>


        </div>
    </div>

</body>
</html>
