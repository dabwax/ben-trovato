<div class="row">
	<?php echo $this->Html->image('banner-oculos.jpg', array('style' => 'width: 100%;') ); ?>
</div>

<div class="row">
	<hr>
</div>

<div class="row" style="text-transform: uppercase;">

	<div id="bloco-materiais" class="span2" style="margin-left: 0px;">
		<p>Material</p>

		<?php foreach($options['material'] as $slug => $name) : ?>

			<input type="checkbox" data-material="<?php echo $slug; ?>" id="<?php echo $slug ?>" /> <label for="<?php echo $slug ?>"><?php echo $name; ?></label>
		<?php endforeach; ?>
	</div> <!-- #bloco-materiais -->

	<div id="bloco-cores" class="span6" style="margin-left: 0px;">
		<p>Cor</p>

		<?php foreach($options['color'] as $slug => $name) : ?>

			<input type="checkbox" data-color="<?php echo $slug; ?>" id="<?php echo $slug ?>" /> <label for="<?php echo $slug ?>"><?php echo $name; ?></label>
		<?php endforeach; ?>
	</div> <!-- #bloco-cores -->

	<div id="bloco-formatos" class="span2" style="margin-left: 0px;">
		<p>Formato</p>

		<?php foreach($options['format'] as $slug => $name) : ?>

			<input type="checkbox" data-format="<?php echo $slug; ?>" id="<?php echo $slug ?>" /> <label for="<?php echo $slug ?>"><?php echo $name; ?></label>
		<?php endforeach; ?>
	</div> <!-- #bloco-formato -->

	<div id="bloco-tamanhos" class="span2" style="margin-left: 0px;">
		<p>Tamanho</p>

		<?php foreach($options['size'] as $slug => $name) : ?>

			<input type="checkbox" data-size="<?php echo $slug; ?>" id="<?php echo $slug ?>" /> <label for="<?php echo $slug ?>"><?php echo $name; ?></label>
		<?php endforeach; ?>
	</div> <!-- #bloco-tamanhos -->

</div>