<?php
    /**
     *
     */
    class Database
    {
        private $hostname = 'localhost';
        private $username = 'root';
        private $pass = '';
        private $dbname = 'clubsportif';

        private $conn = NULL;
        private $result = NULL;

        public function connect()
        {
            $this->conn = new mysqli($this->hostname,$this->username,$this->pass,$this->dbname);
            if (!$this->conn) {
                echo "Connexion échec";
                exit();
            }
            else
            {
                mysqli_set_charset($this->conn,'utf8');
            }
            return $this->conn;
        }

        public function execute($sql)
        {
            $this->result = $this->conn->query($sql);
            return $this->result;

        }

        public function getData()
        {
            /*$sql = "SELECT * FROM $table";
            $this->execute($sql);*/
            if ($this->result) {
                $data = mysqli_fetch_array($this->result);
            }
            else
            {
                $data = 0;
            }
            return $data;
        }

        public function getDataID($table,$id)
        {
            $sql = "SELECT * FROM $table WHERE id = '$id'";
            $this->execute($sql);
            if ($this->num_rows()!=0) {
                $data = mysqli_fetch_array($this->result);
            }
            else
            {
                $data = 0;
            }
            return $data;
        }
        public function num_rows()
        {
            if ($this->result) {
                $num = mysqli_num_rows($this->result);
            }
            else
            {
                $num = 0;
            }
            return $num;
        }
        public function getAllData($table)
        {
            /*if ($this->result) {
                $data = 0;
            }*/
            $sql = "SELECT * FROM $table";
            $this->execute($sql);
            if ($this->num_rows()==0) {
                $data = 0;
            }
            else
            {
                while ($datas = $this->getData()) {
                    $data[] = $datas;
                }
            }
            return $data;
        }



        public function insertData($nomEtPrenom,$anneeNaissance,$ville)
        {
            $sql = $sql = "INSERT INTO membre (id, nomEtPrenom, anneeNaissance, ville) VALUES (null,'$nomEtPrenom', '$anneeNaissance', '$ville')";
            return $this->execute($sql);

        }

        public function updateData($id,$nomEtPrenom,$anneeNaissance,$ville)
        {
            $sql = "UPDATE Membre SET nomEtPrenom = '$nomEtPrenom' ,anneeNaissance = '$anneeNaissance',ville = '$ville' WHERE id = '$id'";
            return $this->execute($sql);

        }
        public function deleteData($id,$table)
        {
            $sql = "DELETE FROM $table WHERE id = '$id'";
            return $this->execute($sql);

        }
        public function findData($table,$key)
        {
            /*if ($this->result) {
                $data = 0;
            }*/
            $sql = "SELECT * FROM $table WHERE nomEtPrenom REGEXP '$key' ORDER BY id DESC";
            $this->execute($sql);
            if ($this->num_rows()==0) {
                $data = 0;
            }
            else
            {
                while ($datas = $this->getData()) {
                    $data[] = $datas;
                }
            }
            return $data;
        }

    }

 ?>
