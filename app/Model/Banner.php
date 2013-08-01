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
		'position' => array(
			'inList' => array(
				'rule' => array('inList', array('encima', 'embaixo') ),
				'message' => 'Você deve selecionar uma opção válida.'
			)
		),
		'image' => array(
			'extension' => array(
				'rule' => array('extension'),
				'message' => 'Forneça uma imagem num formato válido (jpg, png ou gif).',
				'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);

/**
 * Behaviors.
 */
	public $actsAs = array(
		'Upload.Upload' => array(
			'image' => array(
				'fields' => array(
					'dir' => 'image_dir'
				)
			)
		)
	);
}
