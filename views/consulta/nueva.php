<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<?php echo constant("URL");?>public/css/login.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/bootbox.js/4.4.0/bootbox.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>

    
    <script src="<?php echo constant("URL");?>public/js/script.js"></script>

</head>
<body>
    
<?php $url = constant("URL");?>

<br/>


<div class="login-form" style="width: 50%">
    <form action="<?php echo $url . "consulta/chekea";?>" method="post" id="formulario">
        <h2 class="text-center">mis Series</h2> 
        <input type="hidden" name="url" id="url" value="<?php echo $url . "consulta/chekea";?>"/>      
        <div class="form-row">
            <!-- Input para titulo -->
            <div class="form-group col-md-7">
                <label for="titulo">Titulo</label>
                <input type="text" class="form-control" id="titulo">
                <p id="error" style="display: none;color:red">Esta serie ya está en nuestra base de datos</p>
            </div>
            <div class="col-md-1"></div>
            <!-- Input para fecha -->
            <div class="form-group col-md-4">
                <label for="fecha">Fecha de estreno</label>
                <input type="date" class="form-control" id="fecha">
            </div>
        </div>
        <div class="form-row">
            <!-- Input para temporadas -->
            <div class="form-group col-md-3">
                <label for="temporadas">Temporadas</label>
                <input type="number" class="form-control" id="temporadas" value="1">
            </div>
            <div class="col-md-1"></div>
            <!-- Input para plataforma -->
            <div class="form-group col-md-8">
                <label for="plataforma">Plataforma</label>
                <select id="plataforma" name="plataforma" class="form-control">
                    <option selected>Netflix</option>
                    <option>HBO</option>
                    <option>Amazon Prime</option>
                    <option>Movistar</option>
                    <option>Disney+</option>
                    <option>Apple TV</option>
                </select>
            </div>
        </div>
        <div class="form-row">
            <!-- Input para poster -->
            <div class="form-group col-md-12">
                <label for="poster">Póster</label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="archivo" accept="image/*">
                    <label class="custom-file-label" for="archivo">Selecciona archivo de imagen</label>
                </div>
            </div>
        </div>
        <div class="form-row">
            <!-- Input para géneros -->
            <div class="form-group col-md-12">
                <label for="generos">Géneros</label>
                <select name="generos" id="generos" class="form-control" multiple>
                <?php
                    foreach($this->generos as $genero){

                        ?>

                            <option value="<?php echo $genero?>"><?php echo $genero?></option>

                            <?php

                    }

                ?>
                <option value="nuevo" >Nuevo género</option>
                </select>
            </div>
        </div>
        <div class="form-row">
            <!-- Input para argumento -->
            <div class="form-group col-md-12">
                <label for="argumento">Argumento</label>
                <textarea class="form-control" name="argumento" id="argumento" rows="5"></textarea>
            </div>
        </div>

        <p class="form-message"></p>
        
        <div class="trans text-center">
            <button type="submit" id="enviar" name="respuesta" value="1" style="width: 25%" class="btn btn-primary">Entrar</button>
            <button type="submit" name="respuesta" value="2" style="width: 25%" class="btn btn-danger">Cancelar</button>
        </div>
        
        
        
    </form>

</div>


</body>
</html>