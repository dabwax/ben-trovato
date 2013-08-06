<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Depoimentos'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Depoimentos'); ?></small>

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
						<th><?php echo $this->Paginator->sort('name', 'Nome'); ?></th>
						<th><?php echo $this->Paginator->sort('month', 'Mês'); ?></th>
						<th><?php echo $this->Paginator->sort('year', 'Ano'); ?></th>
						<th><?php echo $this->Paginator->sort('Glass.name', 'Óculos'); ?></th>
						<th class="actions"><?php echo __('Ações'); ?></th>
					</tr>
					<?php foreach ($testemonials as $testemonial): ?>
						<tr>
							<td><?php echo h($testemonial['Testemonial']['name']); ?>&nbsp;</td>
							<td><?php echo h($testemonial['Testemonial']['month']); ?>&nbsp;</td>
							<td><?php echo h($testemonial['Testemonial']['year']); ?>&nbsp;</td>
							<td><?php echo h($testemonial['Glass']['name']); ?> - <?php echo h($testemonial['Glass']['color2']); ?>&nbsp;</td>
							<td class="actions">
								<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $testemonial['Testemonial']['id'])); ?>
								<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $testemonial['Testemonial']['id']), null, __('Are you sure you want to delete # %s?', $testemonial['Testemonial']['id'])); ?>
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