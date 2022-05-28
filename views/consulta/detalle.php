<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<?php echo constant("URL") ?>public/css/default.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
    


<br/>

<p style="font-size: 70px">mis Series</p>

<br/>

<a href="<?php echo constant("URL") ?>consulta">Mis series</a>

<br/><br/>



<div id="serie">
    <div id="imagen">

        <img src="<?php echo $this->serie->poster ?>" alt="" height="500px">

    </div>
    
    <div id="texto">

        <h2><?php echo $this->serie->titulo ?></h2>
        <p><?php echo $this->serie->plataforma ?></p>
        <br/>
        <p>
            <b>Fecha de estreno:</b>
            <class id="texdere">
                <?php 
                    //echo $this->serie->fecha 
                    $fecha1 = explode("-",  $this->serie->fecha );
                    
                    switch($fecha1[1]) {
                        case 1:
                            $fecha1[1] = "enero";
                            break;
                        case 2:
                            $fecha1[1] = "febrero";
                            break;
                        case 3:
                            $fecha1[1] = "marzo";
                            break;
                        case 4:
                            $fecha1[1] = "abril";
                            break;
                        case 5:
                            $fecha1[1] = "mayo";
                            break;
                        case 6:
                            $fecha1[1] = "junio";
                            break;
                        case 7:
                            $fecha1[1] = "julio";
                            break;
                        case 8:
                            $fecha1[1] = "agosto";
                            break;
                        case 9:
                            $fecha1[1] = "septiembre";
                            break;
                        case 10:
                            $fecha1[1] = "octubre";
                            break;
                        case 11:
                            $fecha1[1] = "noviembre";
                            break;
                        case 12:
                            $fecha1[1] = "diciembre";
                            break;
                    }
                    echo $fecha1[2] . " de " . $fecha1[1] . " del " . $fecha1[0];
                ?>
            </class>
        </p>
        <p>
            <b>Temporadas:</b>
            <class id="texdere">
                <?php echo $this->serie->temporadas ?>
            </class>
        </p>
        <p>
            <b>Puntuación:</b>
            <class id="texdere">
                <?php //echo number_format($this->serie->puntuacion, 2, '.', '');?>



                
                    <i class="fa fa-star fa-2x" data-index="0" style="font-size: 3vh"></i>
                    <i class="fa fa-star fa-2x" data-index="1" style="font-size: 3vh"></i>
                    <i class="fa fa-star fa-2x" data-index="2" style="font-size: 3vh"></i>
                    <i class="fa fa-star fa-2x" data-index="3" style="font-size: 3vh"></i>
                    <i class="fa fa-star fa-2x" data-index="4" style="font-size: 3vh"></i>
                    <i class="fa fa-star fa-2x" data-index="5" style="font-size: 3vh"></i>
                    <i class="fa fa-star fa-2x" data-index="6" style="font-size: 3vh"></i>
                    <i class="fa fa-star fa-2x" data-index="7" style="font-size: 3vh"></i>
                    <i class="fa fa-star fa-2x" data-index="8" style="font-size: 3vh"></i>
                    <i class="fa fa-star fa-2x" data-index="9" style="font-size: 3vh"></i>


                    <script>

                        //mañana hacer que la puntuacion entre en la bd

                        var ratedIndex = -1;

                        $(document).ready(function() {

                            resetStarColors();

                            $('.fa-star').mouseover(function () {
                                resetStarColors();


                                var currentIndex = parseInt($(this).data('index'));

                                for (var i=0; i <= currentIndex; i++) {
                                    $('.fa-star:eq('+i+')').css('color','yellow');
                                }
                            });

                            $('.fa-star').mouseleave(function () {
                                resetStarColors();

                                if (ratedIndex != -1) {

                                    for (var i=0; i <= ratedIndex; i++) {
                                    $('.fa-star:eq('+i+')').css('color','yellow');
                                }

                                }
                            });

                            $('.fa-star').on('click', function () {

                                //guarda la puntuación que el usuario ha marcado.

                                ratedIndex = parseInt($(this).data('index'));

                                //**He intentado pasar la variable de js a php de mil formas y no funcionaban, las dejo aquí comentadas por si acaso, al final la que funcionó ha sido este */

                                //paso la variable retedIndex a php mediante ajax

                                $.ajax({
                                    //context: this,
                                    type: "POST",
                                    url: "" ,
                                    data: {puntuacion: 2},
                                    success: function(data)
                                    {
                                        var url = "<?php echo constant("URL"); ?>";
                                        var serie = "<?php echo $this->serie->titulo; ?>";
                                        location.href = url + "consulta/verSerie/"+ serie + '/' + ratedIndex;
                                    }
                                });

                                //paso la variable mediante post con jquery a php

                                //$.post("action.php", {coche: "ford"});



                                //crea una cookie que dura 10 días para poder almacenar el valor que ha marcado el usuario.

                               /*  createCookie("punt", ratedIndex, 10);

                                function createCookie(nombre, valor, dias) {
                                    var expira;
                                    if (dias) {
                                        var date = new Date();
                                        date.setTime(date.getTime() + (dias * 24 * 60 * 60 * 1000));
                                        expira = ";expires=" + date.toGMTString();
                                    } else {
                                        expira = ";expires = -3600";
                                    }

                                    document.cookie = nombre + "=" + valor + "; path=/;";
                                    console.log(ratedIndex);
                                } */
                

                                //paso la variable con xhr

                                //const xhr = new XMLHttpRequest();

                                /* xhr.onload = function () {
                                    //const serverResponse
                                }

                                xhr.open("POST","",true);
                                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                                xhr.send("name=hola");

                                
                                 */


                            });

                        });

                        function resetStarColors() {
                            $('.fa-star').css('color', 'black');
                        }

                    </script>
                



            </class>
        </p>
        
        <p>
            <?php echo $this->serie->argumento ?>
        </p>

        <br/>

        <div id="generos">
            <?php 

                foreach($this->serie->generos as $index => $aux) {

                        echo $aux;
                        if (!($index === array_key_last($this->serie->generos))) {
                            echo ", ";
                        }
    
                    }
                    
            ?>
        </div>
        
        

    </div>

    
    
</div>

<div id="opciones">
    <a href="<?php echo constant("URL"); ?>">Volver atrás</a>
    <i class="bi bi-slash-lg"></i>
    <a href="<?php echo constant("URL") . 'consulta/actualizarSerie/' . $this->serie->titulo; ?>">Gestionar géneros</a>
    <i class="bi bi-slash-lg"></i>
    <a href="<?php echo constant("URL") . 'consulta/editarSerie/' . $this->serie->titulo; ?>">Editar serie</a>
</div>


</body>
</html>