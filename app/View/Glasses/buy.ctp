<div class="row">
	<h3 id="vamos-escolher-suas-lentes">
		Vamos escolher suas lentes? Elas estão inclusas no preço! *
	</h3> <!-- #vamos-escolher-suas-lentes -->
</div>

<?php echo $this->Form->create('OrderItem'); ?>

<!-- ID do Óculos Escolhido -->
<?php echo $this->Form->hidden('glass_id', array('value' => $glass['Glass']['id']) ); ?>

<!-- Se o Óculos Escolhido for de Grau -->

<?php echo $this->Form->input('lense_type', array('options' => array('de_grau' => 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail', 'sem_grau' => 'Lentes sem grau – vou usar apenas por estilo', 'demonstracao' => 'Lentes de demonstração – vou colocar em outro lugar'), 'type' => 'radio', 'legend' => false) ); ?>

<?php echo $this->Form->end(); ?>