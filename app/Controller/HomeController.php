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
		$this->uses = array('Banner');

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

		$this->set(compact('bannersEncima', 'bannersEmbaixo'));
	}

/**
 * Página inicial (dashboard) do administrador.
 */
	public function admin_index() {

	}
}