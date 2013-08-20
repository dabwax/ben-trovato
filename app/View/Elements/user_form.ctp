<div class="control-group">
	<?php echo $this->Form->input('name', array('div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('Client.cpf', array('class' => 'campo-de-cpf', 'div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('username', array('div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('password', array('div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('Client.phone', array('class' => 'campo-de-telefone', 'div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('Client.email', array('div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->submit('Cadastrar', array('class' => 'btn btn-large btn-success', 'div' => array('class' => 'controls', 'style' => 'margin-left: 180px;') ) ); ?>
</div>