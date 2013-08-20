<table>
	<thead>
		<tr>
			<th>
				Usuário
			</th>
			<th>
				Nome
			</th>
			<th>
				CPF
			</th>
			<th>
				Telefone
			</th>
			<th>
				E-mail
			</th>
			<th>
				Cobrança - Empresa
			</th>
			<th>
				Cobrança - Endereço 1
			</th>
			<th>
				Cobrança - Endereço 2
			</th>
			<th>
				Cobrança - Endereço 3
			</th>
			<th>
				Cobrança - Endereço 4
			</th>
			<th>
				Cobrança - Cidade
			</th>
			<th>
				Cobrança - Estado
			</th>
			<th>
				Cobrança - CEP
			</th>
			<th>
				Entrega - Empresa
			</th>
			<th>
				Entrega - Endereço 1
			</th>
			<th>
				Entrega - Endereço 2
			</th>
			<th>
				Entrega - Endereço 3
			</th>
			<th>
				Entrega - Endereço 4
			</th>
			<th>
				Entrega - Cidade
			</th>
			<th>
				Entrega - Estado
			</th>
			<th>
				Entrega - CEP
			</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($users as $user) : ?>
		<tr>
			<td>
				<?php echo $user['User']['username']; ?>
			</td>
			<td>
				<?php echo $user['User']['name']; ?>
			</td>
			<td>
				<?php echo $user['Client']['cpf']; ?>
			</td>
			<td>
				<?php echo $user['Client']['phone']; ?>
			</td>
			<td>
				<?php echo $user['Client']['email']; ?>
			</td>
			<td>
				<?php echo $user['Client']['billing_company']; ?>
			</td>
			<td>
				<?php echo $user['Client']['billing_street1']; ?>
			</td>
			<td>
				<?php echo $user['Client']['billing_street2']; ?>
			</td>
			<td>
				<?php echo $user['Client']['billing_street3']; ?>
			</td>
			<td>
				<?php echo $user['Client']['billing_street4']; ?>
			</td>
			<td>
				<?php echo $user['Client']['billing_city']; ?>
			</td>
			<td>
				<?php echo $user['Client']['billing_state']; ?>
			</td>
			<td>
				<?php echo $user['Client']['billing_cep']; ?>
			</td>
			<td>
				<?php echo $user['Client']['delivery_company']; ?>
			</td>
			<td>
				<?php echo $user['Client']['delivery_street1']; ?>
			</td>
			<td>
				<?php echo $user['Client']['delivery_street2']; ?>
			</td>
			<td>
				<?php echo $user['Client']['delivery_street3']; ?>
			</td>
			<td>
				<?php echo $user['Client']['delivery_street4']; ?>
			</td>
			<td>
				<?php echo $user['Client']['delivery_city']; ?>
			</td>
			<td>
				<?php echo $user['Client']['delivery_state']; ?>
			</td>
			<td>
				<?php echo $user['Client']['delivery_cep']; ?>
			</td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>

