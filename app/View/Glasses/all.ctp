<div class="row">
	<?php echo $this->Html->image('banner-oculos.jpg', array('style' => 'width: 100%;') ); ?>
</div>

<div class="row">
	<hr>
</div>

<div id="filtros-dos-produtos" class="row" style="text-transform: uppercase; margin-bottom: 20px;">

	<div id="bloco-materiais" class="span2" style="margin-left: 0px;">
		<p>Material</p>

		<?php foreach($options['material'] as $slug => $name) : ?>
		<div class="input">
			
			<input type="checkbox" data-type="material" data-value="<?php echo $slug; ?>" id="<?php echo $slug ?>" />
			<label for="<?php echo $slug ?>"><?php echo $name; ?></label>

		</div>
		<?php endforeach; ?>
	</div> <!-- #bloco-materiais -->

	<div id="bloco-cores" class="span6">
		<p>Cor</p>

		<?php foreach($options['color'] as $slug => $name) : ?>
		<div class="input">

			<input type="checkbox" data-type="cor" data-value="<?php echo $slug; ?>" id="<?php echo $slug ?>" />
			<label for="<?php echo $slug ?>"><?php echo $name; ?></label>

		</div>
		<?php endforeach; ?>
	</div> <!-- #bloco-cores -->

	<div id="bloco-formatos" class="span2">
		<p>Formato</p>

		<?php foreach($options['format'] as $slug => $name) : ?>
		<div class="input">
			
			<input type="checkbox" data-type="formato" data-value="<?php echo $slug; ?>" id="<?php echo $slug ?>" />
			<label for="<?php echo $slug ?>"><?php echo $name; ?></label>

		</div>
		<?php endforeach; ?>
	</div> <!-- #bloco-formato -->

	<div id="bloco-tamanhos" class="span2">
		<p>Tamanho</p>

		<?php foreach($options['size'] as $slug => $name) : ?>
		<div class="input">

			<input type="checkbox" data-type="tamanho" data-value="<?php echo $slug; ?>" id="<?php echo $slug ?>" />
			<label for="<?php echo $slug ?>"><?php echo $name; ?></label>

		</div>
		<?php endforeach; ?>
	</div> <!-- #bloco-tamanhos -->

</div> <!-- #filtros-dos-produtos -->

<div class="row">
	<hr>
</div>

<a href="javascript:;" class="pull-right" style="text-transform: uppercase; color: #222;" id="btn-limpar-todos-os-filtros">Limpar Todos os Filtros</a>

<div class="row">
	<div id="produtos-geral" class="span12">

		<?php foreach($glasses as $glass) : ?>

			<div class="produto" data-cor="<?php echo $glass['Glass']['color']; ?>" data-formato="<?php echo $glass['Glass']['format']; ?>" data-tamanho="<?php echo $glass['Glass']['size']; ?>" data-material="<?php echo $glass['Glass']['material']; ?>">

				<a href="<?php echo $this->Html->url( array('action' => 'view', $glass['Glass']['id']) ); ?>">

					<?php echo $this->Loja->imagem($glass['Glass']['photo_1'], array('w' => '370', 'h' => '210', 'zc' => '0') ); ?>
					<?php echo $this->Loja->imagem($glass['Glass']['photo_2'], array('w' => '370', 'h' => '210', 'zc' => '0'), array('style' => 'display: none;') ); ?>
				</a>

				<h2><?php echo $glass['Glass']['name']; ?> <small style="font-size: 12px;"><?php echo $glass['Glass']['color2']; ?></small> </h2>

				<h3 class="produto-preco"><?php $preco = explode(',', $this->Loja->preco($glass['Glass']['price'])); echo $preco[0]; ?></h3>

				<div class="produto-rodape">

					<a href="<?php echo $this->Html->url( array('action' => 'fittingbox', $glass['Glass']['id']) ); ?>" data-fancybox-type="iframe" class="btn-espelho-virtual colorbox-iframe">espelho virtual</a>

				</div> <!-- .produto-rodape -->

			</div> <!-- .produto -->

		<?php endforeach; ?>

	</div> <!-- #produtos-geral -->
</div>

<script type="text/javascript">
	$(document).ready(function() {

		// Função para verificar se existe um item no array
		function in_array (needle, haystack, argStrict) {
		  var key = '',
		    strict = !! argStrict;

		  if (strict) {
		    for (key in haystack) {
		      if (haystack[key] === needle) {
		        return true;
		      }
		    }
		  } else {
		    for (key in haystack) {
		      if (haystack[key] == needle) {
		        return true;
		      }
		    }
		  }

		  return false;
		}

		// Função para pesquisar um elemento dentro de um array
		function array_search (needle, haystack, argStrict) {
		  var strict = !!argStrict,
		    key = '';

		  if (haystack && typeof haystack === 'object' && haystack.change_key_case) { // Duck-type check for our own array()-created PHPJS_Array
		    return haystack.search(needle, argStrict);
		  }
		  if (typeof needle === 'object' && needle.exec) { // Duck-type for RegExp
		    if (!strict) { // Let's consider case sensitive searches as strict
		      var flags = 'i' + (needle.global ? 'g' : '') +
		            (needle.multiline ? 'm' : '') +
		            (needle.sticky ? 'y' : ''); // sticky is FF only
		      needle = new RegExp(needle.source, flags);
		    }
		    for (key in haystack) {
		      if (needle.test(haystack[key])) {
		        return key;
		      }
		    }
		    return false;
		  }

		  for (key in haystack) {
		    if ((strict && haystack[key] === needle) || (!strict && haystack[key] == needle)) {
		      return key;
		    }
		  }

		  return false;
		}

		// Filtro dos Produtos
		var dados_selecionados = {
			'material': [],
			'formato': [],
			'cor' : [],
			'tamanho': []
		};

		function clickCheckbox(checkbox) {
			var quantidade_checkboxes_total = 0;
			var quantidade_checkboxes_marcado = 0;

			// Itera todos os checkboxes
			$(checkbox).each(function() {
				quantidade_checkboxes_total++;

				// Se tiver sido marcado, é adicionado ao array de dados selecionados
				if($(checkbox).is(':checked')) {
					quantidade_checkboxes_marcado++;

					iterate_types_values($(checkbox), dados_selecionados);
				// Se não tiver sido marcado, é removido do array
				} else {
					quantidade_checkboxes_marcado--;
					remove_value($(checkbox), dados_selecionados);
				}
			});

			// Exibe somente os produtos com dados selecionados
			show_products_with_data_selected(dados_selecionados);

			if(quantidade_checkboxes_marcado <= 0) {
				$("#produtos-geral .produto").show();
			}
		}

		$("#filtros-dos-produtos input").click(function() {

			clickCheckbox($(this));

		});

		function show_products_with_data_selected(dados_selecionados) {
			// Itera todos os produtos da página
			$("#produtos-geral .produto").each(function() {
				var produto = $(this);

				var dados_do_produto = {
					'material': $(this).data('material'),
					'formato': $(this).data('formato'),
					'cor': $(this).data('cor'),
					'tamanho': $(this).data('tamanho')
				};

				$(dados_do_produto).each(function() {
					var dado_do_produto = $(this);

					$(dados_selecionados).each(function() {
						var dado_selecionado = $(this);

						if(in_array(dado_do_produto[0].cor, dado_selecionado[0]['cor']) || in_array(dado_do_produto[0].material, dado_selecionado[0]['material']) || in_array(dado_do_produto[0].formato, dado_selecionado[0]['formato']) || in_array(dado_do_produto[0].tamanho, dado_selecionado[0]['tamanho'])) {
							$(produto).show();
						} else {
							$(produto).hide();
						}
					});
				});
			});
		}

		// Remove um valor do array
		function remove_value(checkbox, dados_selecionados) {
			// Tipo
			var type = $(checkbox).data('type');

			// Valor
			var value = $(checkbox).data('value');

			// A chave do elemento no array
			var valor = array_search(value, dados_selecionados[type]);

			// Remove o elemento do array
			dados_selecionados[type].splice(valor, 1);
		}

		// Itera os dados passados para adicionar ao array de dados selecionados
		function iterate_types_values(checkbox, dados_selecionados) {
			// Tipo
			var type = $(checkbox).data('type');

			// Valor
			var value = $(checkbox).data('value');

			// Se o valor marcado ainda não tiver sido clicado (salvo no array de tipos, el é adicionado ao array)
			if(!in_array(value, dados_selecionados[type])) {
				dados_selecionados[type].push(value);
			}
		}
		// Hover das imagens com fade
		$(".produto a").hoverIntent(function() {
			var imagens = $(this).find('img');
			var primeira_imagem = imagens[0];
			var segunda_imagem = imagens[1];

			$(primeira_imagem).hide();
			$(segunda_imagem).fadeIn(300);
		}, function() {
			var imagens = $(this).find('img');
			var primeira_imagem = imagens[0];
			var segunda_imagem = imagens[1];

			$(segunda_imagem).hide();
			$(primeira_imagem).fadeIn(300);
		});

		$("#btn-limpar-todos-os-filtros").click(function() {
			$("#filtros-dos-produtos input").each(function() {
				$(this).removeAttr('checked');
				clickCheckbox($(this));
			});
		});
	});
</script>