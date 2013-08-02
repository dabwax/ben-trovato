<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Configurações'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Configurações'); ?></small>

						<a href="<?php echo $this->Html->url( array('action' => 'add') ); ?>" class="btn btn-primary">Adicionar</a>
					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<table class="table table-bordered table-hover table-index span12">
					<tr>
						<th><?php echo $this->Paginator->sort('name'); ?></th>
						<th><?php echo $this->Paginator->sort('value', 'Valor'); ?></th>
						<th class="actions"><?php echo __('Ações'); ?></th>
					</tr>
					<?php foreach ($settings as $setting): ?>
						<tr>
							<td><?php echo h($setting['Setting']['name']); ?>&nbsp;</td>
							<td><?php echo h($setting['Setting']['value']); ?>&nbsp;</td>
							<td class="actions">
								<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $setting['Setting']['id'])); ?>
								<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $setting['Setting']['id']), null, __('Are you sure you want to delete # %s?', $setting['Setting']['id'])); ?>
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