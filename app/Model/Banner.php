<?php
App::uses('AppModel', 'Model');
App::uses('AttachmentBehavior', 'Uploader.Model/Behavior');
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
		'Uploader.Attachment' => array(
			'image' => array(
				'overwrite' => true,
				'dbColumn' => 'image'
			)
		)
	);
}
