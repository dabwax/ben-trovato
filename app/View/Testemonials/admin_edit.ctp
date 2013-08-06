<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Depoimentos'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Depoimentos'); ?></small>

						<a href="<?php echo $this->Html->url( array('action' => 'index') ); ?>" class="btn btn-primary">Listar</a>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<div class="form">
				<?php echo $this->Form->create('Testemonial', array('type' => 'file') ); ?>
					<fieldset>
						<legend><?php echo __('Editar Depoimento'); ?></legend>
					<?php
						echo $this->Form->input('id');
						echo $this->Form->input('name');
						echo $this->Form->input('month', array('label' => 'Mês') );
						echo $this->Form->input('year', array('label' => 'Ano') );
						echo $this->Form->input('glass_id', array('label' => 'Óculos', 'class' => 'chosen-select', 'empty' => 'Selecionar', 'data-placeholder' => 'Clique aqui para selecionar um óculos. Você também pode escrever.') );
						echo $this->Form->input('testemonial', array('label' => 'Depoimento', 'class' => 'ckeditor') );
					?>
					</fieldset>
				<?php echo $this->Form->end(__('Submit')); ?>
				</div>

			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

</div>

<?php echo $this->Html->css('chosen.min.css'); ?>
<?php echo $this->Html->script('chosen.jquery.min.js'); ?>
<?php echo $this->Html->script('/ckeditor/ckeditor.js'); ?>
<script type="text/javascript">
	$(document).ready(function() {

		 $(".chosen-select").chosen({
		 	no_results_text: "Não encontrado"
		 });
	});
</script>