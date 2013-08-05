<?php if(count($orderItems) <= 0) { ?>
<div class="row" style="margin-bottom: 30px;">
	<div class="span12 text-center" style="margin-left: 0px;">
		<h4>O seu carrinho parece vazio.</h4>

		<a href="#" onclick="alert('Em breve!');">Que tal experimentar os nossos óculos no nosso Espelho Virtual?</a>
	</div>
</div>
<?php } ?>

<?php if(count($orderItems) > 0) { ?>

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
						<?php echo $this->Html->link('Fechar Pedido', 'javascript:;', array('class' => 'btn btn-success') ); ?>
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
			Olá, <?php echo $userLogged['User']['name']; ?> (<?php echo $userLogged['Client']['email']; ?>)!
		</p>

		<?php } ?>
		<!-- Fim - Se o usuário estiver logado -->

		<!-- Se o usuário não estiver logado -->

		<!-- Fim - Se o usuário não estiver logado -->
	</div> <!-- .span12 -->

</div> <!-- .order-block -->
<?php } ?>