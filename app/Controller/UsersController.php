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
				$this->Session->setFlash(__('The user has been saved.'), 'success');

				return $this->redirect( array('action' => 'index', $role) );
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'), 'error');
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
				$this->Session->setFlash(__('The user has been saved.'), 'success');

				return $this->redirect( array('action' => 'index', $role) );
			} else {
				$this->Session->setFlash(__('The user could not be saved. Please, try again.'), 'error');
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
			$this->Session->setFlash(__('User deleted'), 'success');
			$this->redirect(array('action' => 'index'));
		}
		$this->Session->setFlash(__('User was not deleted'), 'error');
		$this->redirect(array('action' => 'index'));
	}

	public function admin_login() {
		$this->layout = "login";
		
	    if ($this->request->is('post')) {

	    	$user = $this->User->findByUsername($this->request->data['User']['username']);

	    	if($user) {
	    		if($user['User']['role'] != 'admin') {
	            	$this->Session->setFlash(__('Invalid username or password, try again'), 'error');

	            	return $this->redirect(array('action' => 'login'));
	    		}
	    	}
	        if ($this->Auth->login()) {
            	$this->Session->setFlash(__('Seja bem-vindo de volta! =)'), 'success');

	            $this->redirect($this->Auth->redirect());
	        } else {
	            $this->Session->setFlash(__('Invalid username or password, try again'), 'error');
	        }
	    }
	}

	public function admin_logout() {
	    $this->redirect($this->Auth->logout());
	}

	public function login() {
		
	    if ($this->request->is('post')) {

	        if ($this->Auth->login()) {
            	$this->Session->setFlash(__('Seja bem-vindo de volta a Ben Trovato.'), 'success');
	        } else {
	            $this->Session->setFlash(__('Invalid username or password, try again'), 'error');
	        }

	    }

	    $this->redirect('/');
	}

	public function logout() {
		$this->Auth->logout();

		$this->Session->setFlash('A sua sessão foi expirada. Até logo.', 'error');

	    $this->redirect('/');
	}

	public function ajax_add() {
		// Configurações para action ser usada como AJAX
		$this->layout = "ajax";
		$this->autoRender = false;

		$this->request->data['User']['role'] = 'client';

		// Define os dados recebidos ao Model
		$this->User->set($this->request->data);

		// Condicional que verifica se o Model valida ou não
		if($this->User->saveAll($this->request->data, array('validate' => 'only'))) {
			
			// Se validar, o usuário é salvo
			$this->User->saveAll($this->request->data);

			// É armazenado o ID do usuário
			$id = $this->User->id;

			// É inserido o ID do usuário no array de dados
			$this->request->data['User'] = array_merge($this->request->data['User'], array('id' => $id));

			// É efetuado um login com os dados do usuário
			$this->Auth->login($this->request->data['User']);

			// Retorno de string que é usado na requisição AJAX
			echo 'sucesso';
		// Do contrário, se a validação não passar
		} else {
			// É recuperado os erros da validação
			$erros = $this->User->validationErrors;

			// Os erros são tratados para ser exibido ao usuário
			$retorno = 'Não foi possível cadastrar você, pois:' . "\n\n";

			foreach($erros as $erro) {
				foreach($erro as $erro_msg) {
					$retorno .= $erro_msg . ".\n";
				}
			}

			// Retorno de string com os erros de validação
			echo $retorno;
		}
	}
}
 ?>