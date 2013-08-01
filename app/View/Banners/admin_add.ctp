<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Banners'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Banners'); ?></small>

						<a href="<?php echo $this->Html->url( array('action' => 'index') ); ?>" class="btn btn-primary">Listar</a>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<div class="form">
				<?php echo $this->Form->create('Banner', array('type' => 'file') ); ?>
					<fieldset>
						<legend><?php echo __('Add Banner'); ?></legend>
					<?php
						echo $this->Form->input('image', array('type' => 'file') );
						echo $this->Form->input('link');
					?>
					</fieldset>
				<?php echo $this->Form->end(__('Submit')); ?>
				</div>

			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

	
</div>