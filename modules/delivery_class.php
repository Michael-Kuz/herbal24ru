<?php

class Delivery extends ModuleHornav{
	
	public function __construct(){
		parent::__construct();
		if ( !session_id() ) session_start();
		
		if( !isset($_SESSION["self"]) )$_SESSION["self"] = false;
		if( !isset($_SESSION["delivery"]) )$_SESSION["delivery"] = false;
						
		$this->add("link_self", URL::get("function.php", null, array("func"=>"self") ) );
		$this->add("link_delivery", URL::get("function.php", null, array("func"=>"delivery") ) );
		$this->add("view_self", $_SESSION["self"]);
		$this->add("view_delivery", $_SESSION["delivery"]);
		$this->add("link_contacts", URL::get("contacts") );
	}
		
	public function getTmplFile(){
		return "delivery";
	}
}
?>