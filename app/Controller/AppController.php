<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {
/**
 * Define qual o nome da loja.
 */
	public $storeName = 'Ben Trovato';

/**
 * Helpers.
 */
	public $helpers = array(
		'Html',
		'Form',
		'Session',
		'Loja'
	);

/**
 * Componentes.
 */
	public $components = array(
        'Session',
        'Auth' => array(
            'loginRedirect' => array('controller' => 'home', 'admin' => 'true', 'action' => 'index'),
            'logoutRedirect' => array('controller' => 'home', 'admin' => false, 'action' => 'index')
        ),
        'RequestHandler'
    );

/**
 * Construtor geral.
 */
	public function beforeFilter() {

		/**
		 * Envia para as views qual o nome da loja.
		 */
		$this->setStoreName();
		
		/**
		 * Verifica se está na rota padrão ou na rota de admin.
		 * Se estiver na rota de admin, é usado o layout de admin.
		 */
		$this->setLayoutBasedOnRoute();

		/**
		 * Define as actions públicas (qualquer um pode acessar).
		 */
		$this->setPublicActions();

		/**
		 * Apenas usuários com cargo administrativo podem acessar a rota de admin.
		 */
		$this->onlyAdminAccessAdmin();

		/**
		 * Envia para as views todas as configurações da loja.
		 */
		$this->setSettings();

		/**
		 * Gera uma Session ID para o visitante.
		 */
		$this->generateSessionId();

		/**
		 * Recupera todos os óculos do carrinho do usuário.
		 */
		$this->getOrderItemsFromUser();

		/**
		 * Recupera informações do usuário logado.
		 */
		$this->getUserLoggedInfos();
	}

	public function getUserLoggedInfos() {
		$this->uses = array('User');

		// Recupera os dados do usuário atual
		$userLogged = $this->User->find('first', array(
			'conditions' => array(
				'User.id' => AuthComponent::user('id')
			),
			'contain' => array(
				'Client'
			)
		) );

		// Envia os dados para as views
		$this->set(compact('userLogged'));

		return $userLogged;
	}

/**
 * Recupera todos os óculos do carrinho do usuário.
 */
	public function getOrderItemsFromUser() {
		// Declara os Models a serem usados
		$this->uses = array('OrderItem');
		
		// Recupera todos os itens pertencentes a sessão do usuário
		$orderItems = $this->OrderItem->find('all', array(
			'conditions' => array(
				'OrderItem.id' => $this->Session->read('OrderItemId')
			),
			'contain' => array(
				'Glass',
				'Lense'
			)
		) );

		// Envia para as views
		$this->set(compact('orderItems'));

		// Retorna os itens (caso a função seja usada nos Controllers, isso é neecessário)
		return $orderItems;
	}

/**
 * Gera um Session ID para o visitante.
 */
	public function generateSessionId() {
		$this->Session->id(session_id());
	}

/**
 * Envia para as views todas as configurações da loja.
 */
	public function setSettings() {
		$this->uses = array('Setting');

		$settings = $this->Setting->find('all');

		$settings_view = array();

		foreach($settings as $setting) {
			$settings_view[$setting['Setting']['key']] = $setting['Setting']['value'];
		}

		$this->set('configuracoes', $settings_view);

		return $settings_view;
	}

/**
 * Apenas usuários com cargo administrativo podem acessar a rota de admin.
 */
	public function onlyAdminAccessAdmin() {
		if($this->params['prefix'] == 'admin' && AuthComponent::user() && AuthComponent::user('role') != 'admin') {

			$this->Session->setFlash(__("You can't access this page."), 'error');

			return $this->redirect('/');

		}
	}

/**
 * Define as actions públicas (qualquer um pode acessar).
 */
	public function setPublicActions() {
		$this->Auth->allow('index', 'view', 'display', 'ajax_add', 'ajax_forgot', 'all', 'cart', 'payment_notification');
	}

/**
 * Envia para as views qual o nome da loja.
 */
	public function setStoreName() {
		$this->set('storeName', $this->storeName);
	}

/**
 * Verifica se está na rota padrão ou na rota de admin.
 * Se estiver na rota de admin, é usado o layout de admin.
 */
	public function setLayoutBasedOnRoute() {
		// Define todas as rotas que a aplicação usará
		$routes = array('admin');

		// Recupera o prefixo a ser visualizado
		$prefix = $this->params['prefix'];

		/**
		 * Verifica se o prefixo encontra-se na lista de rotas.
		 * Se encontrar, é usado o layout do prefixo.
		 * Do contrário, é usado o layout padrão.
		 */
		if(in_array($prefix, $routes)) {
			$this->layout = $prefix;
		} else {
			$this->layout = 'default';
		}
	}
}
