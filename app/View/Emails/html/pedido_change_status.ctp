<h3>Olá, <?php echo $user['User']['name']; ?>!</h3>

<p>Você fez um pedido com o código de referência <strong><?php echo $order['Order']['reference']; ?></strong>.</p>

<p>O statos do seu pedido foi alterado para: <strong><?php if($type == 'sent') { echo 'Enviado'; } else if($type == 'processing') { echo 'Em Processo'; } else { echo $type; } ?></strong>.</p>

<?php if($type == 'sent') { ?>
	<p>O código de rastreio do seu pedido é: <strong><?php echo $this->request->data['Order']['tracking_code']; ?></strong>.</p>
<?php } ?>