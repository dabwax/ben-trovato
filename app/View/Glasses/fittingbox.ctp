<div class="row">
	<div class="span10 text-center">
		<h2 id="titulo-espelho-virtual">
			Espelho Virtual
		</h2> <!-- #titulo-espelho-virtual -->
	</div>
</div>

<div class="row">
	<div id="espelho-virtual-principal" class="span6">

		<h3 id="voce-esta-experimentando">
			Você está experimentando este modelo:
		</h3> <!-- #voce-esta-experimentando -->

		<div class="clear clearfix"></div>

		<div class="span4 ml0" id="foto-oculos-frontal">
			<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '300', 'h' => '150') ); ?>
		</div> <!-- #foto-oculos-frontal -->

		<div class="span2 text-center" id="sobre-o-oculos">
			
			<h2 id="nome-do-oculos">
				<?php echo $glass['Glass']['name']; ?>
			</h2> <!-- #nome-do-oculos -->

			<h3 id="cor-do-oculos">
				<?php echo $glass['Glass']['color']; ?>
			</h3> <!-- cor-do-oculos -->

			<div class="texto-com-linha">

				<p class="preco">
					<?php $preco = explode(',', $this->Loja->preco($glass['Glass']['price'])); echo $preco[0]; ?>
				</p> <!-- .preco -->

				<hr />
			</div> <!-- .texto-com-linha -->

			<a href="<?php echo $this->Html->url( array('action' => 'buy', $glass['Glass']['id']) ); ?>" id="btn-comprar" class="btn btn-inverse btn-large">
				<i class="icon icon-shopping-cart icon-white"></i> Adicionar ao Carrinho
			</a> <!-- #btn-comprar -->

			<p id="consulte-nossos-parametros">
				* consulte nossos parâmetros
			</p> <!-- #consulte-nossos-parametros -->

		</div> <!-- #sobre-o-oculos -->

		<div class="clear clearfix"></div>

		<div id="outras-cores">

			<div class="texto-com-linha">

				<p class="titulo-cinza">
					Outras Cores
				</p> <!-- .titulo-cinza -->

				<hr />

			</div> <!-- .texto-com-linha -->

			<div class="carousel-outras-cores">
				<ul>
					<?php foreach($glassesWithOtherColors as $glassColor) : ?>
					<li>
						<a href="<?php echo $this->Html->url( array('action' => 'fittingbox', $glassColor['Glass']['id']) ); ?>">
							<?php echo $this->Loja->imagem('/glass/photo_1/' . $glassColor['Glass']['photo_1_dir'] . '/' . $glassColor['Glass']['photo_1'], array('w' => '112', 'h' => '46') ); ?>
						</a>
					</li>
					<?php endforeach; ?>
				</ul>
			</div> <!-- .carousel-outras-cores -->

			<div class="clear clearfix"></div>

		</div> <!-- #outras-cores -->

		<div class="clear clearfix"></div>

		<div id="produtos-relacionados">

			<div class="texto-com-linha">

				<p class="titulo-cinza">
					Que tal esses?
				</p> <!-- .titulo-cinza -->

				<hr />

			</div> <!-- .texto-com-linha -->

			<div class="carousel-outras-cores">
				<ul>
					<?php foreach($glass['Related'] as $glassRelated) : ?>
					<li>
						<a href="<?php echo $this->Html->url( array('action' => 'fittingbox', $glassRelated['id']) ); ?>">
							<?php echo $this->Loja->imagem('/glass/photo_1/' . $glassRelated['photo_1_dir'] . '/' . $glassRelated['photo_1'], array('w' => '112', 'h' => '46') ); ?>
						</a>
					</li>
					<?php endforeach; ?>
				</ul>
			</div> <!-- .carousel-outras-cores -->

			<div class="clear clearfix"></div>

		</div> <!-- #outras-cores -->

	</div> <!-- #produtos-relacionados -->

	<div id="espelho-virtual-lateral" class="span4">

		<div id="fitphoto"></div>

		<script type="text/javascript">
			$(document).ready(function() {
				window.onload = function () {
					FitPhoto.create ('fitphoto', {
						width: 300,
						glassID: '<?php echo $glass['Glass']['sku'] ?>',
						localeChain: 'pt_BR'
					});
				}
			});
		</script>
		
	</div> <!-- #espelho-virtual-lateral -->
</div>