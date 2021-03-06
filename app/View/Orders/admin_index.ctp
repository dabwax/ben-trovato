<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="panel">

				<div class="panel-heading">
					<h3 class="panel-title"><?php echo __('Pedidos'); ?> 
						<small><?php echo __('Gerenciamento do Módulo de Pedidos'); ?></small>

					</h3> <!-- .panel-title -->
				</div> <!-- .panel-heading -->

				<p class="label">
				<?php
					echo $this->Paginator->counter(array(
					'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
					));
				?>
				</p>

				<div class="clear clearfix" style="margin-top: 12px;"></div>

				<?php echo $this->Form->create('Order'); ?>

				<?php echo $this->Form->input('reference', array('type' => 'text', 'label' => 'Pesquisar Por Código de Referência: ', 'style' => 'margin-left: 12px;') ); ?>

				<?php echo $this->Form->button('Pesquisar', array('class' => 'btn btn-success') ); ?>

				<?php echo $this->Form->end(); ?>

				<table class="table table-bordered table-hover table-index span12">
					<tr>
						<th><?php echo $this->Paginator->sort('user_id', 'Usuário'); ?></th>
						<th><?php echo $this->Paginator->sort('reference', 'Referência'); ?></th>
						<th><?php echo $this->Paginator->sort('token', 'Token'); ?></th>
						<th><?php echo $this->Paginator->sort('payment_status', 'Status'); ?></th>
						<th>Itens</th>
						<th><?php echo $this->Paginator->sort('total_items', 'Total de Itens'); ?></th>
						<th><?php echo $this->Paginator->sort('coupon', 'Cupom'); ?></th>
						<th><?php echo $this->Paginator->sort('created', 'Data de Criação'); ?></th>
						<th class="actions"><?php echo __('Ações'); ?></th>
					</tr>
					<?php foreach ($orders as $order): ?>
						<tr>
							<td><?php echo h($order['User']['name']); ?> - <?php echo h($order['User']['Client']['email']); ?> </td>
							<td><?php echo h($order['Order']['reference']); ?>&nbsp;</td>
							<td><?php echo h($order['Order']['token']); ?>&nbsp;</td>
							<td>
								<?php
									switch($order['Order']['payment_status']) {
										case 'Completo':
										case 'Aprovado':
										case 'Óculos Enviado':
											$label = 'label-success';
											break;
										case 'Aguardando Pagto':
										case 'Preparando Envio':
										case 'Em Análise':
											$label = 'label-warning';
											break;
										case 'Cancelado':
											$label = 'label-danger';
											break;
										default:
											$label = '';
											break;
									}
								?>
								<p class="label <?php echo $label; ?>">
									<?php if($order['Order']['payment_status'] == '') { echo 'Aguardando'; } else { echo $order['Order']['payment_status']; } ?>
								</p>
							</td>
							<td><?php $orderItems = json_decode($order['Order']['json_items']); ?>

								<?php foreach($orderItems as $item) : ?>

									<?php echo $item->Glass->name; ?> - <?php echo ucfirst($item->Glass->color2); ?> - <?php echo $item->Lense->name; ?><br />

								<?php endforeach; ?>
							</td>
							<td><?php echo h($order['Order']['total_items']); ?>&nbsp;</td>
							<td><?php echo h($order['Order']['coupon']); ?>&nbsp;</td>
							<td><?php $data = new DateTime($order['Order']['created']); echo $data->format('d/m/Y h:i:s'); ?>&nbsp;</td>
							<td class="actions">

								<?php echo $this->Html->link(__('Informações'), array('action' => 'view', $order['Order']['id']), array('class' => 'btn btn-success btn-small') ); ?>

								<br>	
								<br>

								<?php echo $this->Html->link(__('Enviado'), array('action' => 'change_payment_status', $order['Order']['id'], 'sent'), array('class' => 'btn btn-primary btn-small') ); ?>

								<br>	
								<br>

								<?php echo $this->Html->link(__('Preparando'), array('action' => 'change_payment_status', $order['Order']['id'], 'processing'), array('class' => 'btn btn-primary btn-small') ); ?>
								
								<br>	
								<br>

								<?php echo $this->Html->link(__('Aguardando Receita'), array('action' => 'change_payment_status', $order['Order']['id'], 'waiting'), array('class' => 'btn btn-primary btn-small') ); ?>
								
								<br>	
								<br>

								<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $order['Order']['id']), null, __('Are you sure you want to delete # %s?', $order['Order']['id'])); ?>
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