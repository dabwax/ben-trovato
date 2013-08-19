<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Usuários'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Usuários'); ?> - <?php if($role == 'admin') { echo 'Administradores'; } else { echo 'Clientes'; } ?></small>

						<?php if($role == 'admin') { ?>
						<a href="<?php echo $this->Html->url( array('action' => 'add', $role) ); ?>" class="btn btn-primary">Adicionar</a>
						<?php } ?>
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
						<th><?php echo $this->Paginator->sort('username'); ?></th>
						<th><?php echo $this->Paginator->sort('name'); ?></th>
						<th class="actions"><?php echo __('Ações'); ?></th>
					</tr>
					<?php foreach ($users as $user): ?>
						<tr>
							<td><?php echo h($user['User']['username']); ?>&nbsp;</td>
							<td><?php echo h($user['User']['name']); ?>&nbsp;</td>
							<td class="actions">

								<?php if($user['User']['username'] != 'marketingshop') { ?>

								<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $user['User']['id'])); ?>

								<?php echo $this->Html->link(__('Informações'), array('action' => 'view', $user['User']['id']), array('class' => 'btn btn-success') ); ?>

								<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $user['User']['id']), null, __('Are you sure you want to delete # %s?', $user['User']['id'])); ?>

								<?php } ?>
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