<?php

class VideoDB extends ObjectDB {
	
	protected static $table = "video";
		
	public function __construct() {
		parent::__construct(self::$table);
		$this->add("section_id", "ValidateID");
		$this->add("category_id", "ValidateID");
		$this->add("title", "ValidateTitle");
		$this->add("name", "ValidateName");
		$this->add("link", "ValidateURL");
		$this->add("promo_info", "ValidatePromoInfo");
		$this->add("likes", "ValidateID");
	}
	
	//====== Поиск продукта по запросу из поисковой формы
	public static function search($words) {
		$select = self::getBaseSelect();
		$products = self::searchObjects($select, __CLASS__, array("title"), $words, Config::MIN_SEARCH_LEN);
		foreach ($products as $product) $product->setSectionAndCategory();
		return $products;
	}
	
	//=========== устанавливаем абсолютный путь к файлам
	protected function postInit(){
		if( !is_null($this->img) ) $this->img = Config::DIR_IMG_RECIPES.$this->img;
		if( !is_null($this->promo_info) ) $this->promo_info = Config::DIR_TMPL_PROMO.$this->promo_info;
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
	
	private static function getBaseSelect(){
		$select = new Select( self::$db );
		$select->from( self::$table, "*" );
		return $select;
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
	
	private function postHandling() {
	}
	
	//=== корректируем лайки продукта по его ID
	public function setLikesOnID( $likes ){
		$this->setFieldsOnID( array("likes"=>$likes) );
	}
}
?>