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
	<?php echo $this->Html->script('jquery.slides.min.js'); ?>
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

		<footer>
			<div class="row">

				<div class="span2">
					<h3 class="footer-title">Perguntas</h3>
					<a href="#">Preço</a>
					<a href="#">Garantia</a>
					<a href="#">Troca e Devolução</a>
					<a href="#">FAQ</a>
				</div>

				<div class="span2">
					<h3 class="footer-title">Comece</h3>
					<a href="#">Óculos de Grau</a>
					<a href="#">Masculino</a>
					<a href="#">Feminino</a>
					<a href="#">Óculos de Sol</a>
					<a href="#">Masculino</a>
					<a href="#">Feminino</a>
					<a href="#">Espelho Virtual</a>
				</div>

				<div class="span2">
					<h3 class="footer-title">Sobre</h3>
					<a href="#">Quem Somos</a>
					<a href="#">Depoimentos</a>
					<a href="#">Entre em Contato</a>
					<a href="#">Termos de Uso</a>
				</div>

				<div class="span2">
					<h3 class="footer-title">Siga</h3>
					<a href="#">Facebook</a>
					<a href="#">Twitter</a>
					<a href="#">Instagram</a>
					<a href="#">Pinterest</a>
				</div>

				<div class="span4">
					
					<div id="newsletter-footer">
						<p>Mantenha-se informado!</p>

						<?php echo $this->Form->create('Subscription', array('style' => 'margin-bottom: 12px;') ); ?>

						<div class="input-append">
							<?php echo $this->Form->input('email', array('div' => false, 'label' => false, 'style' => 'width: 180px;') ); ?>
							<?php echo $this->Form->submit('Enviar', array('class' => 'btn', 'label' => false, 'div' => false, 'style' => 'background: #A4C400; text-transform: uppercase; color: #FFF; text-shadow: none;') ); ?>
						</div>

						<p class="verde" style="font-size: 13px;">
							Receba alertas de estilos e ofertas especiais
						</p>

						<?php echo $this->Form->end(); ?>
					</div> <!-- #newsletter-footer -->
				</div>

			</div>
		</footer>
	</div> <!-- .container -->
		
</body>
</html>
