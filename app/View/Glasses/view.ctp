<div class="row">
	<div class="span8" id="fotos-do-oculos" style="margin-left: 0px;">
		<a href="<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '960', 'h' => '600', 'url' => true) ); ?>">
			<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '620', 'h' => '280'), array('id' => 'imagem-toggle') ); ?>
		</a>

		<div class="clear clearfix"></div>

		<p id="vistas-oculos" class="text-center">
			Vistas
			<a data-large="<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '960', 'h' => '600', 'url' => true) ); ?>" href="<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '620', 'h' => '280', 'url' => true) ); ?>">01</a>
			<a data-large="<?php echo $this->Loja->imagem('/glass/photo_2/' . $glass['Glass']['photo_2_dir'] . '/' . $glass['Glass']['photo_2'], array('w' => '960', 'h' => '600', 'url' => true) ); ?>" href="<?php echo $this->Loja->imagem('/glass/photo_2/' . $glass['Glass']['photo_2_dir'] . '/' . $glass['Glass']['photo_2'], array('w' => '620', 'h' => '280', 'url' => true) ); ?>">02</a>
		</p> <!-- #vistas-oculos -->

	</div> <!-- #fotos-do-oculos -->

	<div class="span4" id="informacoes-do-oculos">
		<h2 id="nome-do-oculos">
			Óculos Preto
		</h2> <!-- #nome-do-oculos -->

		<h3 id="cor-do-oculos">
			Preto
		</h3> <!-- #cor-do-oculos -->

		<div class="linha-com-titulo">
			<p class="preco">
				R$ 198
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

		<a href="#" id="btn-adicionar-ao-carrinho" class="btn btn-large btn-success">
			<i class="icon icon-shopping-cart icon-white"></i>
			Adicionar ao Carrinho
		</a> <!-- #btn-adicionar-ao-carrinho -->

		<div class="linha-com-titulo" style="margin-top: 10px;">
			<p class="texto">
				Prove antes de comprar
			</p> <!-- .texto -->
			<hr />
		</div> <!-- .linha-com-titulo -->

		<a href="#" id="btn-prove-virtualmente" class="btn btn-large btn-inverse">
			Prove Virtualmente
		</a> <!-- #btn-prove-virtualmente -->

	</div> <!-- #informacoes-do-oculos -->
</div>