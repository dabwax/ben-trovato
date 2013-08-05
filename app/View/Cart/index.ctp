<?php if($orderItems <= 0) { ?>
<div class="row" style="margin-bottom: 30px;">
	<div class="span12 text-center">
		<h4>O seu carrinho parece vazio.</h4>

		<a href="#" onclick="alert('Em breve!');">Que tal experimentar os nossos óculos no nosso Espelho Virtual?</a>
	</div>
</div>
<?php } ?>

<?php if($orderItems > 0) { ?>

<div class="row order-block">
	<div class="span12">

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
					</td>
				</tr>
				<?php endforeach; ?>
			</tbody>
		</table> <!-- .table -->

	</div> <!-- .span12 -->

</div> <!-- .order-block -->

<?php } ?>