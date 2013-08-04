<?php

class OrderItem extends AppModel {

	public $belongsTo = array(
		'Glass',
		'Lense'
	);
}