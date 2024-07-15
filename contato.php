<?php
	header('Content-Type: text/html; charset=utf-8');
?>

<?php
	session_start();
	include_once("conexao.php");
?>

<?php
	/*session_start();
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
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="content-Type" content="text/html; charset=iso-8859-1" /> 
	<link href="css/default.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/jquery-ui.min.css">
	<link href="css/foundation.css" rel="stylesheet">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<title>Contato</title>
<body><center>
	<!-- Menu superior -->
	<div class="top-bar" id="top-bar">
	  <div class="top-bar-left">
		<ul class="dropdown vertical medium-horizontal menu"> 
		  <li class="menu-text">Serviço Central de Óbitos - OnLine</li>
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
		  <li><a href="contato.php">Contato</a></li>
		  <li><a class="button" href="logout.php">Sair</a></li>
		</ul>
	  </div>
	</div>
   <h2>Contato</h2>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="mensagem">Mensagem:</label>
        <textarea id="mensagem" name="mensagem" required></textarea><br><br>

        <input type="submit" value="Enviar">
    </form>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $nome = htmlspecialchars($_POST['nome']);
        $email = htmlspecialchars($_POST['email']);
        $mensagem = htmlspecialchars($_POST['mensagem']);

        $to = 'informatica@joacaba.sc.gov.br';
        $subject = 'Mensagem de Contato';
        $message = "Nome: $nome\nEmail: $email\nMensagem:\n$mensagem";
        $headers = "From: $email\r\n";
        $headers .= "Reply-To: $email\r\n";
        $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";

        if (mail($to, $subject, $message, $headers)) {
            echo '<p>Mensagem enviada com sucesso!</p>';
        } else {
            echo '<p>Erro ao enviar a mensagem.</p>';
        }
    }
    ?>
</body>
</html>
