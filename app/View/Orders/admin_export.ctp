<table>
	<thead>
		<tr>
			<th>
				Referência
			</th>
			<th>
				Token
			</th>
			<th>
				Tipo de Pagamento
			</th>
			<th>
				Status de Pagamento
			</th>
			<th>
				Data de Pagamento
			</th>
			<th>
				Itens Totais
			</th>
			<th>
				Preço Total
			</th>
			<th>
				Cupom
			</th>
			<th>
				Produtos
			</th>
			<th>
				Usuário
			</th>
			<th>
				Nome
			</th>
			<th>
				CPF
			</th>
			<th>
				Telefone
			</th>
			<th>
				E-mail
			</th>
			<th>
				Cobrança - Empresa
			</th>
			<th>
				Cobrança - Endereço 1
			</th>
			<th>
				Cobrança - Endereço 2
			</th>
			<th>
				Cobrança - Endereço 3
			</th>
			<th>
				Cobrança - Endereço 4
			</th>
			<th>
				Cobrança - Cidade
			</th>
			<th>
				Cobrança - Estado
			</th>
			<th>
				Cobrança - CEP
			</th>
			<th>
				Entrega - Empresa
			</th>
			<th>
				Entrega - Endereço 1
			</th>
			<th>
				Entrega - Endereço 2
			</th>
			<th>
				Entrega - Endereço 3
			</th>
			<th>
				Entrega - Endereço 4
			</th>
			<th>
				Entrega - Cidade
			</th>
			<th>
				Entrega - Estado
			</th>
			<th>
				Entrega - CEP
			</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($orders as $order) : ?>
		<tr>
			<td>
				<?php echo $order['Order']['reference']; ?>
			</td>
			<td>
				<?php echo $order['Order']['token']; ?>
			</td>
			<td>
				<?php if($order['Order']['payment_type'] == null) { echo 'Não Disponível'; } else { echo $order['Order']['payment_type']; } ?>
			</td>
			<td>
				<?php if($order['Order']['payment_status'] == null) { echo 'Não Disponível'; } else { echo $order['Order']['payment_status']; } ?>
			</td>
			<td>
				<?php if($order['Order']['payment_date'] == null) { echo 'Não Disponível'; } else { echo $order['Order']['payment_date']; } ?>
			</td>
			<td>
				<?php echo $order['Order']['total_items']; ?> itens
			</td>
			<td>
				<?php echo $this->Loja->preco($order['Order']['total_price']); ?>
			</td>
			<td>
				<?php if($order['Order']['coupon'] == null) { echo 'Não Disponível'; } else { echo $order['Order']['coupon']; } ?>
			</td>
			<?php $items = json_decode($order['Order']['json_items']); ?>
			<td>
				<?php foreach($items as $item) : ?>
					Nome: <?php echo $item->Glass->name; ?> - Cor: <?php echo $item->Glass->color2; ?> - Lente: <?php echo $item->Lense->name; ?>
					<br />
				<?php endforeach; ?>
			</td>
			<td>
				<?php echo $order['User']['username']; ?>
			</td>
			<td>
				<?php echo $order['User']['name']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['cpf']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['phone']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['email']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['billing_company']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['billing_street1']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['billing_street2']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['billing_street3']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['billing_street4']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['billing_city']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['billing_state']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['billing_cep']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['delivery_company']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['delivery_street1']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['delivery_street2']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['delivery_street3']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['delivery_street4']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['delivery_city']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['delivery_state']; ?>
			</td>
			<td>
				<?php echo $order['User']['Client']['delivery_cep']; ?>
			</td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>

