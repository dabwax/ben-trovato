<?php

class TestemonialsController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Testemonial->recursive = 0;

		$this->paginate = array(
			'order' => array(
				'Testemonial.created' => 'DESC'
			)
		);
		
		$this->set('testemonials', $this->paginate());
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Testemonial->create();
			if ($this->Testemonial->save($this->request->data, true)) {
				$this->Session->setFlash(__('The testemonial has been saved'), 'success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The testemonial could not be saved. Please, try again.'), 'error');
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		if (!$this->Testemonial->exists($id)) {
			throw new NotFoundException(__('Invalid testemonial'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Testemonial->save($this->request->data)) {
				$this->Session->setFlash(__('The testemonial has been saved'), 'success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The testemonial could not be saved. Please, try again.'), 'error');
			}
		} else {
			$options = array('conditions' => array('Testemonial.' . $this->Testemonial->primaryKey => $id));
			$this->request->data = $this->Testemonial->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->Testemonial->id = $id;
		if (!$this->Testemonial->exists()) {
			throw new NotFoundException(__('Invalid testemonial'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Testemonial->delete()) {
			$this->Session->setFlash(__('Testemonial deleted'), 'success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Testemonial was not deleted'), 'error');
		$this->redirect(array('action' => 'index'));
	}
}
