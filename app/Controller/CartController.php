<?php

class CartController extends AppController {

/**
 * Página de visualização do carrinho do usuário.
 */
	public function index() {
		// Recupera todos os itens do usuário
		$orderItems = $this->getOrderItemsFromUser();

		foreach($orderItems as $key => $orderItem) {

			// Calcula o preço do item
			$orderItems[$key]['price'] = $this->calculatePrice( array(
				'glass_price' => $orderItem['Glass']['price'],
				'lense_price' => $orderItem['Lense']['price'],
				'lense_discount' => $orderItem['Lense']['discount'])
			);
		}

		// Envia dados para a view
		$this->set(compact('orderItems'));
	}

/**
 * Método para calcular o preço final de um item.
 */
	public function calculatePrice( $data = array() ) {
		
		// Variáveis de atalho
		$glass_price = $data['glass_price'];
		$lense_price = $data['lense_price'];
		$lense_discount = $data['lense_discount'];

		// O preço padrão é o valor da lente
		$price = $glass_price;

		// Se houver um preço na lente maior do que 0, é adicionado a variável de preço
		if($lense_price > 0) {
			$price = $price + $lense_price;
		}

		// Se houver algum desconto na lente maior do que 0, ele é adicionado a variável de preço
		if($lense_discount > 0) {
			$price = $price - $lense_discount;
		}

		// Retornará o preço final
		return $price;
	}
}