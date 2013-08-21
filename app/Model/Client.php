<?php

class Client extends AppModel {

	public $belongsTo = array(
		'User'
	);

	public $validate = array(
		'cpf' => array(
			'notEmpty' => array(
				'rule' => 'notEmpty',
				'message' => 'O CPF é obrigatório',
				'on' => 'create'
			)
		),
	);

}