<div class="row">
	
	<section id="banners-home" class="span8">
		
		<div class="banners-encima">
			<?php foreach($bannersEncima as $banner) : ?>
			<a <?php if($banner['Banner']['link'] != '') { ?>href="<?php echo $banner['Banner']['link']; ?>"<?php } ?>>
				<?php echo $this->Loja->imagem('/banner/image/' . $banner['Banner']['image_dir'] . '/' . $banner['Banner']['image'], array('w' => '614', 'h' => '380') ); ?>
			</a>
			<?php endforeach; ?>
		</div> <!-- .banners-encima -->

		<script type="text/javascript">
			$(document).ready(function() {

				$(".banners-encima").slidesjs({
					width: 620,
					height: 380,
					play: {
						active: true,
						interval: 5000,
						effect: 'fade',
						auto: true
					},
					pagination: {
						effect: 'fade'
					}
				});
			});
		</script>

		<div class="banners-embaixo">
			<?php foreach($bannersEmbaixo as $banner) : ?>
			<a <?php if($banner['Banner']['link'] != '') { ?>href="<?php echo $banner['Banner']['link']; ?>"<?php } ?>>
				<?php echo $this->Loja->imagem('/banner/image/' . $banner['Banner']['image_dir'] . '/' . $banner['Banner']['image'], array('w' => '300', 'h' => '380') ); ?>
			</a>
			<?php endforeach; ?>
		</div> <!-- .banners-embaixo -->

	</section> <!-- #banners-home -->

	<aside id="sidebar-home" class="span4">
		
		<div id="banner-preco" style="border: none; position: relative; left: 0px; top: -18px;">
	        <div id="descricao-preco">
	           <h2>Preço único</h2>
	           <h3 style="font-size: 16px;">Armação + lente de grau inclusas</h3>
	        </div>
	        <div id="valor-banner">
	           <div class="valor-banner-linha-left">
	              <hr>
	           </div>
	           <div class="valor-banner-money">
	              <h2>R$ 198</h2>
	           </div>
	           <div class="valor-banner-linha-right">
	              <hr>
	           </div>
	       </div>
	       <div id="detalhes-banner">
	          <h3 style="margin: 0px; font-size: 14px; line-height: 18px; margin-left: 44px; text-align: left;"><?php echo $this->Html->image('tick.png'); ?> Lentes de grau* com antirreflexo<br>e antirrisco</h3>
	          <h3 style="margin: 0px; line-height: 26px; font-size: 14px; margin-left: 44px; text-align: left;"><?php echo $this->Html->image('tick.png'); ?> Frete e devolução grátis</h3>
	          <h3 style="margin: 0px; line-height: 26px; font-size: 14px; margin-left: 44px; text-align: left;"><?php echo $this->Html->image('tick.png'); ?> Reembolso integral até 30 dias</h3>
	          <h3 style="margin: 0px; line-height: 26px; font-size: 13px; margin-left: 58px; text-align: left; color: #CCC;">* Consulte nossos parâmetros</h3>
	       </div>
	     </div> <!-- #banner-preco -->

		<?php foreach($glassesRandom as $glass) : ?>

			<div class="oculos-sidebar">

				<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'view', $glass['Glass']['id']) ); ?>">
					<?php echo $this->Loja->imagem('/glass/photo_1/' . $glass['Glass']['photo_1_dir'] . '/' . $glass['Glass']['photo_1'], array('w' => '270', 'h' => '134') ); ?>

					<p><?php echo $glass['Glass']['name']; ?></p>
				</a>

				<?php if($glass['Glass']['sku'] != '') { ?>
				<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'fittingbox', $glass['Glass']['id']) ); ?>" class="btn-espelho-virtual">
					<?php echo __('Espelho virtual'); ?>
				</a>
				<?php } ?>

			</div> <!-- .oculos-sidebar -->

		<?php endforeach; ?>

	</aside> <!-- #sidebar-home -->

</div>

<div class="row">
	
	<section id="texto-chamada-home" class="span12" style="margin-left: 0px; margin-top: 20px;">
		<p>
			Ben Trovato é o destino virtual para amantes da moda. Nós somos apaixonados por óculos e adoramos ter um para cada humor. Estamos cansados de usar apenas um par que custou muito caro, todo dia, até quebrar. Com apenas alguns cliques, monte uma coleção de óculos para combinar com cada momento!
			<br /><br />
			Nossos óculos possuem design exclusivo, com armações tão sofisticadas quanto as melhores marcas do mercado e recebem lentes oftálmicas de alta qualidade, tudo isso a um preço revolucionário. Nós ficaremos muito felizes em enviar nossos óculos para qualquer canto do Brasil, de norte ao sul do país. O frete é por nossa conta, claro!
		</p>
	</section>

</div>