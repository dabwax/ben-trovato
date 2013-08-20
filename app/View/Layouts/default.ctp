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
	<?php echo $this->Html->script('socialite.min.js'); ?>
	<?php echo $this->Html->script('jquery.form.min.js'); ?>
	<?php echo $this->Html->script('jquery.maskedinput.min.js'); ?>
	<?php echo $this->Html->script('jquery.hoverIntent.minified.js'); ?>
	<?php echo $this->Html->script('jquery.colorbox-min.js'); ?>
	<?php echo $this->Html->script('https://stc.pagseguro.uol.com.br/pagseguro/api/v2/checkout/pagseguro.lightbox.js'); ?>
	<?php echo $this->Html->script('default.js'); ?>
	<script type="text/javascript">
		$(document).ready(function() {
			$(".colorbox-iframe").colorbox({
				iframe: true,
				width: 890,
				height: 630,
				overlayClose: false
			});

			$(".colorbox-image").colorbox({
				photo: true,
				overlayClose: false
			});

			$(".colorbox-armacao").colorbox({
				iframe: true,
				width: 860,
				height: 560,
				overlayClose: false
			});
		});
	</script>

	<?php echo $configuracoes['google_analytics']; ?>
</head>
<?php echo $configuracoes['clicktale_before_body_tag']; ?>
<body>

<?php if(!AuthComponent::user()) { ?>
<!-- Modal do Botão de Login -->
<div id="modal-login" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 style="text-align: left; font-size: 24px;">LOGIN</h3>
	</div> <!-- .modal-header -->

	<div class="modal-body form-login">
		<?php echo $this->Form->create('User', array('class' => 'form-horizontal', 'url' => array('controller' => 'users', 'action' => 'login') ) ); ?>

		<div class="control-group">
			<?php echo $this->Form->input('username', array('div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
		</div>

		<div class="control-group">
			<?php echo $this->Form->input('password', array('div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
		</div>

		<div class="control-group">
			<?php echo $this->Form->submit('Entrar', array('class' => 'btn btn-large btn-success', 'div' => array('class' => 'controls', 'style' => 'margin-left: 180px;') ) ); ?>
		</div>

		<?php echo $this->Form->end(); ?>
	</div> <!-- .modal-body -->

	<div class="modal-body hide form-add">

		<?php echo $this->Form->create('User', array('class' => 'form-horizontal form-criacao-de-conta', 'url' => array('controller' => 'users', 'action' => 'ajax_add') ) ); ?>

		<?php echo $this->element('user_form'); ?>

		<?php echo $this->Form->end(); ?>
	</div> <!-- .modal-body -->

	<div class="modal-body hide form-forgot">
		<?php echo $this->Form->create('User', array('class' => 'form-horizontal', 'url' => array('controller' => 'users', 'action' => 'ajax_forgot') ) ); ?>

		<div class="control-group">
			<?php echo $this->Form->input('Client.email', array('div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
		</div>

		<div class="control-group">
			<?php echo $this->Form->submit('Recuperar', array('class' => 'btn btn-large btn-success', 'div' => array('class' => 'controls', 'style' => 'margin-left: 180px;') ) ); ?>
		</div>

		<?php echo $this->Form->end(); ?>
	</div> <!-- .modal-body -->

	<div class="modal-footer" style="text-align: center !important;">

		<p class="label">
			<span>Não tem uma conta?</span>
			<a href="javascript:;" id="btn-cadastre-se" style="color: #FFF; text-decoration: underline;">clique aqui</a>.
		</p>

		<p class="label label-inverse">
			<span>Esqueceu sua senha?</span> 
			<a href="javascript:;" id="btn-esqueceu-sua-senha" style="color: #FFF; text-decoration: underline;">clique aqui</a>.
		</p>
	</div>

</div> <!-- #modal-login -->
<?php } ?>

	<div class="container">

		<header>
			<div class="row">

				<a id="logo" class="span5" href="<?php echo $this->Html->url('/'); ?>" style="position: relative; left: 22px; top: 10px;">
					<?php echo $this->Html->image('logo.png'); ?>
				</a> <!-- #logo -->

				<div id="header-meta" class="span6 offset1">
					
					<a href="<?php echo $this->Html->url( array('controller' => 'cart', 'action' => 'index') ); ?>" class="pull-right verde" id="btn-carrinho" style="font-size: 12px; margin-top: 19px;"><?php echo $this->Html->image('oculos-carrinho.jpg', array('style' => 'margin-left: 5px;') ); ?> [<?php echo count($orderItems); ?> <?php if(count($orderItems) > 1) { ?>armações<?php } else { ?>armação<?php } ?>]</a> <!-- #btn-carrinho -->

					<?php if(!AuthComponent::user()) { ?>

					<a href="#modal-login" role="button" data-toggle="modal" class="pull-right" id="btn-login" style="margin-top: 19px; font-size: 12px;">Login</a> <!-- #btn-login -->

					<?php } else { ?>

					<a href="<?php echo $this->Html->url( array('controller' => 'users', 'action' => 'logout') ); ?>" class="pull-right" id="btn-login" style="font-size: 11px; margin-top: 20px; margin-right: 14px;">(Sair)</a> <!-- #btn-login -->

					<a href="<?php echo $this->Html->url( array('controller' => 'users', 'action' => 'account') ); ?>" class="pull-right" id="btn-minha-conta" style="margin-top: 20px; font-size: 12px;">Olá, <?php echo AuthComponent::user('name'); ?>! Minha Conta</a>

					<?php } ?>

					<div class="clear clearfix"></div>

					<p id="slogan" style="font-size: 12px;">
						<span class="verde">FRETE GRÁTIS</span> todo o Brasil | <span class="verde">30 DIAS</span> para troca ou devolução
					</p> <!-- #slogan -->

					<div class="clear clearfix"></div>

					<a href="http://www.facebook.com/byBenTrovato" target="_blank" class="btn-rede-social" style="margin-right: 0px; position: relative; top: -4px;">
						<?php echo $this->Html->image('icone-facebook.png'); ?>
					</a> <!-- .btn-rede-social -->

					<a href="http://twitter.com/byBenTrovato" target="_blank" class="btn-rede-social" style="margin-right: 0px; position: relative; top: -4px;">
						<?php echo $this->Html->image('icone-twitter.png'); ?>
					</a> <!-- .btn-rede-social -->

					<a href="http://instagram.com/bybentrovato" target="_blank" class="btn-rede-social" style="margin-right: 0px; position: relative; top: -4px;">
						<?php echo $this->Html->image('icone-instagram.png'); ?>
					</a> <!-- .btn-rede-social -->

					<a href="http://pinterest.com/bybentrovato" target="_blank" class="btn-rede-social" style="margin-right: 0px; position: relative; top: -4px;">
						<?php echo $this->Html->image('icone-pinterest.png'); ?>
					</a> <!-- .btn-rede-social -->

				</div> <!-- #header-meta -->

			</div> <!-- .row -->

			<div class="row">
				
				<nav id="menu-principal">
					
					<ul class="span4">
						<li class="dropdown" style="margin-left: 28px;">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000">Feminino</a>
							<ul class="dropdown-menu">
								<li>
									<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'all', 'feminino', 'grau' ) ); ?>" style="border-bottom: 1px solid #CCC; line-height: 22px;">
										Grau

										<div class="clear clearfix"></div>

										<?php echo $this->Html->image('FEMININO_GRAU.png', array('style' => 'width: 80px;') ); ?>

										<div class="clear clearfix"></div>
									</a>
								</li>
								<li>
									<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'all', 'feminino', 'solar' ) ); ?>" style="line-height: 22px;">
										Solar

										<div class="clear clearfix"></div>

										<?php echo $this->Html->image('FEMININO_SOLAR.png', array('style' => 'width: 80px;') ); ?>

										<div class="clear clearfix"></div>
									</a>
								</li>
							</ul>
						</li>
						<li class="dropdown" style="margin-left: 62px;">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000">Masculino</a>
							<ul class="dropdown-menu">
								<li>
									<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'all', 'masculino', 'grau' ) ); ?>" style="border-bottom: 1px solid #CCC; line-height: 22px;">
									Grau

									<div class="clear clearfix"></div>

									<?php echo $this->Html->image('MASCULINO_GRAU.png', array('style' => 'width: 80px;') ); ?>

									<div class="clear clearfix"></div>
									</a>
								</li>
								<li>
									<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'all', 'masculino', 'solar' ) ); ?>" style="line-height: 22px;">
										Solar

									<div class="clear clearfix"></div>

									<?php echo $this->Html->image('MASCULINO_SOLAR.png', array('style' => 'width: 80px;') ); ?>

										<div class="clear clearfix"></div>
									</a>
								</li>
							</ul>
						</li>
					</ul>

					<ul class="span4 offset4" style="position: relative; left: 6px;">
						<li>
							<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'quem-somos' ) ); ?>" style="font-size: 11px;">Sobre</a>
						</li>
						<li>
							<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'preco' ) ); ?>" style="font-size: 11px;">Preço</a>
						</li>
						<li>
							<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'faq' ) ); ?>" style="font-size: 11px;">FAQ</a>
						</li>
						<li>
							<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'contato' ) ); ?>" style="font-size: 11px;">Contato</a>
						</li>
					</ul>

				</nav> <!-- #menu-principal -->
			</div>
		</header>

		<?php echo $this->Session->flash(); ?>

		<?php echo $this->fetch('content'); ?>

		<footer>
			<div class="row">

				<div class="span2" style="position: relative; left: 0px; width: 105px;">
					<h3 class="footer-title">Perguntas</h3>
					<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'preco') ); ?>">Preço</a>
					<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'faq') ); ?>#troca-e-devolucao">Troca e Devolução</a>
					<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'faq') ); ?>">FAQ</a>
				</div>

				<div class="span2" style="position: relative; left: 20px; width: 157px;">
					<h3 class="footer-title">Compre</h3>
					<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'all', 'masculino', 'grau') ); ?>">Óculos de Grau Masculino</a>
					<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'all', 'feminino', 'grau') ); ?>">Óculos de Grau Feminino</a>
					<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'all', 'masculino', 'solar') ); ?>">Óculos de Sol Masculino</a>
					<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'all', 'feminino', 'solar') ); ?>">Óculos de Sol Feminino</a>
				</div>

				<div class="span2" style="position: relative; left: 38px; width: 157px;">
					<h3 class="footer-title">Sobre</h3>
					<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'quem-somos') ); ?>">Quem Somos</a>
					<a href="<?php echo $this->Html->url( array('controller' => 'testemonials', 'action' => 'index') ); ?>">Depoimentos</a>
					<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'contato') ); ?>">Entre em Contato</a>
					<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'termos-de-uso') ); ?>">Termos de Uso e Condições</a>
				</div>

				<div class="span2" style="position: relative; left: 66px;">
					<h3 class="footer-title">Siga</h3>
					<a href="http://www.facebook.com/byBenTrovato">Facebook</a>
					<a href="http://twitter.com/byBenTrovato">Twitter</a>
					<a href="http://instagram.com/bybentrovato">Instagram</a>
					<a href="http://pinterest.com/bybentrovato">Pinterest</a>
				</div>

				<div class="span4 ultimo-bloco-footer">

					<a class="socialite facebook-like" data-href="http://www.bentrovato.com.br/" data-send="false" data-layout="button_count" data-width="60" data-show-faces="false">
						Share on Facebook
					</a>

					<a href="mailto:contato@bentrovato.com.br" style="float: left; display: inline; width: 100%; margin-left: 16px; color: #999; text-decoration: none; font-size: 13px; margin-top: 3px;">
						<?php echo $this->Html->image('email_verde.png', array('style' => 'width: 22px;') ); ?>
						contato@bentrovato.com.br
					</a>

					<div class="clear clearfix"></div>
					
					<div id="newsletter-footer">
						<p style="margin-bottom: 4px; font-size: 13px;">Mantenha-se informado!</p>

						<?php echo $this->Form->create('Subscription', array('id' => 'formNewsletter', 'style' => 'margin-bottom: 0px;', 'url' => array('controller' => 'subscriptions', 'action' => 'ajax_add') ) ); ?>

						<div class="input-append">
							<?php echo $this->Form->input('email', array('div' => false, 'label' => false, 'style' => 'width: 180px;') ); ?>
							<?php echo $this->Form->submit('Enviar', array('class' => 'btn', 'label' => false, 'div' => false, 'style' => 'background: #A4C400; text-transform: uppercase; color: #FFF; text-shadow: none;') ); ?>
						</div>

						<p class="verde" style="font-size: 12px; margin-bottom: 2px;">
							Receba alertas de estilos e ofertas especiais
						</p>

						<?php echo $this->Form->end(); ?>
					</div> <!-- #newsletter-footer -->

				</div> <!-- .ultimo-bloco-footer -->

				<div class="clear clearfix"></div>

			</div>

			<div class="row" style="margin-top: 30px; border-top: 1px solid #000; margin-bottom: 14px; position: relative;">
				
				<p class="copyright span4" style="font-size: 12px; margin-top: 12px;">
					Ben Trovato <?php echo date('Y'); ?> - Todos os Direitos Reservados.
				</p> <!-- .copyright -->

				<p class="span6" style="font-size: 11px; position: absolute; left: 0px; top: 34px;">
					CENTRO ÓTICO AMÉRICAS 700 LTDA – CNPJ: 05.050.375/0001-80
				</p>

				<p class="infos-seguranca pull-right span6 text-right" style="margin-top: 10px;">
					<?php echo $this->Html->image('formas-de-pagamento.jpg', array('class' => '', 'style' => 'display: inline-block;') ); ?>
				</p>

			</div>
		</footer>
	</div> <!-- .container -->
		
</body>
<?php echo $configuracoes['click_tale_after_body_tag']; ?>
</html>
