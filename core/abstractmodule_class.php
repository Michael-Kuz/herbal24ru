<?php

abstract class AbstractModule {
	
	private $properties = array();
	private $view;
	public $cart = array();
			
	public function __construct($view,$auth_user,$discount) {
		$this->view = $view;
	}
	
	final protected function add($name, $default = null, $is_array = false) {
		$this->properties[$name]["is_array"] = $is_array;
		if ($is_array && $default == null) $this->properties[$name]["value"] = array();
		else $this->properties[$name]["value"] = $default;
	}
	
	final public function __get($name) {
		if (array_key_exists($name, $this->properties)) return $this->properties[$name]["value"];
		return null;
	}
	
	final public function __set($name, $value) {
		if (array_key_exists($name, $this->properties)) {
			if (is_array($this->properties[$name]["value"])) {
				if (is_array($value)) $this->properties[$name]["value"] = $value;
				else $this->properties[$name]["value"][] = $value;
			}
			else $this->properties[$name]["value"] = $value;
		}
		else return false;
	}
	
	final protected function getProperties() {
		$ret = array();
		foreach ($this->properties as $name => $value) {
			$ret[$name] = $value["value"];
		}
		return $ret;
	}
	
	final protected function addObj($name, $field, $obj) {
		if (array_key_exists($name, $this->properties)) $this->properties[$name]["value"][$field] = $obj;
	}
	
	final protected function getComplexValue($obj, $field) {
		if (strpos($field, "->") !== false) $field = explode("->", $field);
		if (is_array($field)) {
			$value = $obj;
			foreach ($field as $f) $value = $value->{$f};
		}
		else $value = $obj->$field;
		return $value;
	}
	
	final public function __toString() {
		$this->preRender();
		return $this->view->render($this->getTmplFile(), $this->getProperties(), true);
	}
	
	protected function preRender() {}
	
	final protected function numberOf($number, $suffix) {
		$keys = array(2, 0, 1, 1, 1, 2);
		$mod = $number % 100;
		$suffix_key = ($mod > 7 && $mod < 20) ? 2: $keys[min($mod % 10, 5)];
		return $suffix[$suffix_key];
	}
	
	abstract public function getTmplFile();
	
	//====== Расчитываем и запоняем массив данных корзины
	public function getCart( $auth_user ){
		$manage = new Manage();
		$cart_data = array();
		$tmp = array();
		$price = "price_25";
		if( $auth_user ) $price = $auth_user->discount;
		if( isset($_SESSION["cart"]) ){
			$ids = explode( ",",$_SESSION["cart"] );
			$ids_unique = array_unique( $ids );
			$i=0;
			$cart_data["cart_count"] = 0;
			$cart_data["cart_summa"] = 0;
			foreach( $ids_unique as $val ){
				$cart_data[$i]["count"] = count( array_keys( $ids,$val ) );
				$tmp = explode("->",$val);
				$section_id = $cart_data[$i]["section_id"] = $tmp[0];
				$id = $cart_data[$i]["id"] = $tmp[1];
				$product_db = $manage->getProductClass( $section_id ); //== открываем нужный тип обьекта по ID секции
				$product_db->load($id);
				$cart_data["cart_count"] += $cart_data[$i]["count"];
				$cart_data[$i]["price"] = $product_db->{$price};
				$cart_data[$i]["title"] = $product_db->title;
				$cart_data[$i]["name"] = $product_db->name;
				$cart_data[$i]["img"] = $product_db->img;
				$cart_data[$i]["summa"] = $cart_data[$i]["count"] * $cart_data[$i]["price"];
				$cart_data["cart_summa"] += $cart_data[$i]["summa"];
				$cart_data[$i]["link_delete"] = URL::get("function.php",NULL,array("func"=>"delete_cart","section_id"=>"$section_id","id"=>"$id") );
				$i++;
			}
		}
		return $cart_data;
	}
}
?>