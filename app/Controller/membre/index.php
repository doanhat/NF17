<?php

    if (isset($_GET['action'])) {
            $action = $_GET['action'];
        }
        else{
            $action = '';
        }
        //$success = array();
        switch ($action) {
            case 'add':{
                if (isset($_POST['add_membre'])) {
                    $nomEtPrenom = $_POST['nomEtPrenom'];
                    $anneeNaissance = $_POST['anneeNaissance'];
                    $ville = $_POST['ville'];
                    if($db->insertData($nomEtPrenom,$anneeNaissance,$ville)){
                        $success = 'add_success';
                    }
                }

                require_once('View/membre/add_membre.php');
                break;
            }
            case 'edit':{
                require_once('View/membre/edit_membre.php');
                break;
            }
            case 'delete':{
                require_once('View/membre/delete_membre.php');
                break;
            }
            case 'list':{
                $tblTable = "membre";

                $data = $db->getAllData($tblTable);
                require_once('View/membre/list.php');
                break;
            }
            default:
                require_once('View/membre/list.php');
                break;
        }
 ?>

