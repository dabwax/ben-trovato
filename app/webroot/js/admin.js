$(document).ready(function() {

	/**
	 Prepara a estrutura dos formulários na estilização do Bootstrap.
	 */
	 var divInput = $(".form").find('div.input');
	 var divSubmit = $(".form").find('div.submit');
	 var divError = $("div.error-message");
	 var divActions = $(".table").find(".actions");

	 divInput.addClass('form-group');
	 divInput.find('input[type="text"], input[type="password"], textarea, select').addClass('form-control');
	 divSubmit.find('input[type="submit"]').addClass('btn btn-success');
	 divError.addClass('label label-danger').css('margin-top', '12px').css('display', 'inline-block');
	 divActions.find('a:first-child').addClass('btn btn-primary');
	 divActions.find('a:last-child').addClass('btn btn-danger');
});