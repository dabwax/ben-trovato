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

	 /**
	  * Modal de login.
	  */
	  var booleanCadastreSe = false;

	  $("#btn-cadastre-se").click(function() {

	  	if(booleanCadastreSe == false) {
	  		$("#modal-login").find('.modal-body').hide();

	  		$("#modal-login").find('.form-add').show();

	  		$(this).parent().find('span').html('Já tem uma conta?');

	  		$("#modal-login").find('.modal-header h3').html('CRIAÇÃO DE CONTA');

	  		booleanCadastreSe = true;
	  	} else {
	  		$("#modal-login").find('.modal-body').hide();

	  		$("#modal-login").find('.form-login').show();

	  		$(this).parent().find('span').html('Não tem uma conta?');

	  		$("#modal-login").find('.modal-header h3').html('LOGIN');

	  		booleanCadastreSe = false;
	  	}	  	

	  });

	  /**
	   * Máscaras de input.
	   */
	  $(".campo-de-telefone").mask("(99) 9999-9999?9");
	  
	  /**
	   * AJAX do Formulário de Cadastre-se da Modal de Login.
	   */
	   $(".form-add form").ajaxForm({
	 	success: function(responseText) {
	 		if(responseText == 'sucesso') {
	 			window.location.reload();
	 		} else {
	 			alert(responseText);
	 		}
	 	}
	 });
});