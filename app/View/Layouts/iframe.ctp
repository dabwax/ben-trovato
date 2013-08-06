<!DOCTYPE html>
<html lang="pt-BR" dir="ltr">
<head>
	<meta charset="UTF-8">
	<title>Ben Trovato - Handmade Eyewear</title>

	<!-- Favicon -->
	<link rel="shortcut icon" href="<?php echo $this->Html->url('/img/favicon.ico'); ?>">

	<!-- CSS -->
	<?php echo $this->Html->css('/bootstrap/css/bootstrap.min.css'); ?>
	<?php echo $this->Html->css('http://fonts.googleapis.com/css?family=Ubuntu:300,400'); ?>
	<?php echo $this->Html->css('iframe.css'); ?>

	<!-- JS -->
	<?php echo $this->Html->script('jquery-1.10.2.min.js'); ?>
	<?php echo $this->Html->script('jquery-migrate-1.2.1.min.js'); ?>
	<?php echo $this->Html->script('/bootstrap/js/bootstrap.min.js'); ?>
	<?php echo $this->Html->script('jcarousellite_1.0.1.pack.js'); ?>
	<?php echo $this->Html->script('http://libs.us.youarethemodel.com/js/fitPhoto/FBX.fitPhoto.js.php?cid=' . $configuracoes['fittingbox_customerid']); ?>
	<?php echo $this->Html->script('iframe.js'); ?>

	<?php echo $configuracoes['google_analytics']; ?>
</head>
<?php echo $configuracoes['clicktale_before_body_tag']; ?>
<body>

	<div class="container" style="width: 780px;">
		<?php echo $this->fetch('content'); ?>
	</div> <!-- .container -->
	
</body>
<?php echo $configuracoes['click_tale_after_body_tag']; ?>
</html>