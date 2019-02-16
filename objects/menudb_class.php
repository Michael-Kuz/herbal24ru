<?php

class MenuDB extends ObjectDB {
	
	const TOPMENU =2;
	const MAINMENU=1;
	private static $TABSMENU = 3;
	private static $TRAININGMATERIALS = 4; //меню с учебным материалом
	
	protected static $table = "menu";
	
	public function __construct() {
		parent::__construct(self::$table);
		$this->add("type", "ValidateID");
		$this->add("title", "ValidateTitle");
		$this->add("link", "ValidateURL");
		$this->add("parent_id", "ValidateID");
		$this->add("external", "ValidateBoolean");
	}
	
	public static function getTrainingMaterialsMenu() {
		return ObjectDB::getAllOnField(self::$table, __CLASS__, "type", self::$TRAININGMATERIALS, "id");
	}
	
	public static function getTabsMenu() {
		return ObjectDB::getAllOnField(self::$table, __CLASS__, "type", self::$TABSMENU, "id");
	}
	
	public static function getTopMenu() {
		return ObjectDB::getAllOnField(self::$table, __CLASS__, "type", TOPMENU, "id");
	}
	
	public static function getMainMenu() {
		return ObjectDB::getAllOnField(self::$table, __CLASS__, "type", MAINMENU, "id");
	}
	
}

?>