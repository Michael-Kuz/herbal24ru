<?php

class ComplexProgDB extends ObjectDB {
	
	public static $table = "complexprog";
		
	public function __construct() {
		parent::__construct( self::$table );
		$this->add("section_id", "ValidateID");
		$this->add("category_id", "ValidateID");
		$this->add("exist", "ValidateBoolean");
		$this->add("title", "Validatetitle");
		$this->add("name", "Validatename");
		$this->add("img", "Validateimg");
		$this->add("promo_info", "ValidateTPL");
		$this->add("file_name_tpl", "ValidateFile_name");
		$this->add("price_25","ValidatePrice");
		$this->add("price","ValidatePrice");
		$this->add("likes", "ValidateID");
		$this->add("product_ids", "ValidateIDs");
	}
	
	//====== Поиск продукта по запросу из поисковой формы
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
		if( !is_null($this->img) ) $this->img = Config::DIR_IMG_COMPLEX_PROG.$this->img;
		if( !is_null($this->file_name_tpl) ) $this->file_name_tpl = Config::DIR_TMPL_COMPLEX_PROG.$this->file_name_tpl;
		return true;
	}
	//============ перед проверкой имен файлов обрезаем лишнию информацию о пути к этим файлам
	protected function preValidate(){
		if( !is_null($this->img) ) $this->img = basename($this->img);
		if( !is_null($this->promo_info) ) $this->promo_info = basename($this->promo_info);
		if( !is_null($this->file_name_tpl) ) $this->file_name_tpl = basename($this->file_name_tpl);
		return true;
	}
	
	//============ после корректировки полей в таблице комплексной программы, снова устанавливаем абсолютные пути к файлам
	protected function postUpdate(){
		if( !is_null($this->promo_info) ) $this->promo_info = Config::DIR_TMPL_PROMO.$this->promo_info;
		if( !is_null($this->img) ) $this->img = Config::DIR_IMG_COMPLEX_PROG.$this->img;
		if( !is_null($this->file_name_tpl) ) $this->file_name_tpl = Config::DIR_TMPL_COMPLEX_PROG.$this->file_name_tpl;
		return true;
	}
	
	//============ подключаем базу данных
	private static function getBaseSelect(){
		$select = new Select( self::$db );
		$select->from( self::$table, "*" );
		return $select;
	}
	
	//============ получаем массив обьектов продуктов входящих в комплексную программу по ее "product_ids" .
	public static function getAllComplex( $ids ){
		$manage = new Manage();
		$ids_all = explode( ",",$ids );
		$ids_unique = array_unique( $ids_all );
		$i = 0;
		foreach( $ids_unique as $value ){
			$num = count( array_keys($ids_all,$value) );
			$tmp = explode( "->",$value );
			$section_id = $tmp[0];
			$id = $tmp[1];
			$category_id = FoodDB::getCatOnID($id);
			$manage->all_products[$i] = FoodDB::getAllOnCatID($category_id);
			foreach( $manage->all_products[$i] as $product ){
				$product->addField("num", "ValidateInt");
				$product->num = 0;
				if( $product->id == $id && $product->section_id == $section_id ){
					$product->num = $num;
				}
			}
			$i++;
		}
		
		return $manage->all_products;
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
	
	//=== корректируем лайки продукта по его ID
	public function setLikesOnID( $likes ){
		$this->setFieldsOnID( array("likes"=>$likes) );
	}
}
?>