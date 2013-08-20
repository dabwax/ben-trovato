
<script>
	$(window).load(function() {
		PagSeguroLightbox({
			code: '<?php echo $token; ?>'},
		{
			success: function(transactionCode) {
				$("#pagamento-em-transacao").hide();
				$("#pagamento-com-sucesso").fadeIn(100);
			},
			abort: function() {
				$("#pagamento-em-transacao").hide();
				$("#pagamento-abortado").fadeIn(100);
			}
		});
	});
</script>

<div class="row">
	<div class="">
		<div id="pagamento-em-transacao" class="alert alert-warning span12" style="margin-left: 0px; width: 910px;">
			
			<p>
				O pagamento está em transição... Aguarde.
			</p>
		</div>
	</div>
</div>

<div class="row">
	<div class="">
		<div id="pagamento-com-sucesso" class="alert alert-success span12 hide" style="margin-left: 0px; width: 910px;">
			
			<p>
				O seu pagamento foi efetuado com sucesso.<br />
				Não se esqueça de enviar a sua receita para o e-mail <a href="mailto:contato@bentrovato.com.br">contato@bentrovato.com.br</a>, caso no seu pedido conste óculos com receita.
			</p>
		</div>
	</div>
</div>

<div class="row">
	<div class="">
		<div id="pagamento-abortado" class="alert alert-error span12 hide" style="margin-left: 0px; width: 910px;">
			
			<p>
				O seu pagamento foi abortado.<br />
				Para poder pagar novamente, atualize esta página (você pode fazer isso apertando F5).
			</p>
		</div>
	</div>
</div>