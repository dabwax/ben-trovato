<?php 

class UsersController extends AppController {

	public function admin_index($role = 'admin') {
		$this->paginate = array(
			'conditions' => array(
				'User.role' => $role
			)
		);

		$this->set('users', $this->paginate());
		$this->set(compact('role'));
	}

	public function admin_add($role = 'admin') {

		if($this->request->is('post')) {
			if($this->User->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved.'));

				return $this->redirect( array('action' => 'index', $role) );
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		}
		$this->set(compact('role'));
	}

	public function admin_edit($id = null) {
		$this->User->id = $id;

		if(!$this->User->exists()) {
			$this->Session->setFlash(__('Invalid user'));

			return $this->redirect( array('action' => 'index', 'client') );
		}

		if($this->request->is('get')) {
			$this->request->data = $this->User->read();

			unset($this->request->data['User']['password']);
		} else {

			if($this->request->data['User']['password'] == '') {
				unset($this->request->data['User']['password']);
			}
			
			if($this->User->save($this->request->data)) {
				$this->Session->setFlash(__('The user has been saved.'));

				return $this->redirect( array('action' => 'index', $role) );
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'));
			}
		}
		$this->set(compact('role'));
	}

	public function admin_delete($id = null) {
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this->request->onlyAllow('post', 'delete');
		if ($this->User->delete()) {
			$this->Session->setFlash(__('User deleted'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('User was not deleted'));
		$this->redirect(array('action' => 'index'));
	}

	public function admin_login() {
		$this->layout = "login";
		
	    if ($this->request->is('post')) {

	    	$user = $this->User->findByUsername($this->request->data['User']['username']);

	    	if($user) {
	    		if($user['User']['role'] != 'admin') {
	            	$this->Session->setFlash(__('Invalid username or password, try again'));

	            	return $this->redirect(array('action' => 'login'));
	    		}
	    	}
	        if ($this->Auth->login()) {
	            $this->redirect($this->Auth->redirect());
	        } else {
	            $this->Session->setFlash(__('Invalid username or password, try again'));
	        }
	    }
	}

	public function admin_logout() {
	    $this->redirect($this->Auth->logout());
	}
}
 ?>