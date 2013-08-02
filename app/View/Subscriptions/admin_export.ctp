<table>
	<thead>
		<tr>
			<th>
				E-mail - Loja Ben Trovato
			</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($subscriptions as $subscription) : ?>
		<tr>
			<td>
				<?php echo $subscription['Subscription']['email']; ?>
			</td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>

