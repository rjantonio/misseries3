<?php    

include __DIR__ . '/../../config/config.php';
$url = substr(constant("URL"), 0, -15);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<?php echo $url ?>public/css/login.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<?php    


    /* if(isset($_POST['respuesta'])) {

        if(($_POST['respuesta'])==1){

        } else if (($_POST['respuesta'])==2) {
    
            header("Location: $url");
    
        } 

    }  */

    
    

?>

<div class="login-form">
    <form action="<?php echo $url ?>login/creaUsuario" method="post">
        <h2 class="text-center">mis Series</h2>       
        <div class="form-group">
            <input type="text" class="form-control" name="nombre" value="<?php if(isset($_GET['nombre'])) echo $_GET['nombre'] ?>" placeholder="Nombre">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="apellidos" value="<?php if(isset($_GET['apellidos'])) echo $_GET['apellidos'] ?>" placeholder="Apellidos">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="email" value="<?php if(isset($_GET['email'])) echo $_GET['email'] ?>" placeholder="Email">
        </div>
        <div class="form-group">
            <input type="text" class="form-control" name="usuario" value="<?php if(isset($_GET['usuario'])) echo $_GET['usuario'] ?>" maxlength="10" placeholder="Nombre de usuario">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="pass" maxlength="10" placeholder="Contraseña">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="confpass" maxlength="10" placeholder="ConfContraseña">
        </div>
        <div class="btn-block text-center"> <!-- text-center -->
            <button type="submit" name="respuesta" value="1" style="width: 49%" class="btn btn-primary">Entrar</button>
            <button type="submit" name="respuesta" value="2" style="width: 49%" class="btn btn-danger">Cancelar</button>
        </div>
        
        <?php    

            /* if(isset($error)){
                echo "Error en el login";
            } */

            if (isset($_GET["error"])) {
                if ($_GET["error"]==2) {
                    echo "Las contraseñas no coinciden";
                } else {
                    echo "Algún campo está incompleto";
                }
                
            }
            /* if(isset($GLOBALS['nombre'])){
                var_dump($GLOBALS['nombre']);
            } */
            
            

        ?>
        
    </form>
</div>

</body>
</html>