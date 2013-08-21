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
		$(".campo-de-cpf").mask("999.999.999-99");
	  
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

	$('input').keypress(function (e) {
        var code = null;
        code = (e.keyCode ? e.keyCode : e.which);                
        return (code == 13) ? false : true;
   });
});

/*
 * Project: Twitter Bootstrap Hover Dropdown
 * Author: Cameron Spear
 * Contributors: Mattia Larentis
 *
 * Dependencies?: Twitter Bootstrap's Dropdown plugin
 *
 * A simple plugin to enable twitter bootstrap dropdowns to active on hover and provide a nice user experience.
 *
 * No license, do what you want. I'd love credit or a shoutout, though.
 *
 * http://cameronspear.com/blog/twitter-bootstrap-dropdown-on-hover-plugin/
 */
;(function($, window, undefined) {
    // outside the scope of the jQuery plugin to
    // keep track of all dropdowns
    var $allDropdowns = $();

    // if instantlyCloseOthers is true, then it will instantly
    // shut other nav items when a new one is hovered over
    $.fn.dropdownHover = function(options) {

        // the element we really care about
        // is the dropdown-toggle's parent
        $allDropdowns = $allDropdowns.add(this.parent());

        return this.each(function() {
            var $this = $(this),
                $parent = $this.parent(),
                defaults = {
                    delay: 500,
                    instantlyCloseOthers: true
                },
                data = {
                    delay: $(this).data('delay'),
                    instantlyCloseOthers: $(this).data('close-others')
                },
                settings = $.extend(true, {}, defaults, options, data),
                timeout;

            $parent.hover(function(event) {
                // so a neighbor can't open the dropdown
                if(!$parent.hasClass('open') && !$this.is(event.target)) {
                    return true;
                }

                if(settings.instantlyCloseOthers === true)
                    $allDropdowns.removeClass('open');

                window.clearTimeout(timeout);
                $parent.addClass('open');
            }, function() {
                timeout = window.setTimeout(function() {
                    $parent.removeClass('open');
                }, settings.delay);
            });

            // this helps with button groups!
            $this.hover(function() {
                if(settings.instantlyCloseOthers === true)
                    $allDropdowns.removeClass('open');

                window.clearTimeout(timeout);
                $parent.addClass('open');
            });

            // handle submenus
            $parent.find('.dropdown-submenu').each(function(){
                var $this = $(this);
                var subTimeout;
                $this.hover(function() {
                    window.clearTimeout(subTimeout);
                    $this.children('.dropdown-menu').show();
                    // always close submenu siblings instantly
                    $this.siblings().children('.dropdown-menu').hide();
                }, function() {
                    var $submenu = $this.children('.dropdown-menu');
                    subTimeout = window.setTimeout(function() {
                        $submenu.hide();
                    }, settings.delay);
                });
            });
        });
    };

    $(document).ready(function() {
        // apply dropdownHover to all elements with the data-hover="dropdown" attribute
        $('[data-hover="dropdown"]').dropdownHover();
    });
})(jQuery, this);