<style type="text/css">
	@font-face {
  font-family: 'Nothing You Could Do';
  font-style: normal;
  font-weight: 400;
  src: local('Nothing You Could Do'), local('NothingYouCouldDo'), url(http://themes.googleusercontent.com/static/fonts/nothingyoucoulddo/v3/jpk1K3jbJoyoK0XKaSyQAZsYoLsUhJo8DEpooYVMXYU.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 300;
  src: local('Open Sans Light'), local('OpenSans-Light'), url(http://themes.googleusercontent.com/static/fonts/opensans/v6/DXI1ORHCpsQm3Vp6mXoaTXhCUOGz7vYGh680lGh-uXM.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  src: local('Open Sans'), local('OpenSans'), url(http://themes.googleusercontent.com/static/fonts/opensans/v6/cJZKeOuBrn4kERxqtaUH3T8E0i7KZn-EPnyo3HZu7kw.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 600;
  src: local('Open Sans Semibold'), local('OpenSans-Semibold'), url(http://themes.googleusercontent.com/static/fonts/opensans/v6/MTP_ySUJH_bn48VBG8sNSnhCUOGz7vYGh680lGh-uXM.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 700;
  src: local('Open Sans Bold'), local('OpenSans-Bold'), url(http://themes.googleusercontent.com/static/fonts/opensans/v6/k3k702ZOKiLJc3WVjuplzHhCUOGz7vYGh680lGh-uXM.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: italic;
  font-weight: 300;
  src: local('Open Sans Light Italic'), local('OpenSansLight-Italic'), url(http://themes.googleusercontent.com/static/fonts/opensans/v6/PRmiXeptR36kaC0GEAetxh_xHqYgAV9Bl_ZQbYUxnQU.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: italic;
  font-weight: 400;
  src: local('Open Sans Italic'), local('OpenSans-Italic'), url(http://themes.googleusercontent.com/static/fonts/opensans/v6/xjAJXh38I15wypJXxuGMBobN6UDyHWBl620a-IRfuBk.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: italic;
  font-weight: 600;
  src: local('Open Sans Semibold Italic'), local('OpenSans-SemiboldItalic'), url(http://themes.googleusercontent.com/static/fonts/opensans/v6/PRmiXeptR36kaC0GEAetxn5HxGBcBvicCpTp6spHfNo.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: italic;
  font-weight: 700;
  src: local('Open Sans Bold Italic'), local('OpenSans-BoldItalic'), url(http://themes.googleusercontent.com/static/fonts/opensans/v6/PRmiXeptR36kaC0GEAetxjqR_3kx9_hJXbbyU8S6IN0.woff) format('woff');
}
label {
	margin-bottom: 14px;
}
label small {
	display: block;
	color: #999;
}
</style>

<div class="row">
	<div class="span10">

		<h3 id="vamos-escolher-suas-lentes" style="font-weight: normal; font-size: 17px; font-weight: 600; font-family: 'Open Sans'; text-transform: uppercase; margin-bottom: 30px;">
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

		<?php echo $this->Form->input('lense_type', array('options' => array('de_grau' => 'Lentes de grau – vou enviar uma cópia da minha receita por e-mail <small>com tratamento antirreflexo, antirrisco e proteção UVA/UVB</small>', 'sem_grau' => 'Lentes sem grau – vou usar apenas por estilo <small>com tratamento antirreflexo, antirrisco e proteção UVA/UVB</small>', 'demonstracao' => 'Lentes de demonstração – vou querer apenas a armação'), 'type' => 'radio', 'legend' => false) ); ?>

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

<?php echo $this->Form->button('Enviar para o Carrinho', array('class' => 'btn btn-finalizar-pedido hide') ); ?>

<?php echo $this->Form->end(); ?>

<?php if($_POST) { ?>
<script type="text/javascript">
	$(document).ready(function() {
		parent.$.colorbox.close();

		parent.location = '<?php echo $this->Html->url( array('controller' => 'cart', 'action' => 'index') ); ?>';
	});
</script>
<?php } ?>