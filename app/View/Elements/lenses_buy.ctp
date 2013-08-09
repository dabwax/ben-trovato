<div class="row lenses-block" id="lenses_<?php echo $type; ?>">
	
	<div class="span10">

		<?php if($type == 'de_grau') { ?>

			<p style="color: rgb(164, 196, 0); margin-bottom: 16px;">LENTES DE GRAU – VOU ENVIAR UMA CÓPIA DA MINHA RECEITA</p>

			<p style="margin-bottom: 30px; font-size: 13px;">
				Ok! Após a conclusão da sua compra, envie sua receita e o número do pedido para o e-mail <span style="color: rgb(164, 196, 0);">contato@bentrovato.com.br</span>. Ela precisa ser emitida e assinada por um oftalmologista. Garanta que sua DNP esteja incluída na receita ou no e-mail (veja FAQ – O que é DNP?).
			</p>
		<?php } ?>

		<?php if($type == 'sem_grau') { ?>

			<p style="color: rgb(164, 196, 0); margin-bottom: 16px;">LENTES SEM GRAU – VOU USAR APENAS POR ESTILO</p>

			<p style="margin-bottom: 30px; font-size: 13px;">
				Ótimo! Suas lentes virão com proteção antirreflexo, antirrisco e UVA/UVB. Estas lentes te proporcionarão a mesma proteção das nossas lentes de grau, com o estilo Ben Trovato!
			</p>
		<?php } ?>

		<?php if($type == 'demonstracao') { ?>

			<p style="color: rgb(164, 196, 0); margin-bottom: 16px;">NENHUMA – APENAS A ARMAÇÃO, SEM LENTES</p>

			<p style="margin-bottom: 30px; font-size: 13px;">
				Sem problemas! Escolha esta opção caso você queira colocar suas lentes em outro lugar de sua preferência. Sua armação virá com lentes de demonstração, que não são indicadas para o uso! Neste caso, nós daremos um desconto de R$ 23 por armação.
			</p>
		<?php } ?>

		<?php if($type == 'de_sol') { ?>

			<p style="color: rgb(164, 196, 0); margin-bottom: 16px;">LENTES DE SOL – VOU USAR PARA PROTEGER MEUS OLHOS</p>

			<p style="margin-bottom: 30px; font-size: 13px;">
				Ótimo! Suas lentes serão feitas em resina de alta qualidade e virão com proteção UVA/UVB. Estas lentes te proporcionarão proteção, com o estilo Ben Trovato!
			</p>
		<?php } ?>

		<?php if($type == 'de_sol_com_grau') { ?>

			<p style="color: rgb(164, 196, 0); margin-bottom: 16px;">LENTES DE SOL COM GRAU – VOU ENVIAR UMA CÓPIA DA MINHA RECEITA</p>

			<p style="margin-bottom: 30px; font-size: 13px;">
				Ok! Após a conclusão da sua compra, envie sua receita e o número do pedido para o e-mail <span style="color: rgb(164, 196, 0);">contato@bentrovato.com.br</span>. Ela precisa ser emitida e assinada por um oftalmologista. Garanta que sua DNP esteja incluída na receita ou no e-mail (veja FAQ – O que é DNP?).
			</p>
		<?php } ?>

		<?php foreach($lenses as $lense) : if($lense['Lense']['type'] == $type) : ?>
			<div class="lente" <?php if($lense['Lense']['id'] == 4 || $lense['Lense']['id'] == 5 || $lense['Lense']['id'] == 6 || $lense['Lense']['id'] == 7) { ?>style="width: 100%;"<?php } ?>>

				<p class="titulo-da-lente">
					<?php echo $lense['Lense']['name']; ?>
				</p> <!-- .titulo-da-lente -->

				<?php if($lense['Lense']['description'] != "") { ?>
				<p class="descricao-da-lente">
					<?php echo $lense['Lense']['description']; ?>
				</p> <!-- .descricao-da-lente -->
				<?php } ?>

				<p class="preco-da-lente">
					<?php if($lense['Lense']['price'] == 0 && $lense['Lense']['discount'] == 0) { ?>
						Grátis
					<?php } ?>

					<?php if($lense['Lense']['price'] != 0) { ?>
						+ <?php $preco = explode(',', $this->Loja->preco($lense['Lense']['price'])); echo $preco[0]; ?>
					<?php } ?>

					<?php if($lense['Lense']['discount'] != 0) { ?>
						- <?php $preco = explode(',', $this->Loja->preco($lense['Lense']['discount'])); echo $preco[0]; ?>
					<?php } ?>
				</p> <!-- .preco-da-lente -->

				<button data-lense-id="<?php echo $lense['Lense']['id']; ?>" class="btn-lente btn btn-inverse" style="text-align: left; position: relative; margin-left: 48px; <?php if($lense['Lense']['id'] == 4 || $lense['Lense']['id'] == 5 || $lense['Lense']['id'] == 6 || $lense['Lense']['id'] == 7) { ?> margin-left: 318px;<?php } ?> background: #353535; border-radius: 0px; border: none;">
					
					<span style="float: left; display: inline; margin-right: 6px; margin-top: 8px; color: #A4C400; font-weight: bold; font-size: 29px;">+</span>

					<p style="float: left; display: inline; text-align: center; text-transform: uppercase; margin: 0px; font-size: 13px;">
						Adicionar Ao<br />Carrinho
					</p>
				</button> <!-- .btn-lente -->
		</a>

			</div> <!-- .lente -->

		<?php endif; endforeach; ?>	
	</div> <!-- .span10 -->

</div> <!-- #lenses_<?php echo $type; ?> -->