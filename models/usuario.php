<?php


class Usuario extends database{

    /* public $idu;
    public $usuario;
    public $password;
    public $email;
    public $nombre;
    public $perfil;
    public $imagen; */

    private $nombre;
    private $username;

    public function userExists($user, $pass) {
        //$md5pass = md5($pass);

        $query = $this->connect()->prepare('SELECT * FROM usuario WHERE usuario = :user AND password = :pass');
        $query->execute(['user' => $user, 'pass' => $pass]);

        //comprueba si hay filas en la query
        if($query->rowCount()) {
            return true;
        } else {
            return false;
        }
    }

    public function setUser($user) {
        $query = $this->connect()->prepare('SELECT * FROM usuario WHERE usuario = :user');
        $query->execute(['user' => $user]);

        foreach ($query as $currentUser) {
            $this->nombre = $currentUser['nombre'];
            $this->usuario = $currentUser['usuario'];
        }
    }

    public function getNombre(){
        return $this->nombre;
    }
    
}

?>