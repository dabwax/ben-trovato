<?php
App::uses('AppController', 'Controller');
/**
 * Banners Controller
 *
 * @property Banner $Banner
 */
class BannersController extends AppController {

/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Banner->recursive = 0;

		$this->paginate = array(
			'order' => array(
				'Banner.created' => 'DESC'
			)
		);
		
		$this->set('banners', $this->paginate());
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Banner->create();
			if ($this->Banner->save($this->request->data)) {
				$this->Session->setFlash(__('The banner has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The banner could not be saved. Please, try again.'));
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
		if (!$this->Banner->exists($id)) {
			throw new NotFoundException(__('Invalid banner'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Banner->save($this->request->data)) {
				$this->Session->setFlash(__('The banner has been saved'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The banner could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Banner.' . $this->Banner->primaryKey => $id));
			$this->request->data = $this->Banner->find('first', $options);
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
		$this->Banner->id = $id;
		if (!$this->Banner->exists()) {
			throw new NotFoundException(__('Invalid banner'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Banner->delete()) {
			$this->Session->setFlash(__('Banner deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Banner was not deleted'));
		$this->redirect(array('action' => 'index'));
	}
}
