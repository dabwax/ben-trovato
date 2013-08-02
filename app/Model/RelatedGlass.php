<?php

class RelatedGlass extends AppModel {

/**
 * Relacionamentos belongsTo.
 */
	public $belongsTo = array(
		'Glass' => array(
			'className' => 'Glass',
			'foreignKey' => 'glass_id'
		),
		'RelatedGlass' => array(
			'className' => 'RelatedGlass',
			'foreignKey' => 'related_glass_id'
		)
	);
}