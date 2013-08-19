<h3>Olá, <?php echo $userLogged['User']['name']; ?>!</h3>

<p>Você fez um pedido com o código de referência <strong><?php echo $reference; ?></strong>.</p>

<p>Caso no seu pedido seja necessário enviar receita, envie-a para: receitas@bentrovato.com.br.<br /><strong>Não esqueça de enviar também o código de referência.</strong></p>

<p>Os produtos que você comprou foram:</p>

<table class="table-bordered table table-hover" style="width: 100%; border: 1px solid #000;">
	<tbody>
		<?php foreach($orderItems as $orderItem) : ?>
		<tr>
			<td>
				<!-- Informações Gerais -->
				<p class="nome-do-oculos">
					<strong>Óculos:</strong> <?php echo $orderItem['Glass']['name']; ?>

					<strong>Cor:</strong> <?php echo $orderItem['Glass']['color2']; ?>

					<strong>Lente:</strong> <?php echo $orderItem['Lense']['name']; ?>
				</p> <!-- .nome-do-oculos -->
			</td>
			<td>
				<!-- Preço -->
				<strong>Preço:</strong> <?php echo $this->Loja->preco($orderItem['price']); ?>
			</td>
		</tr>
		<?php endforeach; ?>
		<?php if($coupon) { ?>
		<tr>
			<td>
				<strong>Cupom:</strong> <?php echo $coupon['Coupon']['number']; ?>
			</td>
			<td>
				<strong>Desconto:</strong> <?php echo $this->Loja->preco($coupon['Coupon']['discount']); ?>
			</td>
		</tr>
		<?php } ?>
	</tbody>
	<tfoot>
		<tr>
			<td>
				
			</td>
			<td>
				<strong>Total:</strong> <?php echo $this->Loja->preco($totalPrice); ?>
			</td>
			<td>
			</td>
		</tr>
	</tfoot>
</table> <!-- .table -->