<?php
	header('Content-Type: text/html; charset=utf-8');
?>

<?php
	session_start();
	include_once("conexao.php");
?>

<?php
/*	session_start();
	$email = $_SESSION['email'];
	if(!isset($_SESSION['email']) || !isset($_SESSION['senha'])){
		header("Location:login.php");
		exit;
	} else {
		echo "$email está logado";
	}*/
?>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link href="css/default.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
    <link href="css/foundation.css" rel="stylesheet">
	<title>Consultar FAF</title>	
</head>
<body>
	<!-- Menu superior -->
	<div class="top-bar" id="top-bar">
	  <div class="top-bar-left">
		<ul class="dropdown vertical medium-horizontal menu"> 
		  <li class="menu-text">Serviço Central de Óbitos - OnLine </li>
		  <li><a href="#"></a></li>
		  <li><a href="#"></a></li>
		</ul>
	  </div>
	  <div class="top-bar-right">
		<ul class="dropdown vertical medium-horizontal menu">
		  <li><a href="faf.php">Cadastrar FAF</a></li>
		  <li><a href="consultarfaf.php">Imprimir FAF</a></li>
		  <li><a href="funerarias.php">Cadastrar Funerárias</a></li>
		  <li><a href="consultarfunerarias.php">Consultar Funerárias</a></li>
		  <li><a class="button" href="logout.php">Sair</a></li>
		</ul>
	  </div>
	</div>




<form class="faf" name="imprimirfaf" method="post" action="imprimirfaf.php" >

<ul>
	<center><h1>IMPRESSÃO DE FAF!</h1></center>
	<li>
		<input type="text" id="falecido" name="falecido" class="field-style field-full align-none" placeholder="Digite o nome do falecido para imprimir a FAF!" />
	</li>
	<li>	
		<input class="button" type="submit" value="Consultar" />
	</li>
</ul>
</form>

</body>
</html>
