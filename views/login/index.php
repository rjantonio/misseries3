<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-uWxY/CJNBR+1zjPWmfnSnVxwRheevXITnMqoEIeG1LJrdI0GlVs/9cVSyPYXdcSF" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="public/css/login.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<?php
$url = constant("URL");


$userSession = new UserSession();
$user = new Usuario();

	if(isset($_SESSION['user'])){
		//echo "Hay sesión";
		//$userSession->closeSession();
        $user->setUser($userSession->getCurrentUser());
        header("Location: $url/consulta");
	}else if(isset($_POST['usuario']) && isset($_POST['password'])) {
		//echo "Validación de login";

		$userForm = $_POST['usuario'];
		$passForm = $_POST['password'];

		if($user->userExists($userForm, $passForm)){
			//echo "usuario validado";

			$userSession->setCurrentUser($userForm);
			$user->setUser($userForm);

            

			header("Location: $url");
		}else {
			//echo "nombre de usuario y/o contraseña errónea";

			$errorLogin = "Nombre de usuario y/o contraseña errónea";
			
		}

	}else {
		//echo "Hola";
		//header("Location: http://localhost/ejercicios/recuperacion/misseries/");
        /* unset($_SESSION['user']);
        $userSession->closeSession();
        header("Location: $url"); */
        
	}

?>


<div class="login-form">
    <form action="" method="post">
        <h2 class="text-center">mis Series</h2>       
        <div class="form-group">
            <input type="text" class="form-control" name="usuario" maxlength="10" placeholder="Nombre de usuario" required="required">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" name="password" maxlength="10" placeholder="Contraseña" required="required">
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block">Entrar</button>
        </div>
        <div class="clearfix">
            <a href="views/login/registro.php" class="pull-left">Crear usuario</a>
            <i class="bi bi-slash-lg"></i>
            <a href="#" class="pull-right">Recordar contraseña</a>
        </div>  
        
        <?php    

        /* echo __FILE__; 
        echo" <br>";
        echo constant("URL"); */

            if(isset($errorLogin)){
                echo $errorLogin;
            }

            if (isset($_GET["creado"])) {
                
                echo "Usuario creado correctamente";
                
            }

        ?>
        
    </form>
</div>

</body>
</html>