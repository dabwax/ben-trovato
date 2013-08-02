<!DOCTYPE html>
<html lang="pt-BR" dir="ltr">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php echo $storeName; ?> - Administrador da Loja</title>

	<!-- CSS -->
	<?php echo $this->Html->css('bootstrap.min.css'); ?>
	<?php echo $this->Html->css('bootstrap-glyphicons.css'); ?>
	<?php echo $this->Html->css('multi-select.css'); ?>

	<!-- JS -->
	<?php echo $this->Html->script('jquery-1.10.2.min.js'); ?>
	<?php echo $this->Html->script('jquery-migrate-1.2.1.min.js'); ?>
	<?php echo $this->Html->script('bootstrap.min.js'); ?>
	<?php echo $this->Html->script('jquery.multi-select.js'); ?>
	
	<style type="text/css">
		body {
			background: #A4C400;
		}
		.login {
			position: relative;
			margin: 0 auto;
			padding: 20px 20px 20px;
			width: 330px;
			background: white;
			border-radius: 3px;
			-webkit-box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
			box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
		}
		.login h1 {
			margin: -20px -20px 21px;
			line-height: 40px;
			font-size: 15px;
			font-weight: bold;
			color: #555;
			text-align: center;
			text-shadow: 0 1px white;
			background: #f3f3f3;
			border-bottom: 1px solid #cfcfcf;
			border-radius: 3px 3px 0 0;
			background-image: -webkit-linear-gradient(top, whiteffd, #eef2f5);
			background-image: -moz-linear-gradient(top, whiteffd, #eef2f5);
			background-image: -o-linear-gradient(top, whiteffd, #eef2f5);
			background-image: linear-gradient(to bottom, whiteffd, #eef2f5);
			-webkit-box-shadow: 0 1px whitesmoke;
			box-shadow: 0 1px whitesmoke;
		}
		.login p:first-child {
		margin-top: 0;
		}
		.login p {
margin: 20px 0 0;
}
.login input[type=text], .login input[type=password] {
width: 278px;
}
input[type=text], input[type=password] {
margin: 5px;
padding: 0 10px;
width: 200px;
height: 34px;
color: #404040;
background: white;
border: 1px solid;
border-color: #c4c4c4 #d1d1d1 #d4d4d4;
border-radius: 2px;
outline: 5px solid #eff4f7;
-moz-outline-radius: 3px;
-webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
}
input {
font-family: 'Lucida Grande', Tahoma, Verdana, sans-serif;
font-size: 14px;
}
.login p.submit {
text-align: right;
}
	</style>
</head>
<body>

	<div class="container" style="margin: 80px auto; width: 640px;">

		<?php echo $this->fetch('content'); ?>

	</div> <!-- .container -->

</body>
</html>