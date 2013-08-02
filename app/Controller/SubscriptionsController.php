<?php

class SubscriptionsController extends AppController {

	public function ajax_add() {
		$this->layout = "ajax";
		$this->autoRender = false;

		$email = $this->request->data['Subscription']['email'];

		$findEmail = $this->Subscription->findByEmail($email);

		if($findEmail) {
			echo 'Este e-mail já está cadastrado.';
		} else {
			$this->Subscription->save($this->request->data);
			echo 'O e-mail foi cadastrado com sucesso.';
		}
		
		exit;
	}

	public function admin_export() {
		$this->layout = "xls";

		$subscriptions = $this->Subscription->find('all');

		$this->set(compact('subscriptions'));
	}
}