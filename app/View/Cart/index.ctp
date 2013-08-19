<?php if(count($orderItems) <= 0) { ?>
<div class="row" style="margin-bottom: 30px;">
	<div class="span12 text-center" style="margin-left: 0px;">
		<h4>O seu carrinho parece vazio.</h4>

		<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'view', $randomGlass['Glass']['id']) ); ?>" style="color: #A4C400;">Que tal experimentar o nosso óculos <?php echo $randomGlass['Glass']['name']; ?>?</a>
	</div>
</div>
<?php } ?>

<?php if(count($orderItems) > 0) { ?>

<div class="row order-block">
	<div class="span12" style="margin-left: 0px;">

		<h3 class="order-block-title">Revise seu Pedido</h3>

		<div class="order-block-content" style="display: block;">

			<table class="table table-hover">
				<tbody>
					<?php foreach($orderItems as $orderItem) : ?>
					<tr>
						<td>
							<!-- Link do Óculos -->
							<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'view', $orderItem['Glass']['id']) ); ?>">
								<!-- Imagem do Óculos -->
								<?php echo $this->Loja->imagem($orderItem['Glass']['photo_1'], array('w' => '350', 'h' => '140') ); ?>
							</a>
						</td>
						<td>
							<!-- Informações Gerais -->
							<p class="nome-do-oculos">
								<?php echo $orderItem['Glass']['name']; ?>

								<?php echo $orderItem['Glass']['color2']; ?>
							</p> <!-- .nome-do-oculos -->

							<p class="descricao-da-lente">
								<?php echo $orderItem['Lense']['label']; ?>
							</p> <!-- .descricao-da-lente -->
						</td>
						<td>
							<!-- Preço -->
							<?php echo $this->Loja->preco($orderItem['price']); ?>

							<?php echo $this->Html->link('excluir', array('action' => 'delete_order_item', $orderItem['OrderItem']['id']), array('class' => 'btn btn-small btn-danger', 'style' => 'background: #c0392b; border: none;') ); ?>
						</td>
					</tr>
					<?php endforeach; ?>
				</tbody>
				<tfoot>
					<tr>
						<td>
							
						</td>
						<td>
						</td>
						<td style="text-align: center;">
							<strong style="font-size: 16px;">Total: <?php echo $this->Loja->preco($totalPrice); ?></strong>
						</td>
					</tr>
					<tr style="border: none;">
						<td style="border: none;">
							<?php echo $this->Html->link('<span class="icone-continuar" style="margin-right: 4px;"><</span> escolher + óculos', '/', array('class' => 'btn btn-small', 'style' => 'border: none;text-shadow: none;font-size: 12px;padding-top: 3px;color: #333;background: #afafaf;text-transform: uppercase;width: 140px;', 'escape' => false) ); ?>
						</td>
						<td style="border: none;">
						</td>
						<td style="border: none;">
							<?php if(AuthComponent::user()) { ?>
							<?php echo $this->Html->link('Continuar <span class="icone-continuar">></span>', 'javascript:;', array('class' => 'btn btn-success btn-prosseguir', 'data-target' => '.endereco-de-entrega', 'style' => 'width: 114px;', 'escape' => false) ); ?>
							<?php } else { ?>
							<?php echo $this->Html->link('Continuar <span class="icone-continuar">></span>', 'javascript:;', array('class' => 'btn btn-success btn-prosseguir', 'data-target' => '.detalhes-da-sua-conta', 'style' => 'width: 114px;', 'escape' => false) ); ?>
							<?php } ?>
						</td>
					</tr>
				</tfoot>
			</table> <!-- .table -->

		</div>

	</div> <!-- .span12 -->

</div> <!-- .order-block -->

<div class="row order-block">
	<div class="span12" style="margin-left: 0px;">

		<h3 class="order-block-title detalhes-da-sua-conta">Detalhes da Sua Conta</h3>

		<div class="order-block-content">

		<!-- Se o usuário estiver logado -->
		<?php if(AuthComponent::user()) { ?>
		
		<p>
			Olá, <strong><?php echo $userLogged['User']['name']; ?></strong> (<?php echo $userLogged['Client']['email']; ?>)!
		</p>

		<p>
			Você pode editar seu nome ou seu endereço de e-mail qualquer hora, <a href="<?php echo $this->Html->url( array('controller' => 'users', 'action' => 'account') ); ?>" style="color: #A4C400;">visitando esta página</a>.
		</p>

		<?php echo $this->Html->link('Continuar <span class="icone-continuar">></span>', 'javascript:;', array('class' => 'btn btn-success btn-prosseguir pull-right', 'style' => 'width: 114px;', 'data-target' => '.endereco-de-entrega', 'escape' => false) ); ?>

		<?php } ?>
		<!-- Fim - Se o usuário estiver logado -->

		<!-- Se o usuário não estiver logado -->
		<?php if(!AuthComponent::user()) { ?>
			<div class="span5 form-usuario-login text-left" style="border-right: 1px solid #CCC; position: relative; left: 50px;">

				<h3 style="text-align: left; font-size: 22px;">LOGIN</h3>
				<?php echo $this->Form->create('User', array('class' => 'form-horizontal', 'url' => array('controller' => 'users', 'action' => 'login') ) ); ?>

				<?php echo $this->Form->hidden('redirect', array('value' => Router::url( array('controller' => 'cart', 'action' => 'index'), true ) . '#detalhes-da-sua-conta' ) ); ?>

				<div class="control-group">
					<?php echo $this->Form->input('username', array('div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
				</div>

				<div class="control-group">
					<?php echo $this->Form->input('password', array('div' => array('class' => 'controls'), 'label' => array('class' => 'control-label') ) ); ?>
				</div>

				<div class="control-group">
					<?php echo $this->Form->submit('Entrar', array('class' => 'btn btn-large btn-success', 'div' => array('class' => 'controls', 'style' => 'margin-left: 212px;') ) ); ?>
				</div>

				<?php echo $this->Form->end(); ?>
			</div>

			<style type="text/css">
				.form-usuario-login .control-label, .form-criar-conta .control-label {
					width: 60px;
					text-align: left;
				}
			</style>

			<div class="span5 offset1 form-criar-conta text-left" style="position: relative; left: 50px;">

				<h3 style="text-align: left; font-size: 22px;">CADASTRE-SE</h3>

				<?php echo $this->Form->create('User', array('class' => 'form-horizontal form-criacao-de-conta', 'url' => array('controller' => 'users', 'action' => 'ajax_add') ) ); ?>

				<?php echo $this->Form->hidden('redirect', array('value' => Router::url( array('controller' => 'cart', 'action' => 'index'), true ) . '#detalhes-da-sua-conta' ) ); ?>

				<?php echo $this->element('user_form'); ?>

				<?php echo $this->Form->end(); ?>
			</div>
		<?php } ?>
		<!-- Fim - Se o usuário não estiver logado -->

		</div>

	</div> <!-- .span12 -->

</div> <!-- .order-block -->

<?php if(AuthComponent::user()) { ?>

<?php echo $this->Form->create('Order'); ?>

<div class="row order-block">
	<div class="span12" style="margin-left: 0px;">

		<h3 class="order-block-title endereco-de-entrega">Endereço de Entrega</h3>

		<div class="order-block-content">

		<div class="span5 bloco-endereco">
			<h4>Endereço de Cobrança</h4>

			<div class="clear clearfix" style="margin-top: 20px;"></div>

			<?php echo $this->Form->input('Client.billing_is_same_as_delivery_address', array('label' => 'O mesmo que o endereço de entrega', 'type' => 'checkbox', 'div' => array('style' => 'font-size: 12px;') ) ); ?>

			<div class="formulario-de-cobranca">

				<div class="clear clearfix" style="margin-top: 20px;"></div>


				<?php echo $this->Form->input('Client.billing_cep', array('label' => 'CEP:', 'value' => $userLogged['Client']['billing_cep'], 'div' => array('class' => 'span2', 'style' => 'margin-left: 0px;'), 'class' => 'required obrigatorio' ) ); ?>

				<?php echo $this->Html->image('ajax-loader.gif', array('style' => 'float: left; margin-top: 32px; display: none;', 'class' => 'ajax-loader-billing') ); ?>

				<div class="clear clearfix"></div>

				<?php echo $this->Form->input('Client.billing_street1', array('label' => 'Endereço:', 'value' => $userLogged['Client']['billing_street1'], 'div' => array('class' => 'span3', 'style' => 'margin-left: 0px;'), 'class' => 'required obrigatorio' ) ); ?>

				<?php echo $this->Form->input('Client.billing_street3', array('label' => 'Número:', 'value' => $userLogged['Client']['billing_street3'], 'div' => array('class' => 'span1'), 'class' => 'required obrigatorio' ) ); ?>

				<div class="clear clearfix"></div>

				<?php echo $this->Form->input('Client.billing_street4', array('label' => 'Complemento (opcional):', 'value' => $userLogged['Client']['billing_street4']) ); ?>

				<?php echo $this->Form->input('Client.billing_street2', array('label' => 'Bairro:', 'value' => $userLogged['Client']['billing_street2'], 'class' => 'required obrigatorio') ); ?>

				<div class="clear clearfix"></div>

				<?php echo $this->Form->input('Client.billing_state', array('label' => 'Estado:', 'value' => $userLogged['Client']['billing_state'], 'div' => array('class' => 'span1', 'style' => 'margin-left: 0px;'), 'class' => 'required obrigatorio' ) ); ?>

				<?php echo $this->Form->input('Client.billing_city', array('label' => 'Cidade:', 'value' => $userLogged['Client']['billing_city'], 'div' => array('class' => 'span3'), 'style' => 'width: 102%;', 'class' => 'required obrigatorio' ) ); ?>

				<div class="clear clearfix"></div>

				<?php echo $this->Form->input('Client.billing_company', array('label' => 'Nome da Empresa / Escritório (opcional):', 'value' => $userLogged['Client']['billing_company'], 'class' => 'required obrigatorio') ); ?>

			</div> <!-- .formulario-de-cobranca -->


		</div> <!-- .span6 -->

		<div class="span5 bloco-endereco offset1">
			<h4>Endereço de Entrega</h4>

			<div class="clear clearfix" style="margin-top: 60px;"></div>

			<?php echo $this->Form->input('Client.delivery_cep', array('label' => 'CEP:', 'value' => $userLogged['Client']['delivery_cep'], 'div' => array('class' => 'span2', 'style' => 'margin-left: 0px;'), 'class' => 'required obrigatorio') ); ?>

			<?php echo $this->Html->image('ajax-loader.gif', array('style' => 'float: left; margin-top: 32px; display: none;', 'class' => 'ajax-loader-delivery') ); ?>

			<div class="clear clearfix"></div>

			<?php echo $this->Form->input('Client.delivery_street1', array('label' => 'Endereço:', 'value' => $userLogged['Client']['delivery_street1'], 'div' => array('class' => 'span3', 'style' => 'margin-left: 0px;'), 'class' => 'required obrigatorio' ) ); ?>

			<?php echo $this->Form->input('Client.delivery_street3', array('label' => 'Número:', 'value' => $userLogged['Client']['delivery_street3'], 'div' => array('class' => 'span1'), 'class' => 'required obrigatorio' ) ); ?>

			<div class="clear clearfix"></div>

			<?php echo $this->Form->input('Client.delivery_street4', array('label' => 'Complemento (opcional):', 'value' => $userLogged['Client']['delivery_street4']) ); ?>

			<?php echo $this->Form->input('Client.delivery_street2', array('label' => 'Bairro:', 'value' => $userLogged['Client']['delivery_street2'], 'class' => 'required obrigatorio') ); ?>
			
			<div class="clear clearfix"></div>

			<?php echo $this->Form->input('Client.delivery_state', array('label' => 'Estado:', 'value' => $userLogged['Client']['delivery_state'], 'div' => array('class' => 'span1', 'style' => 'margin-left: 0px;'), 'class' => 'required obrigatorio') ); ?>

			<?php echo $this->Form->input('Client.delivery_city', array('label' => 'Cidade:', 'value' => $userLogged['Client']['delivery_city'], 'div' => array('class' => 'span3'), 'style' => 'width: 102%;', 'class' => 'required obrigatorio') ); ?>

			<div class="clear clearfix"></div>
			
			<?php echo $this->Form->input('Client.delivery_company', array('label' => 'Nome da Empresa / Escritório (opcional):', 'value' => $userLogged['Client']['delivery_company']) ); ?>

		</div> <!-- .span6 -->


			<?php echo $this->Html->link('Continuar <span class="icone-continuar">></span>', 'javascript:;', array('class' => 'btn btn-success btn-prosseguir pull-right', 'style' => 'width: 114px;', 'data-target' => '.cupom-de-desconto', 'escape' => false) ); ?>

		</div>

	</div> <!-- .span12 -->

</div> <!-- .order-block -->

<div class="row order-block">
	<div class="span12" style="margin-left: 0px;">

		<h3 class="order-block-title cupom-de-desconto">Cupom de Desconto</h3>

		<div class="order-block-content" style="text-align: center;">

		<?php echo $this->Form->input('coupon', array('label' => 'Você tem algum cupom de desconto nosso? Se tiver, basta usá-lo:', 'div' => false, 'maxlength' => '8') ); ?>

		<?php echo $this->Html->image('ajax-loader.gif', array('style' => 'display: inline-block; margin-top: -12px; margin-left: 12px; display: none;', 'class' => 'ajax-loader-coupon') ); ?>

		<p id="desconto-total" class="hide" style="font-size: 11px; color: #468847; font-weight: bold;">
			O desconto deste cupom é de R$ <span></span> reais.
		</p> <!-- #desconto-total -->

		<p id="erro-de-desconto" class="hide" style="font-size: 11px; color: #d9534f; font-weight: bold;">
			O cupom inserido não é válido.
		</p> <!-- #erro-de-desconto -->

		<div class="clear clearfix"></div>

		<?php echo $this->Html->link('Continuar <span class="icone-continuar">></span>', 'javascript:;', array('class' => 'btn btn-success btn-prosseguir pull-right', 'style' => 'width: 114px;', 'data-target' => '.pagamento', 'escape' => false) ); ?>

		</div>

	</div>
</div> <!-- .order-block -->

<div class="row order-block">
	<div class="span12 text-center" style="margin-left: 0px;">

		<h3 class="order-block-title pagamento">Pagamento</h3>

		<div class="order-block-content">

		<?php echo $this->Form->button('Finalizar Pedido', array('class' => 'btn btn-success btn-large pull-right', 'style' => 'margin-top: 20px; margin-bottom: 20px;') ); ?>

		</div>

	</div>
</div> <!-- .order-block -->

<?php echo $this->Form->end(); ?>

<?php } ?>

<?php } ?>

<?php echo $this->Html->script('http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js'); ?>
<?php echo $this->Html->script('http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/localization/messages_pt_BR.js'); ?>

<script type="text/javascript">
	$(document).ready(function() {

		$("#OrderCoupon").keyup(function() {
			var val = $(this).val();

			if(val.length >= 8) {

				$(".ajax-loader-coupon").fadeIn(100);

				$.ajax({
					type: 'POST',
					url: '<?php echo $this->Html->url( array('controller' => 'cart', 'action' => 'ajax_coupon') ); ?>',
					data: {'coupon': val},
					success: function(data) {
						$(".ajax-loader-coupon").fadeOut(100);

						if (parseFloat(data) > <?php echo number_format($totalPrice, 2, '.', ''); ?>) {
							$("#desconto-total,#erro-de-desconto").hide();
							$("#erro-de-desconto").html('O cupom inserido tem um desconto maior que o valor total do seu carrinho (R$ ' + data + '). Ele não será utilizado.');
							$("#erro-de-desconto").fadeIn(100);

							return false;
						}

						if(data != '') {
							$("#desconto-total").find('span').html(data);
							$("#desconto-total").fadeIn(100);
							$("#erro-de-desconto").hide();
						} else {
							$("#desconto-total").hide();
							$("#erro-de-desconto").fadeIn(100);
						}
					}
				});
			} else {
				$("#desconto-total,#erro-de-desconto").hide();
			}
		});

		$(".campo-de-cpf").mask("999.999.999-99");

		$(".btn-prosseguir").click(function() {
			var target = $(this).data('target');
			
			var hash = target.replace('.', '#');

			window.location.hash = hash;

			$(target).click();
		});

		$(".order-block-title").click(function() {

			$("div.order-block-content").hide();

			var content = $(this).parent().find('div.order-block-content');

			if(content.is(':visible')) {
				content.hide();
			} else {
				content.show();
			}
		});

		$("#OrderIndexForm").validate({
			submitHandler: function(form) {

				$(form).find('button').attr('disabled');
				form.submit();
			}
		});

		$("#ClientBillingIsSameAsDeliveryAddress").click(function() {

			if($(this).prop('checked')) {
				$(".formulario-de-cobranca").hide();
				$(".formulario-de-cobranca .obrigatorio").removeClass('required');
			} else {
				$(".formulario-de-cobranca").show();
				$(".formulario-de-cobranca .obrigatorio").addClass('required');
			}
		});

		$("#ClientBillingIsSameAsDeliveryAddress").click();
		
		$("#ClientBillingCep").keyup(function() {
	 		if($(this).val().length >= 8) {

	 			$(".ajax-loader-billing").fadeIn(100);

	 			$.ajax({
	 				type: 'POST',
	 				data: {'cep': $(this).val()},
	 				url: '<?php echo $this->Html->url( array('action' => 'ajax_address') ); ?>',
	 				success: function(data) {

	 					$(".ajax-loader-billing").fadeOut(100);

	 					$("#ClientBillingStreet3").focus();

	 					$("#ClientBillingStreet1").val(data.logradouro);
	 					$("#ClientBillingStreet2").val(data.bairro);
	 					$("#ClientBillingState").val(data.uf);
	 					$("#ClientBillingCity").val(data.localidade);
	 				}
	 			});
	 		}
	 	});

	 	$("#ClientDeliveryCep").keyup(function() {
	 		if($(this).val().length >= 8) {

	 			$(".ajax-loader-delivery").fadeIn(100);

	 			$.ajax({
	 				type: 'POST',
	 				data: {'cep': $(this).val()},
	 				url: '<?php echo $this->Html->url( array('action' => 'ajax_address') ); ?>',
	 				success: function(data) {

	 					$(".ajax-loader-delivery").fadeOut(100);

	 					$("#ClientDeliveryStreet3").focus();

	 					$("#ClientDeliveryStreet1").val(data.logradouro);
	 					$("#ClientDeliveryStreet2").val(data.bairro);
	 					$("#ClientDeliveryState").val(data.uf);
	 					$("#ClientDeliveryCity").val(data.localidade);
	 				}
	 			});
	 		}
	 	});

	});

	$(window).load(function() {

		if(window.location.hash) {
			var hash = window.location.hash.substring(1);
			hash = '.' + hash;

			$(hash).click();
		}
	});
</script>