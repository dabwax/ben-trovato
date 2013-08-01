<!DOCTYPE html>
<html lang="pt-BR" dir="ltr">
<head>
	<meta charset="UTF-8">
	<title><?php echo $storeName; ?> - Administrador da Loja</title>

	<!-- CSS -->
	<?php echo $this->Html->css('bootstrap.min.css'); ?>
	<?php echo $this->Html->css('bootstrap-glyphicons.css'); ?>
</head>
<body>
	<div class="navbar">
		<div class="container">

			<div class="row">
			  <a class="navbar-brand" href="<?php echo $this->Html->url('/admin'); ?>"><?php echo $storeName; ?></a>
			  <ul class="nav navbar-nav">
			    <li 
			    <?php if($this->params['controller'] == 'home' && $this->params['action'] == 'admin_index') { ?>class="active"<?php } ?>>
			    	<a href="<?php echo $this->Html->url('/admin'); ?>"><span class="glyphicon glyphicon-globe"></span> Home</a>
			    </li>
			    <li 
			    <?php if($this->params['controller'] == 'banners') { ?>class="active"<?php } ?>>
			    	<a href="<?php echo $this->Html->url( array('controller' => 'banners', 'action' => 'index') ); ?>"><span class="glyphicon glyphicon-picture"></span> Banners</a>
			    </li>
			  </ul>
		  	</div>
		</div>
	</div> <!-- .navbar -->

	<div class="container">

		<?php echo $this->fetch('content'); ?>

	</div> <!-- .container -->

</body>
</html>