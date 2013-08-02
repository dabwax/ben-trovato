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
				  <li><a href="#informacoes" data-toggle="tab">Informações</a></li>
				  <li><a href="#caracteristicas" data-toggle="tab">Características</a></li>
				</ul>

				<?php echo $this->Form->create('Glass', array('type' => 'file') ); ?>

				<div class="tab-content" style="margin-top: 20px;">

					<div class="tab-pane active" id="geral">

						<p class="label" style="margin-bottom: 20px; display: inline-block;">
							Aqui encontram-se todas as informações gerais do óculos que você irá cadastrar, como o Nome e o SKU.
						</p>
						
						<div class="form">
							<?php
								echo $this->Form->input('name', array('required' => false) );
								echo $this->Form->input('sku', array('required' => false) );
								echo $this->Form->input('price', array('type' => 'text', 'required' => false) );
								
								echo $this->Form->input('Related', array('options' => $options['related'], 'class' => 'multiSelect') );

								echo $this->Form->input('photo_1', array('type' => 'file', 'label' => 'Foto (ângulo: frontal)') );
								echo $this->Form->input('photo_2', array('type' => 'file', 'label' => 'Foto (ângulo: lateral)') );
								echo $this->Form->input('image_hover', array('type' => 'file', 'label' => 'Foto (efeito de mouseover)') );
							?>
						</div> <!-- .form -->

					</div> <!-- .tab-pane -->

					<div class="tab-pane" id="informacoes">

						<p class="label" style="margin-bottom: 20px; display: inline-block;">
							Aqui encontram-se todas as informações extras do óculos, como a descrição do seu estilo e as características da lente e da armação.
						</p>
						
						<div class="form">
							<?php
								echo $this->Form->input('the_style', array('class' => 'ckeditor') );
								echo $this->Form->input('character_frame', array('class' => 'ckeditor') );
								echo $this->Form->input('character_lenses', array('class' => 'ckeditor') );
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

				<?php echo $this->Html->script('jquery.price_format.min.js'); ?>
				<?php echo $this->Html->script('/ckeditor/ckeditor.js'); ?>

				<script type="text/javascript">
				  $(function () {

				  	// Efeito de Tabs
				    $('#tabs-glass a:first').tab('show');

				    // Máscara de Preço
				    $("#GlassPrice").priceFormat({
						prefix: 'R$ ',
						centsSeparator: ',',
						thousandsSeparator: ''
					});
				  })
				</script>

			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

	
</div>