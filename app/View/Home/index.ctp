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
						interval: 3000,
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
	     </div>

	</aside> <!-- #sidebar-home -->
</div>