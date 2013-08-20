<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Usuários'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Usuários'); ?> - Informações do Pedido <?php echo $order['Order']['reference'] ?>: <?php echo $order['User']['name']; ?></small>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<h4>Informações do Pedido: <?php echo $order['Order']['reference']; ?></h4>

				<table class="table table-bordered table-hover table-index span12">
					<tr>
						<td>
							Referência
						</td>
						<td>
							<?php echo $order['Order']['reference']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Tipo de Pagamento
						</td>
						<td>
							<?php if($order['Order']['payment_type'] == null) { echo 'Não Disponível'; } else { echo $order['Order']['payment_type']; } ?>
						</td>
					</tr>
					<tr>
						<td>
							Status de Pagamento
						</td>
						<td>
							<?php if($order['Order']['payment_status'] == null) { echo 'Não Disponível'; } else { echo $order['Order']['payment_status']; } ?>
						</td>
					</tr>
					<tr>
						<td>
							Data de Pagamento
						</td>
						<td>
							<?php if($order['Order']['payment_date'] == null) { echo 'Não Disponível'; } else { echo $order['Order']['payment_date']; } ?>
						</td>
					</tr>
					<tr>
						<td>
							Itens Totais
						</td>
						<td>
							<?php echo $order['Order']['total_items']; ?> itens
						</td>
					</tr>
					<tr>
						<td>
							Preço Total
						</td>
						<td>
							<?php echo $this->Loja->preco($order['Order']['total_price']); ?>
						</td>
					</tr>
					<tr>
						<td>
							Cupom de Desconto
						</td>
						<td>
							<?php if($order['Order']['coupon'] == null) { echo 'Não Disponível'; } else { echo $order['Order']['coupon']; } ?>
						</td>
					</tr>
				</table>

				<h4>Informações do Carrinho</h4>

				<?php $items = json_decode($order['Order']['json_items']); ?>

				<?php foreach($items as $item) : ?>

				<table class="table table-bordered table-hover table-index span12">
					<tr>
						<td>
							Nome
						</td>
						<td>
							<?php echo $item->Glass->name; ?>
						</td>
					</tr>
					<tr>
						<td>
							Cor
						</td>
						<td>
							<?php echo $item->Glass->color2; ?>
						</td>
					</tr>
					<tr>
						<td>
							Lente
						</td>
						<td>
							<?php echo $item->Lense->name; ?>
						</td>
					</tr>
				</table>

				<?php endforeach; ?>

				<?php $user['User'] = $order['User']; ?>
				<?php $user['Client'] = $order['User']['Client']; ?>

				<?php echo $this->element('user_view', array('user' => $user) ); ?>
				
			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

	
</div>