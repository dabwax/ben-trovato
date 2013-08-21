<?php

class CartController extends AppController {

	public function beforeFilter() {
		parent::beforeFilter();

		$this->Auth->allow('delete_order_item', 'ajax_address', 'payment_success', 'payment_notification');
	}

	public function ajax_coupon() {
		$this->layout = "ajax";
		$this->autoRender = false;

		$this->uses = array('Coupon');

		$coupon = $this->Coupon->find('first', array(
			'conditions' => array(
				'Coupon.number' => $_POST['coupon']
			)
		) );

		if($coupon) {

			$totalUsed = count($coupon['UsedCoupon']);

			if($totalUsed < $coupon['Coupon']['limit']) {
				echo $coupon['Coupon']['discount'];
			} else {
				echo 'limite';
			}
			
		} else {
			echo '';
		}
	}

/**
 * Página usada como retorno após pagamento do usuário no PagSeguro.
 */
	public function payment_success() {
		// Dá um alerta ao usuário
		$this->Session->setFlash('O seu pedido foi efetuado com sucesso. Não se esqueça de enviar um e-mail para receitas@bentrovato.com.br caso tenha escolhido um óculos com receita.', 'success');

		return $this->redirect('/');
	}

/**
 * Página usada pelo Retorno Automático do PagSeguro.
 */
	public function payment_notification() {
		$this->layout = "ajax";
		$this->autoRender = false;

		$this->uses = array('Order');

		$order = $this->Order->findByReference($_POST['Referencia']);

		$user = $this->Order->User->findById($order['User']['id']);

		$this->Order->save( array(
			'id' => $order['Order']['id'],
			'payment_type' => $_POST['TipoPagamento'],
			'payment_status' => $_POST['StatusTransacao'],
			'payment_date' => $_POST['DataTransacao']
		) );

		App::uses('CakeEmail', 'Network/Email');

		$email = new CakeEmail('smtp');

		$email->emailFormat('html');

		$email->from(array('no-reply@bentrovato.com.br' => 'Ben Trovato'));

		$email->to($user['Client']['email']);

		$subject = $_POST['StatusTransacao'];

		$email->subject('Pedido ' . $subject . ' - Loja Ben Trovato');

		$email->template('pedido_change_status', 'default');

		$email->viewVars( array('user' => $user, 'order' => $order, 'type' => $subject) );

		$email->send();
	}

/**
 * Página de visualização do carrinho do usuário.
 */
	public function index() {

		if(AuthComponent::user('role') == 'admin') {
			$this->Session->setFlash('Você não pode acessar o carrinho como administrador. Saia da sua conta e entre com a de um cliente.', 'error');

			return $this->redirect('/');
		}

		Controller::loadModel('Glass');
		
		$randomGlass = $this->Glass->find('first', array('order' => 'rand()') );
		$this->set(compact('randomGlass'));

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

			// Gera um código de referência único
			$reference = substr(number_format(time() * rand(),0,'',''),0,8);

			// Importa a biblioteca oficial do PagSeguro
			require_once APP . 'Vendor' . DS . 'pagseguro' . DS . 'PagSeguroLibrary.php';

			// Gera um objeto do tipo PagSeguroPaymentRequest
			$paymentRequest = new PagSeguroPaymentRequest();

			// Verifica se foi digitado um cupom. Se tiver sido, verifica se ele existe e qual o valor de desconto dele.
			if(isset($this->request->data['Order']['coupon'])) {
				Controller::loadModel('Coupon');

				$coupon = $this->Coupon->find('first', array('contain' => array('UsedCoupon'), 'conditions' => array('Coupon.number' => $this->request->data['Order']['coupon']) ) );

				if($coupon) {

					if($coupon['Coupon']['discount'] < $totalPrice) {

						if($coupon['Coupon']['limit'] > count($coupon['UsedCoupon'])) {

							$this->Coupon->UsedCoupon->save( array('user_id' => $userLogged['User']['id'], 'coupon_id' => $coupon['Coupon']['id']) );

							// Define o desconto
							$paymentRequest->setExtraAmount('-' . number_format($coupon['Coupon']['discount'], 2, '.', ''));
						}
						
					}
				}
			}

			// Define que os dados inseridos no formulário pertencem ao usuário logado
			$this->request->data['Client']['id'] = $userLogged['Client']['id'];
			$this->request->data['Order']['user_id'] = $userLogged['User']['id'];

			// Define o preço total do pedido
			$this->request->data['Order']['total_price'] = $totalPrice;

			// Define o total de itens do pedido
			$this->request->data['Order']['total_items'] = count($orderItems);

			// Define o número do pedido
			$this->request->data['Order']['reference'] = $reference;

			// Armazena os produtos solicitados em um JSON do Pedido
			$this->request->data['Order']['json_items'] = json_encode($orderItems);
			
			// Salva os dados de endereço do usuário
			$this->Client->save($this->request->data);

			// Salva os dados do pedido
			$this->Order->save($this->request->data);

			if(isset($this->request->data['Order']['coupon'])) {
				Controller::loadModel('Coupon');

				$coupon = $this->Coupon->find('first', array('contain' => array('UsedCoupon'), 'conditions' => array('Coupon.number' => $this->request->data['Order']['coupon']) ) );

				if($coupon) {

					if($coupon['Coupon']['discount'] < $totalPrice) {
						if($coupon['Coupon']['limit'] > count($coupon['UsedCoupon'])) {

							$totalPrice = $totalPrice - $coupon['Coupon']['discount'];

							$this->Coupon->UsedCoupon->save( array('id' => $this->Coupon->UsedCoupon->getInsertID(), 'order_id' => $this->Order->getInsertID() ) );
						}
					}

				}
			}

			// Define a moeda a ser utilizada pelo objedo do PagSeguro
			$paymentRequest->setCurrency("BRL");

			// Define o tipo de frete ao objeto do PagSeguro
			$paymentRequest->setShippingType(3);

			// Adiciona os produtos ao objeto do PagSeguro
			foreach($orderItems as $item) {

				$paymentRequest->addItem($item['Glass']['id'], 'Óculos ' . $item['Glass']['name'] . ' ' . ucfirst($item['Glass']['color']), 1, number_format($item['price'], 2, '.', ''));
			
			}

			// Define o nome do comprador ao objeto do PagSeguro
			$paymentRequest->setSenderName($userLogged['User']['name']);

			// Define o e-mail do comprador ao objeto do PagSeguro
			$paymentRequest->setSenderEmail($userLogged['Client']['email']);

			// Define o telefone do comprador ao objeto do PagSeguro
			$ddd = explode(') ', $userLogged['Client']['phone']);
			$ddd = explode('(', $ddd[0]);
			$ddd = $ddd[1];

			$telefone = explode(') ', $userLogged['Client']['phone']);
			$telefone = str_replace('-', '', $telefone[1]);

			$paymentRequest->setSenderPhone($ddd, $telefone);

			// Define os dados de entrega ao objeto do PagSeguro
			if($this->request->data['Client']['billing_is_same_as_delivery_address'] == 1) {
				$address_type = 'delivery_';
			} else {
				$address_type = 'billing_';
			}

			$paymentRequest->setShippingAddress( array(
				'postalCode' => $this->request->data['Client'][$address_type . 'cep'],
				'street' => $this->request->data['Client'][$address_type . 'street1'],
				'number' => $this->request->data['Client'][$address_type . 'street3'],
				'complement' => $this->request->data['Client'][$address_type . 'street4'],
				'district' => $this->request->data['Client'][$address_type . 'street2'],
				'city' => $this->request->data['Client'][$address_type . 'city'],
				'state' => $this->request->data['Client'][$address_type . 'state'],
				'country' => 'BRA',
			) );

			// Define o código de referência do pedido ao objeto do PagSeguro
			$paymentRequest->setReference($reference);

			// Define a URL de Redirecionamento do usuário após o pagamento ao objeto do PagSeguro
			$paymentRequest->setRedirectURL(Router::url( array('controller' => 'cart', 'action' => 'payment_success'), true));

			// Define o prazo de validade da requisição de pagamento ao objeto do PagSeguro em 2 dias (em segundos)
			$paymentRequest->setMaxAge(172800);

			// Define a URL de Retorno Automático (Notification URL) ao objeto do PagSeguro
			$paymentRequest->setNotificationURL(Router::url( array('controller' => 'cart', 'action' => 'payment_notification'), true));

			$paymentRequest->addParameter('senderCPF', str_replace('-', '', filter_var($userLogged['Client']['cpf'], FILTER_SANITIZE_NUMBER_INT))); 

			// Define as credenciais do PagSeguro ao objeto do PagSeguro
			$settings = $this->setSettings();

			$credentials = new PagSeguroAccountCredentials($settings['pagseguro_email'], $settings['pagseguro_token']);

			App::uses('CakeEmail', 'Network/Email');

			$email = new CakeEmail('smtp');

			$email->emailFormat('html');

			$email->from(array('no-reply@bentrovato.com.br' => 'Ben Trovato'));

			$email->to($userLogged['Client']['email']);

			$email->subject('Pedido Efetuado com Sucesso - Loja Ben Trovato');

			$email->template('pedido_efetuado', 'default');

			$email->viewVars( array('order' => $this->request->data, 'reference' => $reference, 'orderItems' => $orderItems, 'userLogged' => $userLogged, 'totalPrice' => $totalPrice, 'coupon' => $coupon) );

			$email->send();

			// Gera a URL da página de pagamento do PagSeguro
			$url = $paymentRequest->register($credentials);

			// Desabilita os Itens de Pedido
			foreach($orderItems as $orderItem) {
				$this->OrderItem->id = $orderItem['OrderItem']['id'];

				$data['OrderItem']['id'] = $orderItem['OrderItem']['id'];
				$data['OrderItem']['enabled'] = 0;

				$this->OrderItem->save($data);
			}

			// Exclui a Sessão dos Itens de Pedido
			$this->Session->delete('OrderItemId');

			$url = parse_url($url);

			$url = explode("code=", $url['query']);

			$token = $url[1];

			$this->Order->save(
				array(
					'id' => $this->Order->getInsertID(),
					'token' => $token
				)
			);

			return $this->redirect( array('action' => 'payment', $token) );
		}
	}

	public function payment($token = '') {
		$this->uses = array('Order');

		$order = $this->Order->findByToken($token);

		if(!$order) {
			$this->Session->setFlash('O pedido que você tentou acessar não existe mais.', 'error');
			$this->redirect('/');
		}

		$this->set(compact('token'));
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