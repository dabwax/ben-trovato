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
		
	</aside> <!-- #sidebar-home -->
</div>