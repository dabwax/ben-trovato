<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Óculos'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Óculos'); ?></small>

						<a href="<?php echo $this->Html->url( array('action' => 'index') ); ?>" class="btn btn-primary">Listar</a>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<ul class="nav nav-tabs" id="tabs-glass">
				  <li class="active"><a href="#geral" data-toggle="tab">Geral</a></li>
				  <li><a href="#caracteristicas" data-toggle="tab">Características</a></li>
				  <li><a href="#messages" data-toggle="tab">Messages</a></li>
				  <li><a href="#settings" data-toggle="tab">Settings</a></li>
				</ul>

				<?php echo $this->Form->create('Glass', array('type' => 'file') ); ?>

				<div class="tab-content" style="margin-top: 20px;">

					<div class="tab-pane active" id="geral">

						<p class="label" style="margin-bottom: 20px; display: inline-block;">
							Aqui encontram-se todas as informações gerais do óculos que você irá cadastrar, como o Nome e o SKU.
						</p>
						
						<div class="form">
							<?php
								echo $this->Form->input('name');
								echo $this->Form->input('sku');
								echo $this->Form->input('price');
							?>
						</div> <!-- .form -->

					</div> <!-- .tab-pane -->

					<div class="tab-pane" id="caracteristicas">
						
						<div class="form">
							<?php
								echo $this->Form->input('sex', array('options' => $options['sex'], 'empty' => 'Selecionar') );
								echo $this->Form->input('color', array('options' => $options['color'], 'empty' => 'Selecionar') );
								echo $this->Form->input('material', array('options' => $options['material'], 'empty' => 'Selecionar') );
								echo $this->Form->input('format', array('options' => $options['format'], 'empty' => 'Selecionar') );
								echo $this->Form->input('size', array('options' => $options['size'], 'empty' => 'Selecionar') );
								echo $this->Form->input('type', array('options' => $options['type'], 'empty' => 'Selecionar') );
							?>
						</div> <!-- .form -->

					</div> <!-- .tab-pane -->
				</div> <!-- .tab-content -->

				<div class="form">
					<?php echo $this->Form->end(__('Submit')); ?>
				</div> <!-- .form -->

				<script>
				  $(function () {
				    $('#tabs-glass a:first').tab('show');
				  })
				</script>

			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

	
</div>