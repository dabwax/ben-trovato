<?php
App::uses('AppModel', 'Model');
/**
 * Banner Model
 *
 */
class Banner extends AppModel {

/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
		'image' => array(
			'extension' => array(
				'rule' => array('extension'),
				'message' => 'Forneça uma imagem num formato válido (jpg, png ou gif).',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'image_dir' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
}
