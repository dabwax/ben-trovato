<!DOCTYPE html>
<html lang="pt-BR" dir="ltr">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php echo $storeName; ?> - Administrador da Loja</title>

	<!-- CSS -->
	<?php echo $this->Html->css('bootstrap.min.css'); ?>
	<?php echo $this->Html->css('bootstrap-glyphicons.css'); ?>
	<?php echo $this->Html->css('multi-select.css'); ?>
	<?php echo $this->Html->css('admin.css'); ?>

	<!-- JS -->
	<?php echo $this->Html->script('jquery-1.10.2.min.js'); ?>
	<?php echo $this->Html->script('jquery-migrate-1.2.1.min.js'); ?>
	<?php echo $this->Html->script('bootstrap.min.js'); ?>
	<?php echo $this->Html->script('jquery.multi-select.js'); ?>
	<?php echo $this->Html->script('admin.js'); ?>
</head>
<body>
	<div class="navbar">
		<div class="container">

			<div class="row">

			  <a class="navbar-brand" href="<?php echo $this->Html->url('/admin'); ?>"><?php echo $storeName; ?></a>
			  
			  <ul class="nav navbar-nav">
			    <li 
			    <?php if($this->params['controller'] == 'home' && $this->params['action'] == 'admin_index') { ?>class="active"<?php } ?>>
			    	<a href="<?php echo $this->Html->url('/admin'); ?>">
			    		<span class="glyphicon glyphicon-globe"></span> Home
			    	</a>
			    </li>
			    <li 
			    class="<?php if($this->params['controller'] == 'banners') { ?>active<?php } ?> dropdown">
			    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
			    		<span class="glyphicon glyphicon-picture"></span> Banners <b class="caret"></b>
			    	</a>
			    	<ul class="dropdown-menu">
			    		<li>
			    			<a href="<?php echo $this->Html->url( array('controller' => 'banners', 'action' => 'add') ); ?>">Adicionar</a>
			    		</li>
			    		<li>
			    			<a href="<?php echo $this->Html->url( array('controller' => 'banners', 'action' => 'index') ); ?>">Listar</a>
			    		</li>
			    	</ul>
			    </li>
			    <li 
			    class="<?php if($this->params['controller'] == 'glasses') { ?>active<?php } ?> dropdown">
			    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
			    		<span class="glyphicon glyphicon-eye-open"></span> Óculos <b class="caret"></b>
			    	</a>
			    	<ul class="dropdown-menu">
			    		<li>
			    			<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'add') ); ?>">Adicionar</a>
			    		</li>
			    		<li>
			    			<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'index') ); ?>">Listar</a>
			    		</li>
			    	</ul>
			    </li>
			    <li 
			    class="<?php if($this->params['controller'] == 'users') { ?>active<?php } ?> dropdown">
			    	<a href="#" class="dropdown-toggle" data-toggle="dropdown">
			    		<span class="glyphicon glyphicon-user"></span> Usuários <b class="caret"></b>
			    	</a>
			    	<ul class="dropdown-menu">
			    		<li>
			    			<a href="<?php echo $this->Html->url( array('controller' => 'users', 'action' => 'index', 'admin') ); ?>">Administradores</a>
			    		</li>
			    		<li>
			    			<a href="<?php echo $this->Html->url( array('controller' => 'users', 'action' => 'index', 'client') ); ?>">Clientes</a>
			    		</li>
			    	</ul>
			    </li>
			    <li 
			    class="<?php if($this->params['controller'] == 'settings') { ?>active<?php } ?>">
			    	<a href="<?php echo $this->Html->url( array('controller' => 'settings', 'action' => 'index') ); ?>">
			    		<span class="glyphicon glyphicon-wrench"></span> Configurações</b>
			    	</a>
			    </li>
			    <li>
			    	<a href="<?php echo $this->Html->url('/'); ?>" target="_blank">
			    		<span class="glyphicon glyphicon-search"></span> Ver Loja</b>
			    	</a>
			    </li>
			    <li>
			    	<a href="<?php echo $this->Html->url( array('controller' => 'users', 'action' => 'logout') ); ?>">
			    		<span class="glyphicon glyphicon-remove"></span> Sair</b>
			    	</a>
			    </li>
			  </ul>

		  	</div> <!-- .row -->

		</div> <!-- .container -->
	</div> <!-- .navbar -->

	<div class="container">

		<?php echo $this->Session->flash(); ?>

		<?php echo $this->fetch('content'); ?>

	</div> <!-- .container -->

</body>
</html>