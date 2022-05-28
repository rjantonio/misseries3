<?php    

    if(isset($_POST['respuesta'])) {

        if(($_POST['respuesta'])==1) {

            echo "adios";

        } else if(($_POST['respuesta'])==2) {

            $consulta = new Consulta;

            $consulta->loadModel("consulta");

            $consulta->detalle();

        }

    }
    

?>