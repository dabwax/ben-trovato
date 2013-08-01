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
	
}