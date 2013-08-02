<?php

/**
 * Controller para gerenciamento de páginas iniciais.
 */
class HomeController extends AppController {

/**
 * Página inicial da loja.
 */
	public function index() {
		// Models a serem usados
		$this->uses = array('Banner', 'Glass');

		// Recupera todos os banners da posição encima
		$bannersEncima = $this->Banner->find('all', array(
			'conditions' => array(
				'Banner.position' => 'encima'
			),
			'order' => array(
				'Banner.modified' => 'DESC'
			)
		));

		// Recupera todos os banners da posição embaixo
		$bannersEmbaixo = $this->Banner->find('all', array(
			'conditions' => array(
				'Banner.position' => 'embaixo'
			),
			'order' => array(
				'Banner.modified' => 'DESC'
			)
		));

		// Recupera 3 óculos aleatórios
		$glassesRandom = $this->Glass->find('all', array(
			'order' => 'rand()',
			'limit' => 3
		));

		$this->set(compact('bannersEncima', 'bannersEmbaixo', 'glassesRandom'));
	}

/**
 * Página inicial (dashboard) do administrador.
 */
	public function admin_index() {
	}
}