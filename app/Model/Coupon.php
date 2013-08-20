<?php

class Coupon extends AppModel {

	public $hasMany = array(
		'UsedCoupon'
	);

/**
 * Método para tratar a formatação do campo de preço antes do Model ser salvo no banco de dados.
 */
	public function formatPrice($price = 'R$ 0,00') {
		$price = $this->data[$this->alias]['discount'];

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
		if(isset($this->data[$this->alias]['discount'])) {
			$this->data[$this->alias]['discount'] = $this->formatPrice($this->data[$this->alias]['discount']);
		}
		
		return true;
	}
}