<div class="row lenses-block" id="lenses_<?php echo $type; ?>">
	
	<div class="span10">
		<?php foreach($lenses as $lense) : if($lense['Lense']['type'] == $type) : ?>
			<div class="lente">

				<p class="titulo-da-lente">
					<?php echo $lense['Lense']['name']; ?>
				</p> <!-- .titulo-da-lente -->

				<p class="descricao-da-lente">
					<?php echo $lense['Lense']['description']; ?>
				</p> <!-- .descricao-da-lente -->

				<p class="preco-da-lente">
					<?php if($lense['Lense']['price'] == 0 && $lense['Lense']['discount'] == 0) { ?>
						Grátis
					<?php } ?>

					<?php if($lense['Lense']['price'] != 0) { ?>
						<?php $preco = explode(',', $this->Loja->preco($lense['Lense']['price'])); echo $preco[0]; ?>
					<?php } ?>

					<?php if($lense['Lense']['discount'] != 0) { ?>
						- <?php $preco = explode(',', $this->Loja->preco($lense['Lense']['discount'])); echo $preco[0]; ?>
					<?php } ?>
				</p> <!-- .preco-da-lente -->

				<button data-lense-id="<?php echo $lense['Lense']['id']; ?>" class="btn-lente btn btn-inverse">
					Selecionar
				</button> <!-- .btn-lente -->

			</div> <!-- .lente -->

		<?php endif; endforeach; ?>	
	</div> <!-- .span10 -->

</div> <!-- #lenses_<?php echo $type; ?> -->