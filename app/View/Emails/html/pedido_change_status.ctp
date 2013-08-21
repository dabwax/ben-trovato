<h3>Olá, <strong style="color: #92d050;"><?php echo $user['User']['name']; ?></strong>!</h3>

<p>Seu pedido de número <strong style="color: #92d050;"><?php echo $order['Order']['reference']; ?></strong> realizado em <?php $d = new DateTime($order['Order']['created']); echo $d->format('d/m/Y H:i:s') ?> teve o status alterado para: <strong><?php if($type == 'sent') { echo 'Óculos Enviado'; } else if($type == 'processing') { echo 'Preparando Envio'; } else { echo $type; } ?></strong>.</p>

<?php if($type == 'sent') { ?>
	<strong>O código de rastreio para este pedido é: <?php echo $order['Order']['tracking_code']; ?>.</strong>
<?php } ?>

<?php if($type == 'waiting') { ?>
	<p>Nós ainda não recebemos a receita para este pedido, e não podemos iniciar a montagem dos seus óculos Ben Trovato.</p>

	<p>Por favor envie uma cópia da receita para o e-mail receita@bentrovato.com.br</p>
<?php } ?>

<p>Qualquer dúvida, entre em contato com a gente através do e-mail contato@bentrovato.com.br.</p>

<p>Equipe Ben Trovato</p>