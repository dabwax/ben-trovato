<?php if(count($orderItems) <= 0) { ?>
<div class="row" style="margin-bottom: 30px;">
	<div class="span12 text-center" style="margin-left: 0px;">
		<h4>O seu carrinho parece vazio.</h4>

		<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'view', $randomGlass['Glass']['id']) ); ?>">Que tal experimentar o nosso óculos <?php echo $randomGlass['Glass']['name']; ?>?</a>
	</div>
</div>
<?php } ?>

<?php if(count($orderItems) > 0) { ?>

<?php echo $this->Form->create('Order'); ?>

<div class="row order-block">
	<div class="span12" style="margin-left: 0px;">

		<h3 class="order-block-title">Revise seu Pedido</h3>

		<table class="table-bordered table table-hover">
			<tbody>
				<?php foreach($orderItems as $orderItem) : ?>
				<tr>
					<td>
						<!-- Link do Óculos -->
						<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'view', $orderItem['Glass']['id']) ); ?>">
							<!-- Imagem do Óculos -->
							<?php echo $this->Loja->imagem('/glass/photo_1/' . $orderItem['Glass']['photo_1_dir'] . '/' . $orderItem['Glass']['photo_1'], array('w' => '350', 'h' => '140') ); ?>
						</a>
					</td>
					<td>
						<!-- Informações Gerais -->
						<p class="nome-do-oculos">
							<?php echo $orderItem['Glass']['name']; ?>
						</p> <!-- .nome-do-oculos -->

						<p class="descricao-da-lente">
							<?php echo $orderItem['Lense']['label']; ?>
						</p> <!-- .descricao-da-lente -->
					</td>
					<td>
						<!-- Preço -->
						<?php echo $this->Loja->preco($orderItem['price']); ?>

						<?php echo $this->Html->link('excluir', array('action' => 'delete_order_item', $orderItem['OrderItem']['id']), array('class' => 'btn btn-small btn-danger') ); ?>
					</td>
				</tr>
				<?php endforeach; ?>
			</tbody>
			<tfoot>
				<tr>
					<td>
						
					</td>
					<td>
						Total: <?php echo $this->Loja->preco($totalPrice); ?>
					</td>
					<td>
					</td>
				</tr>
				<tr>
					<td>
						
					</td>
					<td>
						<?php echo $this->Html->link('Continuar Comprando', '/', array('class' => 'btn') ); ?>
						<?php //echo $this->Html->link('Fechar Pedido', 'javascript:;', array('class' => 'btn btn-success') ); ?>
					</td>
					<td>
						
					</td>
				</tr>
			</tfoot>
		</table> <!-- .table -->

	</div> <!-- .span12 -->

</div> <!-- .order-block -->

<div class="row order-block">
	<div class="span12" style="margin-left: 0px;">

		<h3 class="order-block-title">Detalhes da Sua Conta</h3>

		<!-- Se o usuário estiver logado -->
		<?php if(AuthComponent::user()) { ?>
		
		<p>
			Olá, <strong><?php echo $userLogged['User']['name']; ?></strong> (<?php echo $userLogged['Client']['email']; ?>)!
		</p>

		<p>
			Você pode editar seu nome ou seu endereço de e-mail qualquer hora, <a href="<?php echo $this->Html->url( array('controller' => 'users', 'action' => 'account') ); ?>">visitando esta página</a>.
		</p>

		<?php } ?>
		<!-- Fim - Se o usuário estiver logado -->

		<!-- Se o usuário não estiver logado -->

		<!-- Fim - Se o usuário não estiver logado -->
	</div> <!-- .span12 -->

</div> <!-- .order-block -->

<div class="row order-block">
	<div class="span12" style="margin-left: 0px;">

		<h3 class="order-block-title">Endereço de Entrega</h3>

		<div class="span5 bloco-endereco">
			<h4>Endereço de Cobrança</h4>

			<div class="clear clearfix" style="margin-top: 20px;"></div>

			<?php echo $this->Form->input('Client.billing_is_same_as_delivery_address', array('label' => 'O mesmo que o endereço de entrega', 'type' => 'checkbox', 'div' => array('style' => 'font-size: 12px;') ) ); ?>

			<div class="formulario-de-cobranca">

				<div class="clear clearfix" style="margin-top: 20px;"></div>

				<?php echo $this->Form->input('Client.billing_company', array('label' => 'Nome da Empresa / Escritório (opcional):', 'value' => $userLogged['Client']['billing_company'], 'class' => 'required obrigatorio') ); ?>

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

			</div> <!-- .formulario-de-cobranca -->


		</div> <!-- .span6 -->

		<div class="span5 bloco-endereco offset1">
			<h4>Endereço de Entrega</h4>

			<div class="clear clearfix" style="margin-top: 60px;"></div>

			<?php echo $this->Form->input('Client.delivery_company', array('label' => 'Nome da Empresa / Escritório (opcional):', 'value' => $userLogged['Client']['delivery_company']) ); ?>

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

		</div> <!-- .span6 -->

	</div> <!-- .span12 -->

</div> <!-- .order-block -->

<div class="row order-block">
	<div class="span12" style="margin-left: 0px;">

		<h3 class="order-block-title">Cupom de Desconto</h3>

		<?php echo $this->Form->input('coupon', array('label' => 'Você tem algum cupom de desconto nosso? Se tiver, basta usá-lo:') ); ?>

	</div>
</div> <!-- .order-block -->

<div class="row order-block">
	<div class="span12 text-center" style="margin-left: 0px;">

		<h3 class="order-block-title">Pagamento</h3>

		<?php echo $this->Form->button('Finalizar Pedido', array('class' => 'btn btn-success btn-large', 'style' => 'margin-top: 20px; margin-bottom: 20px;') ); ?>
	</div>
</div> <!-- .order-block -->

<?php echo $this->Form->end(); ?>

<?php } ?>

<?php echo $this->Html->script('http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js'); ?>
<?php echo $this->Html->script('http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/localization/messages_pt_BR.js'); ?>

<script type="text/javascript">
	$(document).ready(function() {

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
</script>