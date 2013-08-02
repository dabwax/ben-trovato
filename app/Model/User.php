<?php
App::uses('AuthComponent', 'Controller/Component');

class User extends AppModel {

	public $hasOne = array(
		'Client'
	);

	public $validate = array(
		'name' => array(
			'notEmpty' => array(
				'rule' => 'notEmpty',
				'message' => 'O nome é obrigatório',
				'on' => 'create'
			)
		),
		'username' => array(
			'unique' => array(
				'rule' => 'isUnique',
				'message' => 'Esse usuário já existe',
				'on' => 'create'
			),
			'alphaNumeric' => array(
                'rule'     => 'alphaNumeric',
                'required' => true,
                'message'  => 'O usuário só pode ter letras e números apenas',
                'on' => 'create'
            ),
		),
		'password' => array(
			'notEmpty' => array(
				'rule' => 'notEmpty',
				'on' => 'create'
			),
            'between' => array(
                'rule'    => array('between', 5, 15),
                'message' => 'A senha precisa ter entre 5 e 15 caracteres',
                'on' => 'create'
            )
		)
	);

	public function beforeSave($options = array()) {
		if (isset($this->data[$this->alias]['password'])) {
			$this->data[$this->alias]['password'] = AuthComponent::password($this->data[$this->alias]['password']);
		}
		return true;
	}
}