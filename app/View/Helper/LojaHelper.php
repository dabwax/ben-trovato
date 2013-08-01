<?php

class LojaHelper extends AppHelper {
	public $helpers = array(
		'Html'
	);

/**
 * Método para facilitar a implementação de imagens enviadas pelo sistema.
 */
	public function imagem($path, $timthumb_config = array(), $options = array() ) {

		$url = '/files' . $path;

		// Se não houver configurações pro Timthumb, não usá-lo
		if(!empty($timthumb_config)) {

			$url = 'ben-trovato/app/' . WEBROOT_DIR . $url;

			$timthumb = '?src=' . $url;

			if(isset($timthumb_config['w'])) {
				$timthumb .= '&w=' . $timthumb_config['w'];
			}

			if(isset($timthumb_config['h'])) {
				$timthumb .= '&h=' . $timthumb_config['h'];
			}

			if(isset($timthumb_config['q'])) {
				$timthumb .= '&q=' . $timthumb_config['q'];
			}

			return $this->Html->image('/timthumb.php' . $timthumb, $options);
		} else {

			return $this->Html->image($url, $options);
		}
	}

/**
 * Formata um preço em formato FLOAT para um formato amigável (humano).
 */
	public function preco($preco = '0.00') {
		$preco = 'R$ ' . number_format($preco, 2, ',', '.');
		
		return $preco;
	}
}