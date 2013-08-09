$(document).ready(function() {
	/**
	 * Toggle de radios.
	 */
	 $(".lense-type-radios input[type='radio']").click(function() {
	 	var lense_type = $(this).val();

	 	$(".lenses-block, .alerta-inicial").hide();
	 	$("#lenses_" + lense_type).show();
	 });

	 /**
	  * Botão de selecionar a lente.
	  */
	  $(".btn-lente").click(function() {
	  	var lense_id = $(this).data('lense-id');

	  	$(".btn-lente, .btn-finalizar-pedido").removeAttr('disabled');
	  	$(".btn-finalizar-pedido").addClass('btn-success');
	  	$(this).attr('disabled', 'disabled');

	  	$("#OrderItemLenseId").val(lense_id);

	  	$("#OrderItemBuyForm").submit();
	  });
});