<?php

include_once 'models/usuario.php';

class LoginModel extends Model{

    public function __construct() {
        parent::__construct();
    }

    //funciones
    public function nuevoUsuario() {

        /* $usu = $_POST['usuario'];
        $pass = $_POST['pass'];
        $email = $_POST['email'];
        $nombre = $_POST['nombre']; */

        $query = $this->db->connect()->prepare("INSERT INTO usuario (usuario, password, email, nombre) VALUES (:usuario, :pass, :email, :nombre)");

        try{
            $query->execute([
                ':usuario'=>$_POST['usuario'],
                ':pass'=>$_POST['pass'],
                ':email'=>$_POST['email'],
                ':nombre'=>$_POST['nombre']." ".$_POST['apellidos'],
            ]);


            return true;
        }catch(PDOException $e){
            return false;
        }

    }

}

?>