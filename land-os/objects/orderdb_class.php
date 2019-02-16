<?php

class OrderDB extends ObjectDB{

	protected static $table = "lan_orders";
	
	public function __construct(){
		parent::__construct( self::$table );
		$this->add("name","ValidateName");
		$this->add("price", "ValidatePrice");
		$this->add("phone", "ValidatePhone");
		$this->add("email", "ValidateEmail");
		$this->add("date_order", "ValidateDate", self::TYPE_TIMESTAMP );
		$this->add("date_confirm", "ValidateDate", self::TYPE_TIMESTAMP);
		$this->add("date_pay", "ValidateDate", self::TYPE_TIMESTAMP);
		$this->add("date_cancel", "Validatedate", self::TYPE_TIMESTAMP);
		$this->add("camp_id", "ValidateID");
		$this->add("split", "ValidateSplit");
		$this->add("func", "ValidateSplit");
	}

	public static function getConfirmOrders(){
		return OrderDB::getCountOnWhere( self::$table, "`date_confirm` IS NOT ".self::$db->getSQ(), Array(NULL) );
	}
	
	public static function getPaidOrders(){
		return OrderDB::getCountOnWhere( self::$table, "`date_pay` IS NOT ".self::$db->getSQ(), Array(NULL) );
	}
	
	public static function getCancelOrders(){
		return OrderDB::getCountOnWhere( self::$table, "`date_cancel` IS NOT ".self::$db->getSQ(), Array(NULL) );
	}
	
	public static function getTotalSum(){
		return OrderDB::getSumOnWhere( self::$table, "price" );
	}
	
	public static function getConfirmSum(){
		return OrderDB::getSumOnWhere( self::$table, "price", "`date_confirm` IS NOT ".self::$db->getSQ(), Array(NULL) );
	}
	
	public static function getPaidSum(){
		return OrderDB::getSumOnWhere( self::$table, "price", "`date_pay` IS NOT ".self::$db->getSQ(), Array(NULL) );
	}
	
	public static function getCancelSum(){
		return OrderDB::getSumOnWhere( self::$table, "price", "`date_cancel` IS NOT ".self::$db->getSQ(), Array(NULL) );
	}
	
	public static function getAllDesc($count = false, $offset = false) {
		$class = get_called_class();
		return self::getAllWithOrder($class::$table, $class, "id", false, $count, $offset);
	}
}
?>