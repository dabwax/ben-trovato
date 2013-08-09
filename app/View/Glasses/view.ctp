<div class="row">
	<div class="span8" id="fotos-do-oculos" style="margin-left: 0px;">
		<a href="<?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '820', 'url' => true, 'zc' => '0') ); ?>" class="colorbox-image">
			<?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '620', 'h' => '280'), array('id' => 'imagem-toggle') ); ?>
		</a>

		<div class="clear clearfix"></div>

		<p id="vistas-oculos" class="text-center" style="position: relative; font-weight: 400;">
			Vistas
			<a data-large="<?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '820', 'url' => true, 'zc' => '0') ); ?>" href="<?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '620', 'h' => '280', 'url' => true) ); ?>">01</a>
			<a data-large="<?php echo $this->Loja->imagem($glass['Glass']['photo_2'], array('w' => '820', 'url' => true, 'zc' => '0') ); ?>" href="<?php echo $this->Loja->imagem($glass['Glass']['photo_2'], array('w' => '620', 'h' => '280', 'url' => true) ); ?>">02</a>

			<span style="position: absolute; text-transform: uppercase; color: #999; right: 40px; top: 0px; font-size: 13px; font-weight: 400;">Clique para zoom</span>
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

			<span style="position: absolute; top: 34px; left: 37px; color: #A4C400; z-index: 999; font-weight: 600;">
				ou em até 3x sem juros de <?php $preco = explode(',', $this->Loja->preco($glass['Glass']['price'] / 3)); echo $preco[0]; ?>
			</span>
		</div> <!-- .linha-com-titulo -->


		<ul id="vantagens-do-oculos">
			<li style="font-size: 13px;">
				<?php echo $this->Html->image('tick.png'); ?>

				<?php if($glass['Glass']['type'] == 'grau') { ?>
				Lentes com grau com antirreflexo, antirrisco<br /><span style="width: 19px; height: 10px; display: inline-block;"></span>e UVA/UVB
				<?php } else { ?>
				Lentes solares com UVA/UVB
				<?php } ?>
			</li>
			<li style="font-size: 13px;">
				<?php echo $this->Html->image('tick.png'); ?>
				Frete grátis (entrega, troca ou devolução)
			</li>
			<li style="font-size: 13px;">
				<?php echo $this->Html->image('tick.png'); ?>
				Reembolso integral até 30 dias
			</li>
			<li class="cinza">
				<a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'termos-de-uso') ); ?>" style="color: #999;">
					* Consulte termos de uso e condições
				</a>
			</li>
		</ul> <!-- #vantagens-do-oculos -->

		<a href="<?php echo $this->Html->url( array('action' => 'buy', $glass['Glass']['id']) ); ?>" id="btn-adicionar-ao-carrinho" class="btn btn-large btn-success colorbox-iframe" style="border: none; text-shadow: none; font-size: 15px; padding-top: 8px;">
			<span style="font-size: 20px; top: 2px; position: relative; left: -5px;">+</span>
			Adicionar ao Carrinho
		</a> <!-- #btn-adicionar-ao-carrinho -->

		<div class="linha-com-titulo" style="margin-top: 4px;">
			<p class="texto" style="margin: 0px;">
				Prove antes de comprar
			</p> <!-- .texto -->
			<hr />
		</div> <!-- .linha-com-titulo -->

		<a href="<?php echo $this->Html->url( array('action' => 'fittingbox', $glass['Glass']['id']) ); ?>" id="btn-prove-virtualmente" class="btn btn-large btn-inverse colorbox-iframe" style="border: none; text-shadow: none; font-size: 14px; padding-top: 8px; color: #333;">
			Prove Virtualmente
		</a> <!-- #btn-prove-virtualmente -->

	</div> <!-- #informacoes-do-oculos -->
</div>


<?php if(count($glassesWithOtherColors) > 0) { ?>
<div class="row">
	
	<div class="span12" style="margin-left: 0px;">
		
		<div class="linha-com-titulo" style="text-align: left;">
			<p class="texto" style="text-align: left; margin-left: 252px; text-transform: uppercase; left: -8px; padding-left: 14px; padding-right: 14px;">
				Outras Cores
			</p> <!-- .texto -->

			<hr />
		</div> <!-- .linha-com-titulo -->
	</div> <!-- .span12 -->
</div> <!-- .row -->

<div class="row">
	
	<div class="oculos-outras-cores span12" style="margin-left: 0px;">
		
		<?php foreach($glassesWithOtherColors as $glassColor) : ?>
			<a href="<?php echo $this->Html->url( array('action' => 'view', $glassColor['Glass']['id']) ); ?>" style="text-align: center; text-transform: uppercase; color: #999; font-size: 12px; text-decoration: none;">
				<?php echo $this->Loja->imagem($glassColor['Glass']['photo_1'], array('w' => '192', 'h' => '96') ); ?>
				<div class="clear clearfix"></div>
				<?php echo $glassColor['Glass']['color2']; ?>
			</a>
		<?php endforeach; ?>
	</div> <!-- .oculos-outras-cores -->

</div> <!-- .row -->
<?php } ?>

<div class="row">
	<div class="span12" style="margin-left: 0px;">
		<hr class="linha" style="height: 1px; margin-bottom: 24px;" />
	</div>
</div>

<div class="row">
	<div class="span5" style="text-align: center; margin-bottom: 4px;">
		<?php echo $this->Html->image('passe-o-mouse.png', array('style' => 'width: 215px;') ); ?>
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

	<div class="span7" id="oculos-estilo-etc" style="position: relative; height: 380px;">
		<h2 style="margin: 0px; font-size: 20px; line-height: 20px; margin-bottom: 12px;">O Estilo</h2>

		<div id="estilo-do-oculos">
			<?php echo $glass['Glass']['the_style']; ?>
		</div> <!-- #estilo-do-oculos -->

		<div class="clear clearfix"></div>

		<div class="span3 texto-caracteristicas" style="position: absolute; left: 0px; bottom: 0px; margin-left: 0px;">
			<p style="font-weight: bold;">CARACTERÍSTICAS DA ARMAÇÃO: <a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'caracteristicas-da-armacao') ); ?>" class="colorbox-armacao"><?php echo $this->Html->image('information.png', array('width' => '14') ); ?></a> </p>

			<?php echo $glass['Glass']['character_frame']; ?>
		</div> <!-- .texto-caracteristicas -->

		<div class="span3 texto-caracteristicas" style="position: absolute; left: 236px; bottom: 0px;">
			<p style="font-weight: bold;">CARACTERÍSTICAS DAS LENTES:</p>

			<?php echo $glass['Glass']['character_lenses']; ?>
		</div> <!-- .texto-caracteristicas -->
	</div> <!-- #oculos-estilo-etc -->
</div>

<div class="row">
	<div class="span12" style="margin-left: 0px;">
		<div class="linha-com-titulo" style="margin-top: 40px; margin-bottom: 30px;">
			<p class="texto" style="text-transform: uppercase; padding-left: 14px; padding-right: 14px;">
				Qualidade na Fabricação
			</p> <!-- .texto -->
			<hr />
		</div> <!-- .linha-com-titulo -->
	</div>
</div>

<div class="row">
	<div class="span4">

		<div style="width: 86%; text-align: center;">
			<?php echo $this->Html->image('qualidade-1.png'); ?>
		</div>

		<p style="margin-top: 16px; display: inline-block; font-size: 17px; font-weight: bold; font-family: 'Nothing You Could Do'; margin-top: 30px; width: 84%; text-align: center;">Desenhado no Rio</p>

		<div class="clear clearfix"></div>

		<p style="font-size: 11px; margin-top: 16px; text-align: justify; width: 260px;">
			Inspirado no design italiano e no estilo carioca de viver, nossas coleções são desenhadas com paixão e conhecimento de quem trabalha no ramo ótico há 11 anos. Nosso objetivo é simples: encantar e trazer estilo com nossas armações.
		</p>
	</div>

	<div class="span4">

		<div style="width: 86%; text-align: center;">
			<?php echo $this->Html->image('qualidade-2.png'); ?>
		</div>

		<div class="clear clearfix"></div>

		<p style="margin-top: 16px; display: inline-block; font-size: 17px; font-weight: bold; font-family: 'Nothing You Could Do'; margin-top: 30px; text-align: center; width: 84%;">Fabricados à mão</p>

		<div class="clear clearfix"></div>

		<p style="font-size: 11px; margin-top: 16px; text-align: justify; width: 260px;">
			Nossos óculos são fabricado à mão, cortados de uma placa única de acetato para garantir uma uniformidade de cor e polidos para um acabamento superior.
		</p>
	</div>

	<div class="span4">

		<div style="width: 86%; text-align: center;">
			<?php echo $this->Html->image('qualidade-3.png'); ?>
		</div>

		<p style="margin-top: 16px; display: inline-block; font-size: 17px; font-weight: bold; font-family: 'Nothing You Could Do'; margin-top: 30px; margin-bottom: 26px; width: 100%; text-align: center;">Lentes montadas em laboratório</p>

		<div class="clear clearfix"></div>

		<p style="font-size: 11px; text-align: justify; width: 292px;">
			Nossas lentes de grau são montadas no Brasil em laboratório ótico renomado para garantir excelência e atender nosso padrão de qualidade. Elas são importadas e possuem tratamento antirreflexo, antirrisco e proteção UVA/UVB.
		</p>
	</div>
</div>

<div class="row">
	<div class="span12" style="margin-left: 0px;">
		<div class="linha-com-titulo" style="margin-top: 20px; margin-bottom: -2px;">
			<p class="texto" style="text-transform: uppercase;">
				Incluso
			</p> <!-- .texto -->
			<hr />
		</div> <!-- .linha-com-titulo -->
	</div>
</div>


<div class="row">
	<div class="span6" style="margin-left: 0px;">
		<?php echo $this->Html->image('Case_BT.jpg', array('class' => 'pull-left', 'style' => 'margin-top: 42px; margin-bottom: 20px; margin-right: 20px; width: 166px;') ); ?>

		<p style="text-transform: uppercase; margin-top: 16px; display: inline-block; font-size: 13px; font-weight: bold;">Estojo e flanela exclusivos</p>

		<p style="font-size: 11px; text-align: justify; width: 412px;">
			Cada óculos é acompanhado por um sofisticado estojo importado e uma flanela exclusiva de microfibra, para que seu Ben Trovato fique sempre protegido e bonito.
		</p>
	</div>

	<div class="span6">
		<?php echo $this->Html->image('GARANTIA.png', array('class' => 'pull-left', 'style' => 'margin-top: 50px; margin-right: 20px; margin-bottom: 62px; width: 166px;') ); ?>

		<p style="text-transform: uppercase; margin-top: 16px; display: inline-block; font-size: 13px; font-weight: bold;">Garantia Ben Trovato</p>

		<p style="font-size: 11px; text-align: justify;">
			Para nós, o mais importante é sua satisfação e se você não se apaixonar pelos seu Ben Trovato, nós oferecemos um política devolução grátis por um período de 30 dias. A armação e lentes também possuem políticas de garantia próprias.<br /><a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'termos-de-uso') ); ?>" style="color: #999;">* Consulte nossa política de garantia</a>.
		</p>
	</div>
</div>

<?php if(count($glass['Related']) > 0) { ?>
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
		<a href="<?php echo $this->Html->url( array('action' => 'view', $glassRelated['id']) ); ?>" style="color: #000; text-align: center; float: left; width: 192px; text-decoration: none;">
			<?php echo $this->Html->image($glassRelated['photo_1']); ?>

			<p style="margin: 0px; text-transform: uppercase;"><?php echo $glassRelated['name']; ?></p>
			<p style="font-size: 12px; color: #999; text-transform: uppercase; margin-bottom: 30px;"><?php echo $glassRelated['color2']; ?></p>
		</a>
	</div>
	<?php endforeach; ?>
</div>

<?php } ?>