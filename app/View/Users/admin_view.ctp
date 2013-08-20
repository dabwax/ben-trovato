<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Usuários'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Usuários'); ?> - Informações do Usuário: <?php echo $user['User']['name']; ?></small>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<?php echo $this->element('user_view', array('user' => $user) ); ?>
				
			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

	
</div>