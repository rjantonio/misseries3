<?php

class Login extends Controller{

    function __construct(){
        parent::__construct();
        $this->view->series = [];

    }

    function render() {
        //$series =  $this->model->get();
        //$series = "Hola";
        //$this->view->series = $series;

        

        $this->view->render('login/index');
    }

    public function cerrar() {

        $userSession = new UserSession;

        $userSession->closeSession();

        $url = constant("URL");

        header("Location: $url");

    }

    function creaUsuario($param = null) {

        $url = constant("URL");

        if(isset($_POST['respuesta'])) {

            if(($_POST['respuesta'])==1){

                //$this->view->render('login/registro');
                //$this->view->errorLogin = "error";

                if (($_POST['nombre']!="")&&($_POST['apellidos']!="")&&($_POST['email']!="")&&($_POST['usuario']!="")&&($_POST['pass']!="")&&($_POST['confpass']!="")) {

                    if ($_POST['pass']==$_POST['confpass']) {

                        if($this->model->nuevoUsuario()){
                            //Usuario creado correctamente.
                            header("Location: $url?creado=1");
        
                        } else {
                            echo "Hubo un error al crear su usuario";
                        }

                    } else {
                        //Las contraseñas no coinciden.
                        $url = $url . "/views/login/registro.php?error=2";

                        if ($_POST['nombre']!="") {
                            $url = $url . "&nombre=". $_POST['nombre'];
                        }
                        if ($_POST['apellidos']!="") {
                            $url = $url . "&apellidos=". $_POST['apellidos'];
                        }
                        if ($_POST['email']!="") {
                            $url = $url . "&email=". $_POST['email'];
                        }
                        if ($_POST['usuario']!="") {
                            $url = $url . "&usuario=". $_POST['usuario'];
                        }
                        
    
    
                        header("Location: $url");
                        
                    }

                    

                } else {
                    //Algún campo está incompleto
                    $url = $url . "/views/login/registro.php?error=1";

                    if ($_POST['nombre']!="") {
                        $url = $url . "&nombre=". $_POST['nombre'];
                    }
                    if ($_POST['apellidos']!="") {
                        $url = $url . "&apellidos=". $_POST['apellidos'];
                    }
                    if ($_POST['email']!="") {
                        $url = $url . "&email=". $_POST['email'];
                    }
                    if ($_POST['usuario']!="") {
                        $url = $url . "&usuario=". $_POST['usuario'];
                    }
                    


                    header("Location: $url");
                    

                }

                


                //header("Location: $url/views/login/registro.php");
    
            } else if (($_POST['respuesta'])==2) {
        
                header("Location: $url");
        
            } 
    
        } 

    }

}



?>