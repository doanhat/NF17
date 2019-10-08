<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Ajouter un membre</title>
</head>
<body>
    <div class="content">
        <div class="inscription_membre">
            <a href="index.php?controller=membre&action=list" class="list_button">Liste</a>
            <h3>
                Ajouter un nouveau membre
            </h3>
            <form action="" method="POST">
                <table>
                    <tr>
                        <td>Nom et Prénom : </td>
                        <td><input type="text" name="nomEtPrenom" placeholder="Nom et Prénom"></td>
                    </tr>
                    <tr>
                        <td>Annéee naissance : </td>
                        <td><input type="text" name="anneeNaissance" placeholder="Année naissance"></td>
                    </tr>
                    <tr>
                        <td>Ville : </td>
                        <td><input type="text" name="ville" placeholder="Ville"></td>
                    </tr>
                    <tr>
                        <td>&nbsp; </td>
                        <td><input type="submit" name="add_membre" value="Ajouter"></td>
                    </tr>
                </table>
            </form>

            <?php
                if (isset($success) && $success=='add_success') {
                        echo "<p style='color: green'; text-align:center >le membre est ajouté avec succès<p/>";
                }
             ?>
        </div>
    </div>

</body>
</html>
