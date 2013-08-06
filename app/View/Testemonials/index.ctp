<div class="row">
	<div class="span12 text-center" style="margin-left: 0px;">
		
		<h2 style="color: #999; font-size: 20px; line-height: 26px; font-style: italic;">Nós adoramos elogios! Quando vocês reconhecem nosso esforço para oferecer alta qualidade, praticidade na compra e preço baixo, nos dão mais energia para fazer melhor! Muito obrigado por suas histórias e mensagens felizes.</h2>
	</div>
</div>

<div class="row">
	<div class="span12" style="margin-left: 0px;">
		<div class="linha-com-titulo" style="margin-top: 10px;">
			<p class="texto" style="text-transform: uppercase;">
				Depoimentos
			</p> <!-- .texto -->
			<hr />
		</div> <!-- .linha-com-titulo -->
	</div>
</div>

<div class="row">
	<div class="span12" style="margin-left: 0px;">
		
		<ul id="lista-de-depoimentos">
			<?php $i = 0; foreach($testemonials as $testemonial) : ?>
				<li>
					<?php if($i&1) { ?>
					<div class="span7" style="margin-top: 24px;">
						<?php echo $testemonial['Testemonial']['testemonial']; ?> <small><?php echo $testemonial['Testemonial']['name']; ?></small>
					</div>
					<div class="span4 text-right" style="position: relative; left: 20px;">
						<p class="data-do-depoimento">
							<?php echo $testemonial['Testemonial']['month']; ?> de <?php echo $testemonial['Testemonial']['year']; ?>
						</p>

						<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'view', $testemonial['Glass']['id']) ); ?>">
							<?php echo $this->Loja->imagem($testemonial['Glass']['photo_2'], array('w' => '300') ); ?>
						</a>
					</div>
					<?php } else { ?>


					<div class="span4 text-left" style="position: relative;">
						<p class="data-do-depoimento">
							<?php echo $testemonial['Testemonial']['month']; ?> de <?php echo $testemonial['Testemonial']['year']; ?>
						</p>

						<a href="<?php echo $this->Html->url( array('controller' => 'glasses', 'action' => 'view', $testemonial['Glass']['id']) ); ?>">
							<?php echo $this->Loja->imagem($testemonial['Glass']['photo_2'], array('w' => '300') ); ?>
						</a>
					</div>

					<div class="span7" style="margin-top: 24px;">
						<?php echo $testemonial['Testemonial']['testemonial']; ?> <small><?php echo $testemonial['Testemonial']['name']; ?></small>
					</div>
					<?php } ?>
					<div class="clear clearfix"></div>
					<hr>
				</li>
			<?php $i++; endforeach; ?>
		</ul>
	</div>
</div>