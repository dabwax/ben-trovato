$(document).ready(function() {

	/**
	 Prepara a estrutura dos formulários na estilização do Bootstrap.
	 */
	 var divInput = $(".form").find('div.input');
	 var divSubmit = $(".form").find('div.submit');

	 divInput.addClass('form-group');
	 divInput.find('input[type="text"], input[type="password"], textarea').addClass('form-control');
	 divSubmit.find('input[type="submit"]').addClass('btn btn-success');
});