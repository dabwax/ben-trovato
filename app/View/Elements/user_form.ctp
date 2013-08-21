<div class="control-group">
	<?php echo $this->Form->input('name', array('class' => 'required', 'div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('Client.cpf', array('class' => 'campo-de-cpf required', 'div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('username', array('class' => 'required', 'div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('password', array('class' => 'required', 'div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('Client.phone', array('class' => 'required', 'class' => 'campo-de-telefone', 'div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->input('Client.email', array('class' => 'required', 'div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
</div>

<div class="control-group">
	<?php echo $this->Form->submit('Cadastrar', array('class' => 'btn btn-large btn-success', 'div' => array('class' => 'controls', 'style' => 'margin-left: 180px;') ) ); ?>
</div>