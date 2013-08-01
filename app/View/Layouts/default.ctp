<!DOCTYPE html>
<html charset="pt-BR" dir="ltr">
<head>
	<meta charset="UTF-8">
	<title>Ben Trovato - Handmade Eyewear</title>
	
	<!-- Favicon -->
	<link rel="shortcut icon" href="<?php echo $this->Html->url('/img/favicon.ico'); ?>">

	<!-- CSS -->
	<?php echo $this->Html->css('/bootstrap/css/bootstrap.min.css'); ?>
	<?php echo $this->Html->css('http://fonts.googleapis.com/css?family=Ubuntu:300,400'); ?>
	<?php echo $this->Html->css('default.css'); ?>

	<!-- JS -->
	<?php echo $this->Html->script('jquery-1.10.2.min.js'); ?>
	<?php echo $this->Html->script('jquery-migrate-1.2.1.min.js'); ?>
	<?php echo $this->Html->script('/bootstrap/js/bootstrap.min.js'); ?>
	<?php echo $this->Html->script('default.js'); ?>
</head>
<body>

	<div class="container">

		<header>
			<div class="row">

				<a id="logo" class="span5" href="<?php echo $this->Html->url('/'); ?>">
					<?php echo $this->Html->image('logo.png'); ?>
				</a> <!-- #logo -->

				<div id="header-meta" class="span4 offset3">
					
					<a href="#" class="pull-right verde" id="btn-carrinho"><?php echo $this->Html->image('oculos-carrinho.jpg'); ?> [0 armações]</a> <!-- #btn-carrinho -->

					<a href="#" class="pull-right" id="btn-login">LOGIN</a> <!-- #btn-login -->

					<div class="clear clearfix"></div>

					<p id="slogan">
						GRÁTIS <span class="verde">frete, home try-on & retorno</span>
					</p> <!-- #slogan -->

					<div class="clear clearfix"></div>

					<a href="http://www.facebook.com/byBenTrovato" target="_blank" class="btn-rede-social">
						<?php echo $this->Html->image('icone-facebook.png'); ?>
					</a> <!-- .btn-rede-social -->

					<a href="http://twitter.com/byBenTrovato" target="_blank" class="btn-rede-social">
						<?php echo $this->Html->image('icone-twitter.png'); ?>
					</a> <!-- .btn-rede-social -->

					<a href="http://instagram.com/bybentrovato" target="_blank" class="btn-rede-social">
						<?php echo $this->Html->image('icone-instagram.png'); ?>
					</a> <!-- .btn-rede-social -->

					<a href="http://pinterest.com/bybentrovato" target="_blank" class="btn-rede-social">
						<?php echo $this->Html->image('icone-pinterest.png'); ?>
					</a> <!-- .btn-rede-social -->

				</div> <!-- #header-meta -->

			</div> <!-- .row -->

			<div class="row">
				
				<nav id="menu-principal">
					
					<ul class="span4">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Feminino <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Grau</a>
								</li>
								<li>
									<a href="#">Solar</a>
								</li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">Masculino <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li>
									<a href="#">Grau</a>
								</li>
								<li>
									<a href="#">Solar</a>
								</li>
							</ul>
						</li>
					</ul>

					<ul class="span4 offset4">
						<li>
							<a href="#">Sobre</a>
						</li>
						<li>
							<a href="#">Preço</a>
						</li>
						<li>
							<a href="#">FAQ</a>
						</li>
						<li>
							<a href="#">Contato</a>
						</li>
					</ul>

				</nav> <!-- #menu-principal -->
			</div>
		</header>

		<?php echo $this->Session->flash(); ?>

		<?php echo $this->fetch('content'); ?>
	</div> <!-- .container -->
		
</body>
</html>
