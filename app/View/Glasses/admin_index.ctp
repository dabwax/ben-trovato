<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Óculos'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Óculos'); ?></small>

						<a href="<?php echo $this->Html->url( array('action' => 'add') ); ?>" class="btn btn-primary">Adicionar</a>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<p class="label">
				<?php
					echo $this->Paginator->counter(array(
					'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
					));
				?>
				</p>

				<table class="table table-bordered table-hover table-index span12">
					<tr>
						<th><?php echo $this->Paginator->sort('photo_1', 'Imagem'); ?></th>
						<th><?php echo $this->Paginator->sort('name', 'Nome'); ?></th>
						<th><?php echo $this->Paginator->sort('color2', 'Cor'); ?></th>
						<th><?php echo $this->Paginator->sort('price', 'Preço'); ?></th>
						<th><?php echo $this->Paginator->sort('sku', 'SKU'); ?></th>
						<th class="actions"><?php echo __('Ações'); ?></th>
					</tr>
					<?php foreach ($glasses as $glass): ?>
						<tr>
							<td><?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '240') ); ?>&nbsp;</td>
							<td><?php echo h($glass['Glass']['name']); ?>&nbsp;</td>
							<td><?php echo h($glass['Glass']['color2']); ?>&nbsp;</td>
							<td><?php echo $this->Loja->preco($glass['Glass']['price']); ?>&nbsp;</td>
							<td><?php echo h($glass['Glass']['sku']); ?>&nbsp;</td>
							<td class="actions">
								<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $glass['Glass']['id'])); ?>
								<?php echo $this->Html->link(__('Clonar'), array('action' => 'clone', $glass['Glass']['id']), array('class' => 'btn btn-success')); ?>
								<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $glass['Glass']['id']), null, __('Are you sure you want to delete # %s?', $glass['Glass']['id'])); ?>
							</td>
						</tr>
					<?php endforeach; ?>
				</table>

				<div class="paging btn-group">
					<?php
						echo $this->Paginator->prev('< ' . __('previous'), array('class' => 'btn'), null, array('class' => 'btn btn-primary disabled'));
						echo $this->Paginator->numbers(array('separator' => ''));
						echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'btn btn-primary disabled'));
					?>
				</div> <!-- .paging -->
				
			</div> <!-- .panel -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

	
</div>