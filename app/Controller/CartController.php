<?php

class CartController extends AppController {

/**
 * Página de visualização do carrinho do usuário.
 */
	public function index() {
		// Total de óculos no carrinho
		$totalGlasses = 0;

		// Envia variáveis para a view
		$this->set(compact('totalGlasses'));
	}
}