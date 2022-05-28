<?php

class Consulta extends Controller{

    function __construct(){
        parent::__construct();
        $this->view->series = [];

    }

    function render() {
        $series =  $this->model->get();
        //$series = "Hola";
        $this->view->series = $series;
        //$this->view->user = $_POST['usuario'];
        $this->view->render('consulta/index');
    }


    public function chekea ($param = null) {

        //valida el formulario
        if(isset($_POST['enviar'])) {

            $titulo = $_POST['titulo'];
            $fecha = $_POST['fecha'];
            $temporadas = isset($_POST['temporadas']) ? $_POST['temporadas'] : 1;
            $plataforma = $_POST['plataforma'];
            $archivo = ($_POST['archivo']=="") ? "https://dummyimage.com/350x525/000000/ffffff&text=Imagen+por+defecto" : $_POST['archivo'];
            $generos = isset($_POST['generos']) ? $_POST['generos'] : "";
            $argumento = $_POST['argumento'];


            $errorEmpty = false;

            $series = $this->model->getSeries();

            if(empty($titulo) || empty($fecha) || empty($argumento) || empty($temporadas)) {
                echo "<span style='color:red'>Llena todos los campos!</span>";
                $errorEmpty = true;

                //comprueba que no se muestre el mensaje de error de que la base de datos ya tiene esa serie
                ?>
                    <script>

                        var error = document.getElementById("error");

                        error.style.display = "none";

                    </script>
                <?php

            } else if (in_array($titulo,$series)) {
                //La serie ya está en la base de datos
                ?>
                    <script>

                        var error = document.getElementById("error");

                        error.style.display = "flex";

                    </script>
                <?php

            } else {

                if ($this->model->addSerie(['titulo' => $titulo, 'fecha' => $fecha, 'temporadas' => $temporadas,'argumento' => $argumento, 'plataforma' => $plataforma, 'poster' => $archivo])) {

                    echo "<span style='color:green'>Serie añadida con éxito!</span>";

                    //comprueba que no se muestre el mensaje de error de que la base de datos ya tiene esa serie
                ?>
                    <script>

                        var error = document.getElementById("error");

                        error.style.display = "none";

                    </script>
                <?php

                    $serie = $this->model->getById($titulo);

                    

                    //comprueba que hemos añadido algun genero a la serie
                    if ($generos!="") {

                        //crea la relación entre la nueva serie y los generos
                        foreach ($generos as &$genero) {

                            if ($genero!="nuevo") {
                                $this->model->add(['ids' => $serie->id, 'genero' => $genero]);
                            }
                        }
    
                        //si hemos pulsado la opción de nuevo género nos redirige al gestionador
                        if (in_array("nuevo",$generos)) {
    

                            ?>

                            <script>

                                var misseries = "<?php echo constant("URL"); ?>";

                                var serie = "<?php echo $titulo; ?>";

                                var url = misseries + "consulta/actualizarSerie/" + serie;
                                
                                window.location.href= url ;
                                
                            </script>

                            <?php
    
                        }

                    }
                    

                } else {
                    echo "<span style='color:red'>Error con la base de datos</span>";
                }

                

            }

        } 
        
        
            



        //comprueba que hayamos pulsado el buton de cancelar o el de enviar y nos redirige
        if(isset($_POST['respuesta'])) {

            if(($_POST['respuesta'])==1) {
    
                echo "adios";
    
            } else if(($_POST['respuesta'])==2) {
    
                $series =  $this->model->get();
                $this->view->series = $series;
                $this->view->render('consulta/index');
    
            }
    
        }
    }

    function verSerie($param = null){

        $titulo = $param[0];
        $rating = isset($param[1]) ? $param[1] : "";
        $serie = $this->model->getById($titulo);

        if ($rating != "") {

            $this->model->updateRating(['titulo' => $titulo, 'puntuacion' => ($rating+1)]);

        }

        $this->view->serie = $serie;
        $this->view->render('consulta/detalle');

    }

    function actualizarSerie($param = null){

        $titulo = $param[0];
        $serie = $this->model->getById($titulo);
        $generos = $this->model->getGeneros();

        $this->view->serie = $serie;
        $this->view->generos = $generos;
        $this->view->mensaje = "";

        $this->view->render('consulta/gestiona');

    }

    function editarSerie($param = null){

        $titulo = $param[0];
        $serie = $this->model->getById($titulo);
        $generos = $this->model->getGeneros();

        $this->view->serie = $serie;
        $this->view->generos = $generos;
        $this->view->mensaje = "";

        $this->view->render('consulta/edita');

    }

    function nuevaSerie($param = null) {

        $titulo = $param[0];

        $generos = $this->model->getGeneros();

        $this->view->generos = $generos;
        $this->view->mensaje = "";

        $this->view->render('consulta/nueva');

    }

    function updateSerie($param = null) {

        $titulo = $param[0];
        $serie = $this->model->getById($titulo);

        $fecha = $_POST['fecha'];
        $temps = $_POST['temps'];
        $punt = $_POST['punt'];
        $argu = $_POST['argu'];

        if($this->model->update(['titulo' => $titulo, 'fecha' => $fecha, 'temporadas' => $temps,'puntuacion' => $punt,'argumento' => $argu])){

            $serie->fecha = $fecha;
            $serie->temporadas = $temps;
            $serie->puntuacion = $punt;
            $serie->argumento = $argu;

            $this->view->serie = $serie;
            $this->view->mensaje = "Serie actualizada correctamente";

        } else {

                $this->view->mensaje = "Error al actualizar la serie";

        }

        $this->view->render('consulta/edita');

    }

    function deleteGenero($param = null) {

        $titulo = $param[0];
        $genero = isset($param[1]) ? $param[1] : "";
        $serie = $this->model->getById($titulo);
        $generos = $this->model->getGeneros();

        if($this->model->delete(['ids' => $serie->id, 'genero' => $genero])) {

            $serie = $this->model->getById($titulo);
            $this->view->serie = $serie;
            $this->view->generos = $generos;
            $this->view->mensaje = "Género borrado correctamente";


        }   else {

                $this->view->mensaje = "Error al borrar el género";

        }

        $this->view->render('consulta/gestiona');

    }

    function addGenero($param = null) {

        $titulo = $param[0];
        $genero = isset($_POST['genero']) ? $_POST['genero'] : "default";
        $serie = $this->model->getById($titulo);
        $generos = $this->model->getGeneros();

        //comprueba que queramos añadir un genero nuevo y que el selector de generos esté vacío
        if (isset($_POST['nuevogen'])&&(($_POST['genero'])=="nada")&&$_POST['nuevogen']!="") {

            //inserta el nuevo genero en la base de datos.

            if ($this->model->newGenero(['ids' => $serie->id, 'genero' => $_POST['nuevogen']])) {

                $serie = $this->model->getById($titulo);
                $this->view->serie = $serie;
                $this->view->generos = $this->model->getGeneros();
                $this->view->mensaje = "Género añadido a la base de datos con éxito";

            } else {

                $serie = $this->model->getById($titulo);
                $this->view->serie = $serie;
                $this->view->generos = $generos;
                $this->view->mensaje = "Error al insertar género en la base de datos";

            }

            $this->view->render('consulta/gestiona');

        } else {

            //entra para imprimir por pantalla el nuevo formulario para generar un nuevo genero
            if ($genero == "nuevo") {

                $serie = $this->model->getById($titulo);
                $this->view->serie = $serie;
                $this->view->generos = $generos;
                $this->view->nuevo = true;
                $this->view->mensaje = "nuevo";
    
                $this->view->render('consulta/gestiona');
    
            } else if ($genero != "nada"){
    
                if($this->model->add(['ids' => $serie->id, 'genero' => $genero])) {
    
                    $serie = $this->model->getById($titulo);
                    $this->view->serie = $serie;
                    $this->view->generos = $generos;
                    $this->view->mensaje = "Género añadido correctamente";
        
                }   else {
        
                        $this->view->serie = $serie;
                        $this->view->mensaje = "Error al añadir el género";
        
                }
        
                $this->view->render('consulta/gestiona');
    
            } else {

                $serie = $this->model->getById($titulo);
                $this->view->serie = $serie;
                $this->view->generos = $generos;
                $this->view->mensaje = "Por favor elija un género antes de pulsar añadir";

                $this->view->render('consulta/gestiona');

            }

        }
        
    }


}



?>