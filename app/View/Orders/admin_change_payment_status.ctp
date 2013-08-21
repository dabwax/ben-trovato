<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Pedidos'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Pedidos'); ?></small>

						<a href="<?php echo $this->Html->url( array('action' => 'index') ); ?>" class="btn btn-primary">Listar</a>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<div class="form">
				<?php echo $this->Form->create('Order', array('type' => 'file') ); ?>
					<fieldset>
						<legend><?php echo __('Editar Status do Pedido'); ?></legend>
					<?php
						echo $this->Form->input('id');

						if($type == 'sent') {
							$value = 'Óculos Enviado';
						} else if($type == 'processing') {
							$value = 'Preparando Envio';
						} else if($type == 'waiting') {
							$value = 'Aguardando Receita';
						}

						echo $this->Form->input('payment_status', array('label' => 'Status', 'type' => 'select', 'options' => array($value => $value), 'selected' => $value ) );

						if($type == 'sent') {
							echo $this->Form->input('tracking_code', array('label' => 'Código de Rastreio') );
						}
					?>
					</fieldset>
				<?php echo $this->Form->end(__('Submit')); ?>
				</div>

			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

</div>