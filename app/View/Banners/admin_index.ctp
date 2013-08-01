<div class="banners index">
	<div class="row">
		<div class="span12">
			<div class="navbar">
				<a class="navbar-brand"><?php echo __('Banners'); ?></a>
				<p class="navbar-text"><?php echo __('Gerenciamento do Módulo de Banners'); ?></p>
			</div> <!-- .navbar -->
		</div> <!-- .span12 -->
	</div> <!-- .row -->

	<div class="row">
		<table class="table table-bordered table-hover span12">
			<tr>
				<th><?php echo $this->Paginator->sort('image', 'Imagem'); ?></th>
				<th><?php echo $this->Paginator->sort('link'); ?></th>
				<th class="actions"><?php echo __('Ações'); ?></th>
			</tr>
		<?php foreach ($banners as $banner): ?>
		<tr>
			<td><?php echo h($banner['Banner']['image']); ?>&nbsp;</td>
			<td><?php echo h($banner['Banner']['link']); ?>&nbsp;</td>
			<td class="actions">
				<?php echo $this->Html->link(__('View'), array('action' => 'view', $banner['Banner']['id'])); ?>
				<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $banner['Banner']['id'])); ?>
				<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $banner['Banner']['id']), null, __('Are you sure you want to delete # %s?', $banner['Banner']['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
		</table>
	</div> <!-- .row -->

	<div class="row">
		<p class="label">
		<?php
			echo $this->Paginator->counter(array(
			'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
			));
		?>
		</p>
	</div> <!-- .row -->

	<div class="paging row">
		<?php
			echo $this->Paginator->prev('< ' . __('previous'), array('class' => 'btn'), null, array('class' => 'btn btn-primary disabled'));
			echo $this->Paginator->numbers(array('separator' => ''));
			echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'btn btn-primary disabled'));
		?>
	</div> <!-- .paging -->
</div>