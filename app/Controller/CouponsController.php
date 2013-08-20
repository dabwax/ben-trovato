<?php

class CouponsController extends AppController {

	public function admin_index() {
		$this->Coupon->recursive = 0;

		$this->paginate = array(
			'order' => array(
				'Coupon.created' => 'DESC'
			),
			'contain' => array(
				'UsedCoupon'
			)
		);
		
		$this->set('coupons', $this->paginate());
	}

	public function admin_add() {
		$number = substr(number_format(time() * rand(),0,'',''),0,8);

		$this->request->data['Coupon']['number'] = $number;
		$this->request->data['Coupon']['is_used'] = 0;

		$this->Coupon->save($this->request->data);

		$this->Session->setFlash('O cupom foi gerado com sucesso. O número dele é: ' . $number, 'success');

		return $this->redirect( array('action' => 'edit', $this->Coupon->getInsertID() ) );
	}

	public function admin_edit($id = null) {
		if (!$this->Coupon->exists($id)) {
			throw new NotFoundException(__('Invalid coupon'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Coupon->save($this->request->data)) {
				$this->Session->setFlash(__('The coupon has been saved'), 'success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The coupon could not be saved. Please, try again.'), 'error');
			}
		} else {
			$options = array('conditions' => array('Coupon.' . $this->Coupon->primaryKey => $id));
			$this->request->data = $this->Coupon->find('first', $options);
		}
	}

	public function admin_delete($id = null) {
		$this->Coupon->id = $id;
		if (!$this->Coupon->exists()) {
			throw new NotFoundException(__('Invalid coupon'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Coupon->delete()) {
			$this->Session->setFlash(__('Coupon deleted'), 'success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Coupon was not deleted'), 'error');
		$this->redirect(array('action' => 'index'));
	}
}