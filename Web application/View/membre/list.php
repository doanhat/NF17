<div class="find">
    <form action="" method="GET">
        <table>
            <tr>
                <input type="hidden" name="controller" value="membre">
                <td><input type="text" name="Motclef" placeholder="Saisir le mot clef"></td>
                <td><input type="submit" value="Rechercher"></td>
            </tr>
        </table>
        <input type="hidden" name="action" value ="find">
    </form>

</div>

<div class="list_membre">
    <h3>Liste des membres</h3>
    <table border="1px">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nom et Prénom</th>
                <th>Année naissance</th>
                <th>Ville</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php
                $id = 1;
                foreach ($data as $value) {
            ?>
            <tr>
                <td><?php echo $id; ?></td>
                <td><?php echo $value['nomEtPrenom']; ?></td>
                <td><?php echo $value['anneeNaissance']; ?></td>
                <td><?php echo $value['ville']; ?></td>
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
