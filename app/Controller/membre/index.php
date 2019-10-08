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
                if (isset($_GET['id'])) {
                    $id = $_GET['id'];
                    $tblTable = 'membre';
                    $dataID = $db->getDataID($tblTable,$id);

                    if (isset($_POST['edit_membre'])) {
                        $nomEtPrenom = $_POST['nomEtPrenom'];
                        $anneeNaissance = $_POST['anneeNaissance'];
                        $ville = $_POST['ville'];

                        if($db->updateData($id,$nomEtPrenom,$anneeNaissance,$ville)){
                            header('location: index.php?controller=membre&action=list');
                        }
                    }

                }
                require_once('View/membre/edit_membre.php');
                break;
            }
            case 'delete':{
                if (isset($_GET['id'])) {
                    $id = $_GET['id'];
                    $tblTable = 'membre';
                    //$dataID = $db->getDataID($tblTable,$id);
                    if($db->deleteData($id,$tblTable)){
                        header('location: index.php?controller=membre&action=list');
                    }
                    else{
                        header('location: index.php?controller=membre&action=list');
                    }
                }


                //require_once('View/membre/delete_membre.php');
                break;
            }
            case 'list':{
                $tblTable = "membre";

                $data = $db->getAllData($tblTable);
                require_once('View/membre/list.php');
                break;
            }
            case 'find':{
                if (isset($_GET['Motclef'])) {
                    $key = $_GET['Motclef'];
                    $tblTable = "membre";

                    $dataFind = $db->findData($tblTable,$key);
                    # code...
                }
                require_once('View/membre/find_membre.php');
                break;
            }


            default:
                require_once('View/membre/list.php');
                break;
        }
 ?>

