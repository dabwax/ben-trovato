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

		$this->set(compact('role'));
	}
}
 ?>