<div class="login">
  <h1>Área Restrita - Ben Trovato</h1>

  <div style="text-align: center; font-size: 12px; color: red;">
  	<?php echo $this->Session->flash(); ?>
  </div>
  
  <?php echo $this->Session->flash('auth'); ?>
  <p class="text-center" style="font-size: 12px; background: #F5F5F5; color: #333;">Insira as credenciais corretas para acessar o sistema administrativo da loja.</p>
  <?php echo $this->Form->create('User'); ?>
    <p>
    	<?php echo $this->Form->input('username', array('placeholder' => 'Usuário', 'label' => false) ); ?>
    </p>
    <p>
    	<?php echo $this->Form->input('password', array('placeholder' => 'Senha', 'label' => false) ); ?>
    </p>
    <p class="submit">
    	<?php echo $this->Form->submit('Login', array('class' => 'btn btn-primary', 'div' => false) ); ?>
    </p>
  	<?php echo $this->Form->end(); ?>
</div>