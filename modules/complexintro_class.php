<?php

class ComplexIntro extends ModuleHornav{

	private $tpl_file;
	public function __construct( $auth_user=NULL,$name_tpl_file="complexprog_intro" ){
		parent::__construct();
		if ( !session_id() ) session_start();
		if( !isset( $_SESSION["num_months"] ) ) $_SESSION["num_months"] = 1;
		$this->auth_user = $auth_user;
		$this->tpl_file = $name_tpl_file;
		$this->add("id_prev", null);
		$this->add("message");
		$this->add("product");
		$this->add("all_products");
		$this->add("section");
		$this->add("num_months");
		$this->add("syfix");
		$this->add("complex_sum");
		$this->add("url");
		$this->add("uri");
		$this->add("items", null, true);
		$this->add("to_select", null, true);
		$this->add("add_cart",URL::get("function.php", null, array("func"=>"add_cart") ) );
		$this->add("quantity", null, true);
		$this->add("syfix_1", null, true);
		$this->add("link_qty", URL::get("function.php", null, array("func"=>"save_composition") ) );
		$this->add("link_save", URL::get("function.php", null, array("func"=>"save_composition") ) );
		$this->add("auth_user");
	}
	
	//====== вывод единицы измерения с нужным суффиксом
	public function numberOfSuffix($number,$suffix){
		return $this->numberOf( $number,$suffix );
	}
	//====== вывод массива единицы измерения с нужным суффиксом
	public function arrayOfSuffix($numbers,$suffix){
		$i=0;
		foreach( $numbers as $nm ){
			$words[$i] = $this->numberOf( $nm,$suffix );
			$i++;
		}
		return $words;
	}
	//====== получаем количество комплексных программ 
	public function getNumMonths( $id ){
		return isset( $_SESSION["num_months"."$id"] ) ? $_SESSION["num_months"."$id"] : 1;
	}
	//====== расчитываем стоимость всего продукта комплексной программы
	public function getComplexSum( $all_products ){
		$price = "price_25";
		if( $this->auth_user ) $price = $this->auth_user->discount;
		for( $i=0,$sum=0; $i<count($all_products); $i++ )
			foreach( $all_products[$i] as $product ){
				if( $product->num )
					$sum += $product->{$price} * $product->num;
			}
		return $sum;
	}
	
	//====== расчитываем сколько банок каждого типа(категории) продукта входит в состав комплексной программы
	public function getCategoryQuantity( $all_products ){
		for( $i=0; $i<count($all_products); $i++ ){
			$num_cans_cat[$i] = 0;
			foreach( $all_products[$i] as $product ){
				$num_cans_cat[$i] += $product->num;
			}
		}
		return $num_cans_cat;
	}
			
	//====== получаем тип обьекта по ID секции
	private function getClassOnSection( $section_id ){
		switch( $section_id ){
			case 1:
			case 2:
				return "FoodDB";
			case 3:
				return "ComplexProgDB";
			case 4:
				return "CosmeticsDB";
		}
		$this->notFound();
		exit;
	}
	
	public function getTmplFile(){
		return $this->tpl_file;
	}
}
?>