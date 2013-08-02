<?php

class Glass extends AppModel {

/**
 * Sexos.
 */
	public $sex = array(
		'masculino' => 'Masculino',
		'feminino' => 'Feminino',
	);

/**
 * Cores.
 */
	public $color = array(
		'tartaruga' => 'Tartaruga',
		'verde' => 'Verde',
		'listrado' => 'Listrado',
		'azul' => 'Azul',
		'cinza' => 'Cinza',
		'amarelo' => 'Amarelo',
		'preto' => 'Preto',
		'vermelho' => 'Vermelho',
		'marrom' => 'Marrom',
		'castanho' => 'Castanho',
		'crystal' => 'Crystal',
	);

/**
 * Materiais.
 */
	public $material = array(
		'acetato' => 'Acetato',
	);

/**
 * Formatos.
 */
	public $format = array(
		'quadrado' => 'Quadrado',
		'retangulo' => 'Retângulo',
		'redondo' => 'Redondo',
	);

/**
 * Tamanhos.
 */
	public $size = array(
		'estreito' => 'Estreito',
		'medio' => 'Médio',
		'largo' => 'Largo',
	);
	

/**
 * Tipos.
 */
	public $type = array(
		'grau' => 'Grau',
		'solar' => 'Solar',
	);

	public $validate = array(
		'name' => array(
			'required' => array(
				'rule' => 'notEmpty',
			)
		),
		'sku' => array(
			'required' => array(
				'rule' => 'notEmpty',
			)
		),
		'price' => array(
			'required' => array(
				'rule' => 'notEmpty',
			)
		),
		'sex' => array(
			'enum' => array(
				'rule' => array('validateEnum', 'sex'),
			)
		),
		'color' => array(
			'enum' => array(
				'rule' => array('validateEnum', 'color'),
			)
		),
		'material' => array(
			'enum' => array(
				'rule' => array('validateEnum', 'material'),
			)
		),
		'format' => array(
			'enum' => array(
				'rule' => array('validateEnum', 'format'),
			)
		),
		'size' => array(
			'enum' => array(
				'rule' => array('validateEnum', 'size'),
			)
		),
		'type' => array(
			'enum' => array(
				'rule' => array('validateEnum', 'type'),
			)
		),
		'photo_1' => array(
			'extension' => array(
				'rule' => array('extension'),
				'message' => 'Forneça uma imagem num formato válido (jpg, png ou gif).',
				'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'photo_2' => array(
			'extension' => array(
				'rule' => array('extension'),
				'message' => 'Forneça uma imagem num formato válido (jpg, png ou gif).',
				'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'image_hover' => array(
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
			'photo_1' => array(
				'fields' => array(
					'dir' => 'photo_1_dir',
					'size' => false,
					'type' => false,
				)
			),
			'photo_2' => array(
				'fields' => array(
					'dir' => 'photo_2_dir',
					'size' => false,
					'type' => false,
				)
			),
			'image_hover' => array(
				'fields' => array(
					'dir' => 'image_hover_dir',
					'size' => false,
					'type' => false,
				)
			)
		)
	);

/**
 * Relacionamentos hasAndBelongsToMany.
 */
	public $hasAndBelongsToMany = array(
		'Related' => array(
			'className' => 'Glass',
			'joinTable' => 'related_glasses',
			'foreignKey' => 'glass_id',
			'associationForeignKey' => 'related_id',
			'unique' => 'keepExisting'
		)
	);

/**
 * Método para validação de campos tipo Enum.
 */
	public function validateEnum($check, $column) {

		// Verifica se o valor do campo existe no atributo do campo no Model
		if(array_key_exists($check[$column], $this->$column)) {
			return true;
		} else {
			return false;
		}
		
	}

/**
 * Método para tratar a formatação do campo de preço antes do Model ser salvo no banco de dados.
 */
	public function formatPrice($price = 'R$ 0,00') {
		$price = $this->data[$this->alias]['price'];

		$new_price = explode('R$ ', $price);

		if(isset($new_price[1])) {
			$price = str_replace(',', '.', $new_price[1]);
		}

		return $price;
	}

/**
 * Callback invocado antes de salvar o Model.
 */
	public function beforeSave($options = array()) {

		// Trata o campo de preço
		$this->data[$this->alias]['price'] = $this->formatPrice($this->data[$this->alias]['price']);

		return true;
	}
	
}