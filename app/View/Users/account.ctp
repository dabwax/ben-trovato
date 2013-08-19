<div class="row">
	<div class="span12 text-left" style="margin-left: 0px;">
		<h4>MINHA CONTA</h4>
	</div>
</div>

<div class="row">
	<div class="span12 text-left" style="margin-left: 0px;">
		<?php echo $this->Form->create('User'); ?>

		<?php echo $this->Form->input('name', array('label' => 'Seu Nome') ); ?>

		<?php echo $this->Form->input('Client.email', array('label' => 'Seu E-mail') ); ?>

		<?php echo $this->Form->input('Client.cpf', array('label' => 'Seu CPF') ); ?>

		<?php echo $this->Form->input('Client.phone', array('label' => 'Seu Telefone') ); ?>

		<?php echo $this->Form->input('password', array('label' => 'Sua Senha') ); ?>

		<?php echo $this->Form->button('Atualizar meus Dados', array('class' => 'btn btn-success') ); ?>

		<?php echo $this->Form->end(); ?>
	</div>
</div>

<div class="row">
	<div class="span12 text-left" style="margin-left: 0px;">
		<h4>MEUS PEDIDOS</h4>
	</div>
</div>

<?php if(count($this->request->data['Order']) > 0) { ?>
<div class="row">
	<div class="span12 text-left" style="margin-left: 0px;">
		
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>
						Referência
					</th>
					<th>
						Status
					</th>
					<th>
						Produtos
					</th>
					<th>
						Preço Total
					</th>
					<th>
						Cupom de Desconto
					</th>
					<th>
						Data do Pedido
					</th>
				</tr>
			</thead>
			<tbody>
				<?php foreach($this->request->data['Order'] as $order) : ?>
				<tr>
					<td>
						<?php echo $order['reference']; ?>
					</td>
					<td>
						<p class="label"><?php if($order['payment_status'] != '') { echo $order['payment_status']; } else { echo 'Aguardando'; } ?></p>
					</td>
					<td>
						<?php $orderItems = json_decode($order['json_items']); ?>

						<?php foreach($orderItems as $item) : ?>

							<?php echo $item->Glass->name; ?> - <?php echo ucfirst($item->Glass->color); ?> - <?php echo $item->Lense->name; ?><br />

						<?php endforeach; ?>
					</td>
					<td>
						<?php echo $this->Loja->preco($order['total_price']); ?>
					</td>
					<td>
						<?php if($order['coupon'] != '') { echo $order['coupon']; } else { echo 'Nenhum.'; } ?>
					</td>
					<td>
						<?php $data = new DateTime($order['created']); echo $data->format('d/m/Y H:i:s'); ?>
					</td>
				</tr>
				<?php endforeach; ?>
			</tbody>
		</table>
	</div>
</div>
<?php } else { ?>
<div class="row">
	<div class="span12 text-left" style="margin-left: 0px;">

		<h4>Parece que você não tem nenhum pedido ainda.</h4>

	</div> <!-- .span12 -->
</div>
<?php } ?>