<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Configurações'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Configurações'); ?></small>

						<a href="<?php echo $this->Html->url( array('action' => 'index') ); ?>" class="btn btn-primary">Listar</a>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<div class="form">
				<?php echo $this->Form->create('Setting', array('type' => 'file') ); ?>
					<fieldset>
						<legend><?php echo $this->request->data['Setting']['name']; ?></legend>
					<?php
						echo $this->Form->input('id');
						echo $this->Form->hidden('name');

						echo $this->Form->input('value');
					?>
					</fieldset>
				<?php echo $this->Form->end(__('Submit')); ?>
				</div>

			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

	
</div>