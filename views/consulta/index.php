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
</head>
<body>

<?php
$url = constant("URL");

?>


<br/>

<p style="font-size: 70px">mis Series</p>

<br/>
<a href="<?php echo $url . 'consulta'?>">Mis series</a>
<i class="bi bi-slash-lg"></i>
<a href="<?php echo $url . 'login/cerrar'?>">Cerrar sesión</a>
<i class="bi bi-slash-lg"></i>
<a href="<?php echo $url . 'consulta/nuevaSerie'?>">Nueva serie</a>

<br/><br/>


<table class="table">
  <thead class="thead-dark" style="background-color: black ; color: white">
    <tr>
      <th scope="col">Título</th>
      <th scope="col" style="text-align: right">Puntuación</th>
      <th scope="col" style="text-align: center">Plataforma</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>

    <?php

        foreach($this->series as $row){
            $serie = new Serie();
            $serie = $row;

            ?><tr></tr>

                <td><?php echo $serie->titulo ?></td>
                <td style="text-align: right"><?php echo number_format($serie->puntuacion, 2, '.', '');?></td>
                <td style="text-align: center">
                <?php 
                if(isset($serie->plataforma)) {
                    echo $serie->plataforma;
                } else {
                    echo "<h6 style='color: red'>No emitiéndose</h6>";
                }
                 ?></td>

                 
                <td><a href="<?php echo $url .'consulta/verSerie/' . $serie->titulo; ?>">+info</a></td>
            <?php


        }

        //echo constant("URL");

    ?>


  </tbody>
</table>




</body>
</html>