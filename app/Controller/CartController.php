<?php

class CartController extends AppController {

	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow('delete_order_item');
	}

/**
 * Página de visualização do carrinho do usuário.
 */
	public function index() {
		
		// Recupera todos os itens do usuário
		$orderItems = $this->getOrderItemsFromUser();

		$totalPrice = 0;

		foreach($orderItems as $key => $orderItem) {

			// Calcula o preço do item
			$price = $this->calculatePrice( array(
				'glass_price' => $orderItem['Glass']['price'],
				'lense_price' => $orderItem['Lense']['price'],
				'lense_discount' => $orderItem['Lense']['discount'])
			);

			$totalPrice = $totalPrice + $price;
			$orderItems[$key]['price'] = $price;
		}

		// Envia dados para a view
		$this->set(compact('orderItems', 'totalPrice'));
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

/**
 * Remover o item do pedido.
 */
	public function delete_order_item($id = null) {
		$this->uses = array('OrderItem');
		$this->autoRender = false;

		$this->OrderItem->id = $id;

		if(!$this->OrderItem->exists()) {
			$this->Session->setFlash('O item que você tentou acessar não existe mais.', 'error');

			return $this->redirect( array('controller' => 'cart', 'action' => 'index') );
		}

		$this->OrderItem->delete();

		$this->Session->setFlash('O óculos selecionado foi removido com sucesso.', 'success');

		$orderItemIdSession = $this->Session->read('OrderItemId');

		foreach($orderItemIdSession as $key => $orderItemId) {
			if($orderItemId == $id) {
				unset($orderItemIdSession[$key]);
			}
		}

		$this->Session->write('OrderItemId', $orderItemIdSession);
		
		return $this->redirect( array('controller' => 'cart', 'action' => 'index') );
	}
}