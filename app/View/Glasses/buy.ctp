<div class="row">
	<div class="span10">

		<h3 id="vamos-escolher-suas-lentes">
			Vamos escolher suas lentes? Elas estão inclusas no preço! *
		</h3> <!-- #vamos-escolher-suas-lentes -->

	</div> <!-- .span10 -->
</div> <!-- .row -->

<?php echo $this->Form->create('OrderItem'); ?>

<!-- ID do Óculos Escolhido -->
<?php echo $this->Form->hidden('glass_id', array('value' => $glass['Glass']['id']) ); ?>

<!-- Input para armazenar a lente selecionada -->
<?php echo $this->Form->hidden('lense_id'); ?>

<!-- Se o Óculos Escolhido for de Grau -->
<?php if($glass['Glass']['type'] == 'grau') { ?>

<div class="row lense-type-radios">
	<div class="span10">

		<?php echo $this->Form->input('lense_type', array('options' => array('de_grau' => 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail', 'sem_grau' => 'Lentes sem grau – vou usar apenas por estilo', 'demonstracao' => 'Lentes de demonstração – vou colocar em outro lugar'), 'type' => 'radio', 'legend' => false) ); ?>

	</div> <!-- .span10 -->
</div> <!-- .lense-type-radios -->

<?php } ?>
<!-- Fim - Se o Óculos Escolhido for de Grau -->

<!-- Se o Óculos Escolhido for de Sol -->
<?php if($glass['Glass']['type'] == 'solar') { ?>

<div class="row lense-type-radios">
	<div class="span10">

		<?php echo $this->Form->input('lense_type', array('options' => array('de_sol' => 'Lentes de sol – vou usar para proteger meus olhos <span>com proteção UVA/UVB</span>', 'de_sol_com_grau' => 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail <span>com proteção UVA/UVB</span>'), 'type' => 'radio', 'legend' => false) ); ?>

	</div> <!-- .span10 -->
</div> <!-- .lense-type-radios -->

<?php } ?>
<!-- Fim - Se o Óculos Escolhido for de Sol -->

<div class="row">
	<div class="span10">
		<hr />
	</div>
</div>

<?php echo $this->element('lenses_buy', array('lenses' => $lenses, 'type' => 'de_grau') ); ?>
<?php echo $this->element('lenses_buy', array('lenses' => $lenses, 'type' => 'sem_grau') ); ?>
<?php echo $this->element('lenses_buy', array('lenses' => $lenses, 'type' => 'demonstracao') ); ?>
<?php echo $this->element('lenses_buy', array('lenses' => $lenses, 'type' => 'de_sol') ); ?>
<?php echo $this->element('lenses_buy', array('lenses' => $lenses, 'type' => 'de_sol_com_grau') ); ?>

<div class="row alerta-inicial">
	<div class="span10">
		<p>
			*Receitas para astigmatismo superior a -2 terão custo adicional de R$40. Receitas para miopia superior a -4 necessitam lentes 1.67, ao custo adicional de R$140. Por enquanto, só atendemos receitas entre + 4 e - 10 esférico, com astigmatismo até -4.
		</p> <!-- .alerta-inicial -->
	</div> <!-- .span10 -->
</div> <!-- .alerta-inicial -->

<?php echo $this->Form->button('Enviar para o Carrinho', array('class' => 'btn btn-finalizar-pedido', 'disabled' => true) ); ?>

<?php echo $this->Form->end(); ?>

<?php if($_POST) { ?>
<script type="text/javascript">
	$(document).ready(function() {
		parent.$.colorbox.close();

		parent.location = '<?php echo $this->Html->url( array('controller' => 'cart', 'action' => 'index') ); ?>';
	});
</script>
<?php } ?>