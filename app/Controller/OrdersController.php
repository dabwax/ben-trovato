<?php

class OrdersController extends AppController {

	public function admin_index() {

		$this->paginate = array(
			'order' => array(
				'Order.created' => 'DESC'
			),
			'contain' => array(
				'User' => array('Client')
			)
		);
		
		$this->set('orders', $this->paginate());
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