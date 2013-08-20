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

			App::uses('CakeEmail', 'Network/Email');

			$email = new CakeEmail('smtp');

			$email->emailFormat('html');

			$email->from(array('no-reply@bentrovato.com.br' => 'Ben Trovato'));

			$email->to($this->request->data['Subscription']['email']);

			$email->subject('Cadastrado na Newsletter com Sucesso - Loja Ben Trovato');

			$email->template('newsletter_cadastrado', 'default');

			$email->viewVars( array('data' => $this->request->data['Subscription']['email']) );

			$email->send();
		}
		
		exit;
	}

	public function admin_export() {
		$this->layout = "xls";

		$subscriptions = $this->Subscription->find('all');

		$this->set(compact('subscriptions'));
	}
}