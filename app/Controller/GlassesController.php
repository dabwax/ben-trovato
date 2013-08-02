<?php
App::uses('AppController', 'Controller');
/**
 * Glasses Controller
 *
 */
class GlassesController extends AppController {

	public function all($sex = 'masculino', $type = 'grau') {

		// Pesquisa todos os óculos baseados no sexo e tipo selecionados
		$glasses = $this->Glass->find('all', array(
			'conditions' => array(
				'Glass.sex' => $sex,
				'Glass.type' => $type,
			)
		) );

		// Recupera todos os atributos do óculos
		$this->getAttributes();
	}

/**
 * Método para recuperar todos os atributos usados.
 */
	private function getAttributes() {
		
		/**
		 * Atributos do model para gerar o formulário mais DRY.
		 */
		$options['sex'] = $this->Glass->sex;
		$options['color'] = $this->Glass->color;
		$options['material'] = $this->Glass->material;
		$options['format'] = $this->Glass->format;
		$options['size'] = $this->Glass->size;
		$options['type'] = $this->Glass->type;
		$options['related'] = $this->Glass->find('list');

		// Envia os atributos do model para a view
		$this->set(compact('options'));
	}

/**
 * index method
 *
 * @return void
 */
	public function admin_index() {
		$this->Glass->recursive = 0;

		$this->paginate = array(
			'order' => array(
				'Glass.created' => 'DESC'
			)
		);
		
		$this->set('glasses', $this->paginate());
	}

	public function admin_clone($id = null) {
		$this->autoRender = false;

		if (!$this->Glass->exists($id)) {
			throw new NotFoundException(__('Invalid glass'));
		}

		$this->request->data = $this->Glass->find('first', array('conditions' => array('Glass.id' => $id) ) );

		unset($this->request->data['Glass']['id']);

		$this->Glass->save($this->request->data);

		return $this->redirect(array('action' => 'edit', $this->Glass->getInsertID()));
	}

/**
 * add method
 *
 * @return void
 */
	public function admin_add() {
		if ($this->request->is('post')) {
			$this->Glass->create();
			if ($this->Glass->save($this->request->data)) {
				$this->Session->setFlash(__('The glass has been saved'), 'success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The glass could not be saved. Please, try again.'), 'error');
			}
		}

		$this->getAttributes();
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_edit($id = null) {
		if (!$this->Glass->exists($id)) {
			throw new NotFoundException(__('Invalid glass'));
		}
		if ($this->request->is('post') || $this->request->is('put')) {
			if ($this->Glass->save($this->request->data)) {
				$this->Session->setFlash(__('The glass has been saved'), 'success');
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The glass could not be saved. Please, try again.'), 'error');
			}
		} else {
			$options = array('conditions' => array('Glass.' . $this->Glass->primaryKey => $id));
			$this->request->data = $this->Glass->find('first', $options);
		}

		$this->getAttributes();
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function admin_delete($id = null) {
		$this->Glass->id = $id;
		if (!$this->Glass->exists()) {
			throw new NotFoundException(__('Invalid glass'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->Glass->delete()) {
			$this->Session->setFlash(__('Glass deleted'), 'success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('Glass was not deleted'), 'error');
		$this->redirect(array('action' => 'index'));
	}
}
