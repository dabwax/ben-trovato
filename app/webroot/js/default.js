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
		$(".form-criacao-de-conta").ajaxForm({
			success: function(responseText) {
				if(responseText == 'sucesso') {
					window.location.reload();
				} else {
					alert(responseText);
				}
			}
		});

	/**
	 * Botão de "Esqueci minha senha".
	 */
	 $("#btn-esqueceu-sua-senha").click(function() {
		$("#modal-login").find('.modal-body').hide();

		$("#modal-login").find('.form-forgot').show();

		$("#modal-login").find('.modal-header h3').html('ESQUECI MINHA SENHA');
	 });

	 /**
	   * AJAX do Formulário de "Esqueci minha Senha" da Modal de Login.
	   */
	$(".form-forgot form").ajaxForm({
		success: function(responseText) {

			if(responseText == 'sucesso') {
				if(confirm('Foi enviado um e-mail para você com uma nova senha temporária.')) {
					window.location.reload();
				} else {
					window.location.reload();
				}
			} else {
				alert('O e-mail digitado não foi encontrado no sistema.');
			}
		}
	});

	/**
	 * Toggle de fotos da interna dos óculos.
	 */
	 $("#vistas-oculos a").click(function() {
	 	var url = $(this).attr('href');
	 	var large = $(this).data('large');

	 	$("#imagem-toggle").attr('src', url);

	 	$("#imagem-toggle").parent().attr('href', large);

	 	return false;
	 });
});