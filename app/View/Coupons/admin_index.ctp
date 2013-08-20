<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Cupons'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Cupons'); ?></small>

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
						<th><?php echo $this->Paginator->sort('number', 'Número'); ?></th>
						<th><?php echo $this->Paginator->sort('discount', 'Valor de Desconto'); ?></th>
						<th><?php echo $this->Paginator->sort('limit', 'Limite de Uso'); ?></th>
						<th>Usos</th>
						<th><?php echo $this->Paginator->sort('created', 'Data de Geração'); ?></th>
						<th class="actions"><?php echo __('Ações'); ?></th>
					</tr>
					<?php foreach ($coupons as $coupon): ?>
						<tr>
							<td><?php echo h($coupon['Coupon']['number']); ?>&nbsp;</td>
							<td><?php echo $this->Loja->preco($coupon['Coupon']['discount']); ?>&nbsp;</td>
							<td><?php echo h($coupon['Coupon']['limit']); ?>&nbsp;</td>
							<td><?php echo count($coupon['UsedCoupon']); ?>&nbsp;</td>
							<td><?php $date = new DateTime($coupon['Coupon']['created']); echo $date->format('d/m/Y H:i:s'); ?>&nbsp;</td>
							<td class="actions">
								<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $coupon['Coupon']['id']) ); ?>
								<?php echo $this->Html->link(__('Informações'), array('action' => 'view', $coupon['Coupon']['id']), array('class' => 'btn btn-success') ); ?>
								<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $coupon['Coupon']['id']), null, __('Are you sure you want to delete # %s?', $coupon['Coupon']['id'])); ?>
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