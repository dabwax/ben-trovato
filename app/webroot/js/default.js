$(document).ready(function() {
	/**
	 * Carrega todos os botões do Socialite.
	 */
	Socialite.load();

	/**
	 * Instancia o formulário de newsletter de maneira assíncrona (AJAX).
	 */
	 $("#formNewsletter").ajaxForm({
	 	success: function(responseText) {

	 		$("#formNewsletter input[type='email']").val('');
	 		alert(responseText);
	 	}
	 });
});