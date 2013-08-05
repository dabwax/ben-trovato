<div class="row">
	<div class="span8" id="fotos-do-oculos" style="margin-left: 0px;">
		<a href="<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '820', 'h' => '580', 'url' => true) ); ?>" class="colorbox-iframe">
			<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '620', 'h' => '280'), array('id' => 'imagem-toggle') ); ?>
		</a>

		<div class="clear clearfix"></div>

		<p id="vistas-oculos" class="text-center">
			Vistas
			<a data-large="<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '820', 'h' => '580', 'url' => true) ); ?>" href="<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '620', 'h' => '280', 'url' => true) ); ?>">01</a>
			<a data-large="<?php echo $this->Loja->imagem('/glass/photo_2/' . $glass['Glass']['photo_2_dir'] . '/' . $glass['Glass']['photo_2'], array('w' => '820', 'h' => '540', 'url' => true) ); ?>" href="<?php echo $this->Loja->imagem('/glass/photo_2/' . $glass['Glass']['photo_2_dir'] . '/' . $glass['Glass']['photo_2'], array('w' => '620', 'h' => '280', 'url' => true) ); ?>">02</a>
		</p> <!-- #vistas-oculos -->

	</div> <!-- #fotos-do-oculos -->

	<div class="span4" id="informacoes-do-oculos">
		<h2 id="nome-do-oculos">
			<?php echo $glass['Glass']['name']; ?>
		</h2> <!-- #nome-do-oculos -->

		<h3 id="cor-do-oculos">
			<?php echo ucfirst($glass['Glass']['color']); ?>
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
				<?php echo $this->Loja->imagem('/glass/photo_1/' . $glassColor['Glass']['photo_1_dir'] . '/' . $glassColor['Glass']['photo_1'], array('w' => '192', 'h' => '96') ); ?>
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
	<div class="span5" id="foto-efeito-hover" style="margin-left: 0px;">
		<?php echo $this->Loja->imagem('/glass/image_hover/' . $glass['Glass']['image_hover_dir'] . '/' . $glass['Glass']['image_hover'], array('w' => '360', 'h' => '280') ); ?>
	</div> <!-- #foto-efeito-hover -->

	<div class="span7" id="oculos-estilo-etc">
		<h2>O Estilo</h2>

		<h3 id="estilo-do-oculos">
			LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISCING ELIT. QUISQUE ID ODIO CONSEQUAT URNA INTERDUM ALIQUET.
		</h3> <!-- #estilo-do-oculos -->

		<div class="clear clearfix"></div>

		<div class="span3">
			<p>Características da Armação: <a href="<?php echo $this->Html->url( array('controller' => 'pages', 'action' => 'display', 'caracteristicas-da-armacao') ); ?>"><?php echo $this->Html->image('information.png'); ?></a> </p>
		</div> <!-- .span3 -->

		<div class="span3">
			<p>Características das Lentes:</p>
		</div> <!-- .span3 -->
	</div> <!-- #oculos-estilo-etc -->
</div>