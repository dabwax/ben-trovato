<?php
/**
 * Routes configuration
 *
 * In this file, you set up routes to your controllers and their actions.
 * Routes are very important mechanism that allows you to freely connect
 * different urls to chosen controllers and their actions (functions).
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
 * @package       app.Config
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
/**
 * Here, we are connecting '/' (base path) to controller called 'Pages',
 * its action called 'display', and we pass a param to select the view file
 * to use (in this case, /app/View/Pages/home.ctp)...
 */
	Router::connect('/', array('controller' => 'home', 'action' => 'index'));

/**
 * Rotas da loja.
 */
	Router::connect('/oculos-masculino/*', array('controller' => 'glasses', 'action' => 'all', 'masculino') );
	Router::connect('/oculos-feminino/*', array('controller' => 'glasses', 'action' => 'all', 'feminino') );
	Router::connect('/quem-somos', array('controller' => 'pages', 'action' => 'display', 'quem-somos') );
	Router::connect('/preco', array('controller' => 'pages', 'action' => 'display', 'preco') );
	Router::connect('/termos-de-uso-e-condicoes', array('controller' => 'pages', 'action' => 'display', 'termos-de-uso') );
	Router::connect('/faq', array('controller' => 'pages', 'action' => 'display', 'faq') );
	Router::connect('/contato', array('controller' => 'pages', 'action' => 'display', 'contato') );
	Router::connect('/carrinho-de-compras', array('controller' => 'cart', 'action' => 'index') );
	Router::connect('/minha-conta', array('controller' => 'users', 'action' => 'account') );
	Router::connect('/excluir-item-do-carrinho/*', array('controller' => 'cart', 'action' => 'delete_order_item') );
	Router::connect('/oculos/*', array('controller' => 'glasses', 'action' => 'view') );
	Router::connect('/fittingbox/*', array('controller' => 'glasses', 'action' => 'fittingbox') );
	Router::connect('/depoimentos', array('controller' => 'testemonials', 'action' => 'index') );
	Router::connect('/admin', array('controller' => 'home', 'admin' => true, 'action' => 'index'));

	Router::parseExtensions('xls');
	
/**
 * ...and connect the rest of 'Pages' controller's urls.
 */
	Router::connect('/pages/*', array('controller' => 'pages', 'action' => 'display'));

/**
 * Load all plugin routes. See the CakePlugin documentation on
 * how to customize the loading of plugin routes.
 */
	CakePlugin::routes();

/**
 * Load the CakePHP default routes. Only remove this if you do not want to use
 * the built-in default routes.
 */
	require CAKE . 'Config' . DS . 'routes.php';
