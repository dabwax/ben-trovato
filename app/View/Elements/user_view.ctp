<h4>Informações do Usuário: <?php echo $user['User']['name']; ?></h4>

				<table class="table table-bordered table-hover table-index span12">
					<tr>
						<td>
							Usuário
						</td>
						<td>
							<?php echo $user['User']['username']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Nome
						</td>
						<td>
							<?php echo $user['User']['name']; ?>
						</td>
					</tr>

					<?php if($user['User']['role'] == 'client') { ?>
					<tr>
						<td>
							CPF
						</td>
						<td>
							<?php echo $user['Client']['cpf']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Telefone
						</td>
						<td>
							<?php echo $user['Client']['phone']; ?>
						</td>
					</tr>
					<tr>
						<td>
							E-mail
						</td>
						<td>
							<?php echo $user['Client']['email']; ?>
						</td>
					</tr>
					<?php } ?>
				</table>

				<?php if($user['User']['role'] == 'client') { ?>

				<h4>Endereço de Cobrança <?php if($user['Client']['billing_is_same_as_delivery_address'] == 1) { echo 'e Entrega'; } ?></h4>

				<?php
					if($user['Client']['billing_is_same_as_delivery_address']) {
						$type = 'delivery_';
					} else {
						$type = 'billing_';
					}
				?>

				<table class="table table-bordered table-hover table-index span12">

					<tr>
						<td>
							Empresa
						</td>
						<td>
							<?php echo $user['Client'][$type . 'company']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Endereço 1
						</td>
						<td>
							<?php echo $user['Client'][$type . 'street1']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Endereço 2
						</td>
						<td>
							<?php echo $user['Client'][$type . 'street2']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Endereço 3
						</td>
						<td>
							<?php echo $user['Client'][$type . 'street3']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Endereço 4
						</td>
						<td>
							<?php echo $user['Client'][$type . 'street4']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Cidade
						</td>
						<td>
							<?php echo $user['Client'][$type . 'city']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Estado
						</td>
						<td>
							<?php echo $user['Client'][$type . 'state']; ?>
						</td>
					</tr>
					<tr>
						<td>
							CEP
						</td>
						<td>
							<?php echo $user['Client'][$type . 'cep']; ?>
						</td>
					</tr>
				</table>

				<?php if($user['Client']['billing_is_same_as_delivery_address'] == 0) { ?>

				<h4>Endereço de Entrega</h4>

				<?php $type = 'delivery_'; ?>

				<table class="table table-bordered table-hover table-index span12">

					<tr>
						<td>
							Empresa
						</td>
						<td>
							<?php echo $user['Client'][$type . 'company']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Endereço 1
						</td>
						<td>
							<?php echo $user['Client'][$type . 'street1']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Endereço 2
						</td>
						<td>
							<?php echo $user['Client'][$type . 'street2']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Endereço 3
						</td>
						<td>
							<?php echo $user['Client'][$type . 'street3']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Endereço 4
						</td>
						<td>
							<?php echo $user['Client'][$type . 'street4']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Cidade
						</td>
						<td>
							<?php echo $user['Client'][$type . 'city']; ?>
						</td>
					</tr>
					<tr>
						<td>
							Estado
						</td>
						<td>
							<?php echo $user['Client'][$type . 'state']; ?>
						</td>
					</tr>
					<tr>
						<td>
							CEP
						</td>
						<td>
							<?php echo $user['Client'][$type . 'cep']; ?>
						</td>
					</tr>
				</table>

				<?php } ?>

				<?php } ?>