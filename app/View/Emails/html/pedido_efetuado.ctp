<h3>Olá, <?php echo $userLogged['User']['name']; ?>!</h3>

<p>Você fez um pedido com o código de referência <strong><?php echo $reference; ?></strong>.</p>

<p>Caso no seu pedido seja necessário enviar receita, envie-a para: receitas@bentrovato.com.br.<br /><strong>Não esqueça de enviar também o código de referência.</strong></p>

<p>Os produtos que você comprou foram:</p>

<table class="table-bordered table table-hover">
	<tbody>
		<?php foreach($orderItems as $orderItem) : ?>
		<tr>
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
	</tfoot>
</table> <!-- .table -->