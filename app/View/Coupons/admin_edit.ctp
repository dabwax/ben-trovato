<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Cupons'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Cupons'); ?></small>

						<a href="<?php echo $this->Html->url( array('action' => 'index') ); ?>" class="btn btn-primary">Listar</a>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<div class="form">
				<?php echo $this->Form->create('Coupon', array('type' => 'file') ); ?>
					<fieldset>
						<legend><?php echo __('Edit Coupon'); ?></legend>
					<?php
						echo $this->Form->input('id');

						echo $this->Form->input('discount', array('label' => 'Valor de Desconto', 'type' => 'text') );

						echo $this->Form->input('is_used', array('label' => 'Já foi usado?') );
					?>
					</fieldset>
				<?php echo $this->Form->end(__('Submit')); ?>
				</div>

			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

</div>

<?php echo $this->Html->script('jquery.price_format.min.js'); ?>

<script type="text/javascript">
  $(function () {

    // Máscara de Preço
    $("#CouponDiscount").priceFormat({
		prefix: 'R$ ',
		centsSeparator: '',
		thousandsSeparator: ''
	});
  })
</script>