<div class="row">
	<div class="span8" id="fotos-do-oculos" style="margin-left: 0px;">
		<a href="<?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '820', 'url' => true, 'zc' => '0') ); ?>" class="colorbox-iframe">
			<?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '620', 'h' => '280'), array('id' => 'imagem-toggle') ); ?>
		</a>

		<div class="clear clearfix"></div>

		<p id="vistas-oculos" class="text-center">
			Vistas
			<a data-large="<?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '820', 'url' => true, 'zc' => '0') ); ?>" href="<?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '620', 'h' => '280', 'url' => true) ); ?>">01</a>
			<a data-large="<?php echo $this->Loja->imagem($glass['Glass']['photo_2'], array('w' => '820', 'url' => true, 'zc' => '0') ); ?>" href="<?php echo $this->Loja->imagem($glass['Glass']['photo_2'], array('w' => '620', 'h' => '280', 'url' => true) ); ?>">02</a>
		</p> <!-- #vistas-oculos -->

	</div> <!-- #fotos-do-oculos -->

	<div class="span4" id="informacoes-do-oculos">
		<h2 id="nome-do-oculos">
			<?php echo $glass['Glass']['name']; ?>
		</h2> <!-- #nome-do-oculos -->

		<h3 id="cor-do-oculos">
			<?php echo ucfirst($glass['Glass']['color2']); ?>
		</h3> <!-- #cor-do-oculos -->

		<div class="linha-com-titulo">
			<p class="preco">
				<?php $preco = explode(',', $this->Loja->preco($glass['Glass']['price'])); echo $preco[0]; ?>
			</p> <!-- .preco -->

			<hr />
		</div> <!-- .linha-com-titulo -->

		<ul id="vantagens-do-oculos">
			<li>
				<?php echo $this->Html->image('tick.png'); ?>
				Lentes de grau com antirreflexo
			</li>
			<li>
				<?php echo $this->Html->image('tick.png'); ?>
				Frete e devolução grátis
			</li>
			<li>
				<?php echo $this->Html->image('tick.png'); ?>
				Reembolso integral até 30 dias
			</li>
			<li class="cinza">
				* Consulte nossos parâmetros
			</li>
		</ul> <!-- #vantagens-do-oculos -->

		<a href="<?php echo $this->Html->url( array('action' => 'buy', $glass['Glass']['id']) ); ?>" id="btn-adicionar-ao-carrinho" class="btn btn-large btn-success colorbox-iframe">
			<i class="icon icon-shopping-cart icon-white"></i>
			Adicionar ao Carrinho
		</a> <!-- #btn-adicionar-ao-carrinho -->

		<div class="linha-com-titulo" style="margin-top: 10px;">
			<p class="texto">
				Prove antes de comprar
			</p> <!-- .texto -->
			<hr />
		</div> <!-- .linha-com-titulo -->

		<a href="<?php echo $this->Html->url( array('action' => 'fittingbox', $glass['Glass']['id']) ); ?>" id="btn-prove-virtualmente" class="btn btn-large btn-inverse colorbox-iframe">
			Prove Virtualmente
		</a> <!-- #btn-prove-virtualmente -->

	</div> <!-- #informacoes-do-oculos -->
</div>


<?php if(count($glassesWithOtherColors) > 0) { ?>
<div class="row">
	
	<div class="span12" style="margin-left: 0px;">
		
		<div class="linha-com-titulo" style="text-align: left;">
			<p class="texto" style="text-align: left; margin-left: 252px; text-transform: uppercase;">
				Outras Cores
			</p> <!-- .texto -->

			<hr />
		</div> <!-- .linha-com-titulo -->
	</div> <!-- .span12 -->
</div> <!-- .row -->

<div class="row">
	
	<div class="oculos-outras-cores span12" style="margin-left: 0px;">
		
		<?php foreach($glassesWithOtherColors as $glassColor) : ?>
			<a href="<?php echo $this->Html->url( array('action' => 'view', $glassColor['Glass']['id']) ); ?>">
				<?php echo $this->Loja->imagem($glassColor['Glass']['photo_1'], array('w' => '192', 'h' => '96') ); ?>
			</a>
		<?php endforeach; ?>
	</div> <!-- .oculos-outras-cores -->

</div> <!-- .row -->
<?php } ?>

<div class="row">
	<div class="span12" style="margin-left: 0px;">
		<hr class="linha" />
	</div>
</div>

<div class="row">
	<div class="span5" id="foto-efeito-hover" style="background: url('<?php echo $this->Loja->imagem($glass['Glass']['image_hover'], array('h' => '280', 'zc' => '0', 'url' => true) ); ?>'); margin-left: 0px; background-position-x: -723px;">

		<span class="shape shape-1"></span>
		<span class="shape shape-2"></span>
		<span class="shape shape-3"></span>
		<span class="shape shape-4"></span>
		<span class="shape shape-5"></span>

	</div> <!-- #foto-efeito-hover -->

	<script type="text/javascript">
		$(document).ready(function() {
			$("#foto-efeito-hover .shape").hover(function() {
				var div = $(this).parent();

				if($(this).hasClass('shape-1')) {
					div.css('background-position-x', '0px');
				}

				if($(this).hasClass('shape-2')) {
					div.css('background-position-x', '-360px');
				}

				if($(this).hasClass('shape-3')) {
					div.css('background-position-x', '-723px');
				}

				if($(this).hasClass('shape-4')) {
					div.css('background-position-x', '-1086px');
				}

				if($(this).hasClass('shape-5')) {
					div.css('background-position-x', '-1450px');
				}

			}, function() {
				var div = $(this).parent();

				div.css('background-position-x', '-723px');
			});
		});
	</script>

	<div class="span7" id="oculos-estilo-etc">
		<h2>O Estilo</h2>

		<div id="estilo-do-oculos">
			<?php echo $glass['Glass']['the_style']; ?>
		</div> <!-- #estilo-do-oculos -->

		<div class="clear clearfix"></div>

		<div class="span3 texto-caracteristicas" style="margin-left: 0px;">
			<p>CARACTERÍSTICAS DA ARMAÇÃO: <a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'caracteristicas-da-armacao') ); ?>" class="colorbox-armacao"><?php echo $this->Html->image('information.png', array('width' => '14') ); ?></a> </p>

			<?php echo $glass['Glass']['character_frame']; ?>
		</div> <!-- .texto-caracteristicas -->

		<div class="span3 texto-caracteristicas" style="margin-left: 40px;">
			<p>CARACTERÍSTICAS DAS LENTES:</p>

			<?php echo $glass['Glass']['character_lenses']; ?>
		</div> <!-- .texto-caracteristicas -->
	</div> <!-- #oculos-estilo-etc -->
</div>

<div class="row">
	<div class="span12" style="margin-left: 0px;">
		<div class="linha-com-titulo" style="margin-top: 10px;">
			<p class="texto" style="text-transform: uppercase;">
				Qualidade na Fabricação
			</p> <!-- .texto -->
			<hr />
		</div> <!-- .linha-com-titulo -->
	</div>
</div>

<div class="row">
	<div class="span4">

		<div style="width: 100%; text-align: center;">
			<?php echo $this->Html->image('qualidade-1.png'); ?>
		</div>

		<p style="text-transform: uppercase; margin-top: 16px; display: inline-block; font-size: 17px; font-weight: bold; font-family: 'Nothing You Could Do'; margin-top: 30px;">Desenhado no Rio</p>

		<div class="clear clearfix"></div>

		<p style="font-size: 11px; margin-top: 16px;">
			Inspirado no design italiano e no estilo carioca de viver, nossas coleções são desenhadas com paixão e conhecimento de quem trabalha no ramo ótico há 11 anos. Nosso objetivo é simples: encantar e trazer estilo com nossas armações.
		</p>
	</div>

	<div class="span4">

		<div style="width: 100%; text-align: center;">
			<?php echo $this->Html->image('qualidade-2.png'); ?>
		</div>

		<div class="clear clearfix"></div>

		<p style="text-transform: uppercase; margin-top: 16px; display: inline-block; font-size: 17px; font-weight: bold; font-family: 'Nothing You Could Do'; margin-top: 30px;">Fabricados à mão</p>

		<div class="clear clearfix"></div>

		<p style="font-size: 11px; margin-top: 16px;">
			Nossos óculos são fabricado à mão, cortados de uma placa única de acetato para garantir uma uniformidade de cor e polidos para um acabamento superior.
		</p>
	</div>

	<div class="span4">

		<div style="width: 100%; text-align: center;">
			<?php echo $this->Html->image('qualidade-3.png'); ?>
		</div>

		<p style="text-transform: uppercase; margin-top: 16px; display: inline-block; font-size: 17px; font-weight: bold; font-family: 'Nothing You Could Do'; margin-top: 30px;">Lentes de Grau Montadas em Laboratório</p>

		<div class="clear clearfix"></div>

		<p style="font-size: 11px;">
			Nossas lentes de grau são montadas no Brasil em laboratório ótico renomado para garantir excelência e atender nosso padrão de qualidade. Elas são importadas e possuem tratamento antirreflexo e antirrisco.
		</p>
	</div>
</div>

<div class="row">
	<div class="span12" style="margin-left: 0px;">
		<div class="linha-com-titulo" style="margin-top: 10px;">
			<p class="texto" style="text-transform: uppercase;">
				Incluso
			</p> <!-- .texto -->
			<hr />
		</div> <!-- .linha-com-titulo -->
	</div>
</div>


<div class="row">
	<div class="span6">
		<?php echo $this->Html->image('incluso-1.jpg', array('class' => 'pull-left', 'style' => 'height: 84px; margin-top: 7px; margin-bottom: 20px; margin-right: 20px;') ); ?>

		<p style="text-transform: uppercase; margin-top: 16px; display: inline-block; font-size: 13px;">O que mais está incluído?</p>

		<p style="font-size: 11px;">
			Estojo e flanela exclusivos da Ben Trovato. Cada óculos é acompanhado por um sofisticado estojo importado e uma flanela exclusiva de microfibra, para que seu Ben Trovato fique sempre protegido e impecável.
		</p>
	</div>

	<div class="span6">
		<?php echo $this->Html->image('icone-garantia.png', array('class' => 'pull-left', 'style' => 'margin-top: 20px; margin-right: 20px;') ); ?>

		<p style="text-transform: uppercase; margin-top: 16px; display: inline-block; font-size: 13px;">Garantia de 180 Dias</p>

		<p style="font-size: 11px;">
			Todos nossas armações e lentes têm garantia de 180 dias, com os custos envio para troca por nossa conta.
		</p>
	</div>
</div>

<div class="row">
	<div class="span12" style="margin-left: 0px;">
		<div class="linha-com-titulo" style="margin-top: 10px;">
			<p class="texto" style="text-transform: uppercase;">
				Que tal esses?
			</p> <!-- .texto -->
			<hr />
		</div> <!-- .linha-com-titulo -->
	</div>
</div>

<div class="row">
	<?php foreach($glass['Related'] as $glassRelated) : ?>
	<div class="span3">
		<a href="<?php echo $this->Html->url( array('action' => 'view', $glassRelated['id']) ); ?>" style="color: #000; text-align: center;">
			<?php echo $this->Html->image($glassRelated['photo_1']); ?>

			<p style="margin-top: 10px;"><?php echo $glassRelated['name']; ?> - <?php echo $glassRelated['color2']; ?></p>
		</a>
	</div>
	<?php endforeach; ?>
</div>