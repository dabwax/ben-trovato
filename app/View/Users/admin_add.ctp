<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Usuários'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Usuários'); ?></small>

						<a href="<?php echo $this->Html->url( array('action' => 'index', $role) ); ?>" class="btn btn-primary">Listar</a>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<div class="form">
				<?php echo $this->Form->create('User', array('type' => 'file') ); ?>
					<fieldset>
						<legend><?php echo __('Adicionar Usuário ' . ucfirst($role)); ?></legend>
					<?php
						echo $this->Form->hidden('role', array('value' => $role) );

						echo $this->Form->input('name');
						echo $this->Form->input('username');
						echo $this->Form->input('password');
					?>
					</fieldset>
				<?php echo $this->Form->end(__('Submit')); ?>
				</div>

			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

	
</div>