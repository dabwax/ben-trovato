<h3>Olá, <?php echo $userLogged['User']['name']; ?>!</h3>

<p>Você fez um pedido com o código de referência <strong><?php echo $reference; ?></strong>.</p>

<p>Caso necessário, envie uma cópia de sua receita junto com o número do pedido para o e-mail receita@bentrovato.com.br.<br /><strong>Não esqueça de enviar também o código de referência.</strong></p>

<strong>Resumo do Pedido</strong>

<table style="width: 100%;">
	<thead>
		<tr>
			<th style="background: gray; color: #FFF;">
				Óculos
			</th>
			<th style="background: gray; color: #FFF;">
				Lentes
			</th>
			<th style="background: gray; color: #FFF;">
				Preço
			</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($orderItems as $orderItem) : ?>
		<tr>
			<td style="background: #f2f2f2;">
				<?php echo $orderItem['Glass']['name']; ?> (<?php echo $orderItem['Glass']['color2']; ?>)
			</td>
			<td style="background: #f2f2f2;">
				<?php echo $orderItem['Lense']['label']; ?>
			</td>
			<td style="background: #f2f2f2;">
				<?php echo $this->Loja->preco($orderItem['price']); ?>
			</td>
		</tr>
		<?php endforeach; ?>
		<?php if($coupon) { ?>
		<tr>
			<td style="background: #f2f2f2;">
				Cupom de Desconto
			</td>
			<td style="background: #f2f2f2;">
				<?php echo $coupon['Coupon']['number']; ?>
			</td>
			<td style="background: #f2f2f2;">
				-<?php echo $this->Loja->preco($coupon['Coupon']['discount']); ?>
			</td>
		</tr>
		<?php } ?>
		<tr>
			<td style="background: #92d050;">
				
			</td>
			<td style="background: #92d050;">
				Total
			</td>
			<td style="background: #92d050;">
				<?php echo $this->Loja->preco($totalPrice); ?>
			</td>
		</tr>
	</tbody>
</table> <!-- .table -->

<strong>
	Envio
</strong>

<table>
	<thead>
		<tr>
			<th style="background: gray; color: #FFF;">
				Endereço para Entrega
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style="background: #f2f2f2;">
				<?php echo $order['Client']['delivery_street1']; ?>
			</td>
			<td style="background: #f2f2f2;">
				<?php echo $order['Client']['delivery_street2']; ?>
			</td>
			<td style="background: #f2f2f2;">
				<?php echo $order['Client']['delivery_street3']; ?>
			</td>
			<td style="background: #f2f2f2;">
				<?php echo $order['Client']['delivery_street4']; ?>
			</td>
			<td style="background: #f2f2f2;">
				<?php echo $order['Client']['delivery_city']; ?>
			</td>
			<td style="background: #f2f2f2;">
				<?php echo $order['Client']['delivery_state']; ?>
			</td>
			<td style="background: #f2f2f2;">
				<?php echo $order['Client']['delivery_cep']; ?>
			</td>
		</tr>
	</tbody>
</table>