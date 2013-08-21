<?php

class OrdersController extends AppController {

	public function admin_index() {

		if(@$this->request->data['Order']['reference']) {
			$reference = $this->request->data['Order']['reference'];
		} else {
			$reference = '';
		}
		
		$this->paginate = array(
			'order' => array(
				'Order.created' => 'DESC'
			),
			'contain' => array(
				'User' => array('Client')
			),
			'conditions' => array(
				'Order.reference LIKE' => '%' . $reference . '%'
			)
		);
		
		$this->set('orders', $this->paginate());
	}

	public function admin_change_payment_status($id, $type) {
		if (!$this->Order->exists($id)) {
			throw new NotFoundException(__('Invalid order'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Order->save($this->request->data)) {
				$this->Session->setFlash(__('The order has been saved'), 'success');

				$order = $this->Order->findById($id);

				$user = $this->Order->User->findById($order['User']['id']);

				App::uses('CakeEmail', 'Network/Email');

				$email = new CakeEmail('smtp');

				$email->emailFormat('html');

				$email->from(array('no-reply@bentrovato.com.br' => 'Ben Trovato'));

				$email->to($user['Client']['email']);

				if($type == 'sent') {
					$subject = 'Óculos Enviado';
				} else if ($type == 'processing') {
					$subject = 'Preparando Envio';
				} else if($type == 'waiting') {
					$subject = 'Aguardando Receita';
				}

				$email->subject('Pedido ' . $subject . ' - Loja Ben Trovato');

				$email->template('pedido_change_status', 'default');

				$email->viewVars( array('user' => $user, 'order' => $order, 'type' => $type) );

				$email->send();

				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The order could not be saved. Please, try again.'), 'error');
			}
		} else {
			$options = array('conditions' => array('Order.' . $this->Order->primaryKey => $id));
			$this->request->data = $this->Order->find('first', $options);
		}
		$this->set(compact('type'));
	}

	public function admin_view($id = null) {
		$this->Order->id = $id;
		if (!$this->Order->exists()) {
			throw new NotFoundException(__('Invalid order'));
		}

		$order = $this->Order->find('first', array(
			'conditions' => array(
				'Order.id' => $id,
			),
			'contain' => array(
				'User' => array('Client'),
			)
		) );

		$this->set(compact('order'));
	}

	public function admin_export() {
		$this->layout = "xls";

		$orders = $this->Order->find('all', array(
			'order' => array(
				'Order.created DESC'
			),
			'contain' => array(
				'User' => array('Client')
			)
		) );

		$this->set(compact('orders'));
	}

	public function admin_delete($id = null) {
		$this->Order->id = $id;
		if (!$this->Order->exists()) {
			throw new NotFoundException(__('Invalid order'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Order->delete()) {
			$this->Session->setFlash(__('Order deleted'), 'success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Order was not deleted'), 'error');
		$this->redirect(array('action' => 'index'));
	}
}