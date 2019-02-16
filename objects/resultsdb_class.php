<?php

class ResultsDB extends ObjectDB {
	
	protected static $table = "results";
	
	public function __construct() {
		parent::__construct( self::$table );
		$this->add("category_id", "ValidateID");
		$this->add("title", "Validatetitle");
		$this->add("name", "Validatename");
		$this->add("description", "Validatedesc");
		$this->add("img", "Validateimg");
	}
	//====== Поиск результата по запросу из поисковой формы
	public static function search($words) {
		$select = self::getBaseSelect();
		$products = self::searchObjects($select, __CLASS__, array("title"), $words, Config::MIN_SEARCH_LEN);
		foreach ($products as $product) $product->setSectionAndCategory();
		return $products;
	}
	//==== загрузка секции и категории 
	private function setSectionAndCategory() {
		$section = new SectionDB();
		$section->load($this->section_id);
		$category = new CategoryDB();
		$category->load($this->cat_id);
		if ($section->isSaved()) $this->section = $section;
		if ($category->isSaved()) $this->category = $category;
		
	}
	//=========== устанавливаем абсолютный путь к файлам
	protected function postInit(){
		if( !is_null($this->img) ) $this->img = Config::DIR_IMG_RESULTS.$this->img;
		return true;
	}
	//============ перед проверкой имен файлов обрезаем лишнию информацию о пути к этим файлам
	protected function preValidate(){
		if( !is_null($this->img) ) $this->img = basename($this->img);
		return true;
	}
	
	private static function getBaseSelect(){
		$select = new Select( self::$db );
		$select->from( self::$table, "*" );
		return $select;
	}
	
	//============ загружаем все результаты и сортируем по "category_id"
	public static function getAllShow($count = false, $offset = false, $post_handling = false) {
		$select = self::getBaseSelect();
		$select->order("category_id", true);
		if ($count) $select->limit($count, $offset);
		$data = self::$db->select($select);
		$products = ObjectDB::buildMultiple(__CLASS__, $data);
		if ($post_handling) foreach ($products as $product) $product->postHandling();
		return $products;
	}
	
	public static function getAllOnPageAndSectionID($section_id, $count, $offset = false) {
		$select = self::getBaseSelect();
		$select->order("category_id", false)
			->where("`section_id` = ".self::$db->getSQ(), array($section_id))
			->limit($count, $offset);
		$data = self::$db->select($select);
		$products = ObjectDB::buildMultiple(__CLASS__, $data);
		foreach ($products as $product) $product->postHandling();
		return $products;
	}
		
	public static function getAllOnCatID($category_id, $order = false, $offset = false) {
		return self::getAllOnSectionOrCategory("category_id", $category_id, $order, $offset);
	}
	
	private static function getAllOnSectionOrCategory($field, $value, $order, $offset) {
		$select = self::getBaseSelect();
		$select->where("`$field` = ".self::$db->getSQ(), array($value))
			->order("date", $order);
		$data = self::$db->select($select);
		$products = ObjectDB::buildMultiple(__CLASS__, $data);
		return $products;
	}
	
	private function postHandling() {
		$this->img = Config::DIR_IMG_RESULTS.$this->img;
	}
}
?>