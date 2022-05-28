<?php

//define('URl', 'http://localhost/ejercicios/recuperacion/misseries/');

$url = substr('http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'], 0, -9);
define('URL', $url );
//define('URL', 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']);

define('HOST', 'localhost');
define('DB', 'misseries');
define('USER', 'root');
define('PASSWORD', "");
define('CHARSET', 'utf8mb4');

?>