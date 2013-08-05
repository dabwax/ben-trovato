<?php

class CartController extends AppController {
	// Verificador se está em modo de desenvolvimento
	public $developmentMode = true;

	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow('delete_order_item', 'ajax_address');
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

		// Se houver requisição POST
		if($this->request->is('post')) {

			// Define os Models a serem usados
			Controller::loadModel('Client');
			Controller::loadModel('Order');
			Controller::loadModel('OrderItem');

			// Recupera os dados do usuário
			$userLogged = $this->getUserLoggedInfos();

			// Define que os dados inseridos no formulário pertencem ao usuário logado
			$this->request->data['Client']['id'] = $userLogged['Client']['id'];
			$this->request->data['Order']['user_id'] = $userLogged['User']['id'];

			// Define o preço total do pedido
			$this->request->data['Order']['total_price'] = $totalPrice;

			// Define o total de itens do pedido
			$this->request->data['Order']['total_items'] = count($orderItems);

			// Define o número do pedido
			$this->request->data['Order']['reference'] = (int) uniqid(rand(), true);

			// Salva os dados de endereço do usuário
			$this->Client->save($this->request->data);

			// Salva os dados do pedido
			$this->Order->save($this->request->data);

			

			// Se não estiver em modo de desenvolvimento
			if(!$this->developmentMode) {
				// Desabilita os Itens de Pedido
				foreach($orderItems as $orderItem) {
					$this->OrderItem->id = $orderItem['OrderItem']['id'];

					$data['OrderItem']['id'] = $orderItem['OrderItem']['id'];
					$data['OrderItem']['enabled'] = 0;

					$this->OrderItem->save($data);
				}

				// Exclui a Sessão dos Itens de Pedido
				$this->Session->delete('OrderItemId');

				// Dá um alerta ao usuário
				$this->Session->setFlash('O seu pedido foi efetuado com sucesso. Não se esqueça de enviar um e-mail para receitas@bentrovato.com.br caso tenha escolhido um óculos com receita.', 'success');

				return $this->redirect('/');
			}
		}
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

/**
 * AJAX para recuperar o Endereço através do CEP digitado.
 */
	public function ajax_address() {

		$this->RequestHandler->respondAs('json');

		$this->layout = "ajax";
		$this->autoRender = false;

    	$cep = $_POST['cep'];

        $cep = str_replace('.', '', str_replace('-', '', $cep));

        $address = "http://cep.correiocontrol.com.br/$cep.json";

        App::uses('HttpSocket', 'Network/Http');

        $HttpSocket = new HttpSocket();

        $data = $HttpSocket->get($address);

        echo $data;
    }
}