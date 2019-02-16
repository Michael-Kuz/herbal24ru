<?php

class ProductDB extends ObjectDB {
	
	protected static $table = "food";
	
	public function __construct() {
		parent::__construct( self::$table );
		$this->add("section_id", "ValidateID");
		$this->add("category_id", "ValidateID");
		$this->add("stock", "ValidateID");
		$this->add("exist", "ValidateBoolean");
		$this->add("title", "Validatetitle");
		$this->add("name", "Validatename");
		$this->add("img", "Validateimg");
		$this->add("promo_info", "ValidateTPL");
		$this->add("file_name_tpl", "ValidateFile_name");
		$this->add("certificate", "ValidatePDF");
		$this->add("video", "Validatevideo");
		$this->add("vp", "Validatenumeric");
		$this->add("price_sv", "Validatenumeric");
		$this->add("price_42", "Validatenumeric");
		$this->add("price_35", "Validatenumeric");
		$this->add("price_25", "Validatenumeric");
		$this->add("price", "Validatenumeric");
		$this->add("others", "ValidateIDs");
		$this->add("likes", "ValidateID");
		$this->add("bought", "ValidateInt");
		$this->add("date", "Validatedate", self::TYPE_TIMESTAMP, $this->getDate());
	}
	//====== Поиск продукта по запросу из поисковой формы
	public function search($words) {
		$select = self::getBaseSelect();
		$products = self::searchObjects($select, __CLASS__, array("title"), $words, Config::MIN_SEARCH_LEN);
		foreach ($products as $product) $product->setSectionAndCategory();
		return $products;
	}
	
	//===== устанавливаем название таблицы
	private static function getBaseSelect() {
		$select = new Select(self::$db);
		$select->from(self::$table, "*");
		return $select;
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
		if( !is_null($this->img) ) $this->img = Config::DIR_IMG_FOOD.$this->img;
		if( !is_null($this->promo_info) ) $this->promo_info = Config::DIR_TMPL_PROMO.$this->promo_info;
		if( !is_null($this->file_name_tpl) ) $this->file_name_tpl = Config::DIR_TMPL.$this->file_name_tpl;
		if( !is_null($this->certificate) ) $this->certificate = Config::DIR_IMG_CERTIFICATE.$this->certificate;
		return true;
	}
	//============ перед проверкой имен файлов обрезаем лишнию информацию о пути к этим файлам
	protected function preValidate(){
		if( !is_null($this->img) ) $this->img = basename($this->img);
		if( !is_null($this->promo_info) ) $this->promo_info = basename($this->promo_info);
		if( !is_null($this->file_name_tpl) ) $this->file_name_tpl = basename($this->file_name_tpl);
		if( !is_null($this->certificate) ) $this->certificate = basename($this->certificate);
		return true;
	}
	
	//============ загружаем все продукты по питанию и сортируем по "likes"
	public static function getAllShow($count = false, $offset = false, $post_handling = false) {
		$select = self::getBaseSelect();
		$select->order("likes", false);
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
	//============ загружаем все продукты ID секции и сортируем по категории.
	public static function getAllOnSectionIDAndSortCategory($section_id, $order=true) {
		$select = self::getBaseSelect();
		$select->order("category_id", $order)
			->where("`section_id` = ".self::$db->getSQ(), array($section_id));
		$data = self::$db->select($select);
		$products = ObjectDB::buildMultiple(__CLASS__, $data);
		return $products;
	}
	
	public static function getAllOnSectionID($section_id, $order = false, $offset = false) {
		return self::getAllOnSectionOrCategory("section_id", $section_id, $order, $offset);
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
	}
}
?>