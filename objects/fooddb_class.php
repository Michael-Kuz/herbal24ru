<?php

class FoodDB extends ObjectDB {
	
	protected static $table = "food";
	
	public function __construct() {
		parent::__construct( self::$table );
		$this->add("section_id", "ValidateID");
		$this->add("category_id", "ValidateID");
		$this->add("stock", "ValidateID");
		$this->add("exist", "ValidateBoolean");
		$this->add("news", "ValidateBoolean");
		$this->add("title", "Validatetitle");
		$this->add("name", "Validatename");
		$this->add("short_name", "Validatename");
		$this->add("img", "Validateimg");
		$this->add("promo_info", "ValidateTPL");
		$this->add("benefits", "ValidateText");
		$this->add("file_name_tpl", "ValidateFile_name");
		$this->add("certificate", "ValidatePDF");
		$this->add("video", "Validatevideo");
		$this->add("vp", "Validatenumeric");
		$this->add("price_sv", "Validatenumeric");
		$this->add("price_42", "Validatenumeric");
		$this->add("price_35", "Validatenumeric");
		$this->add("price_25", "Validatenumeric");
		$this->add("price", "Validatenumeric");
		$this->add("others", "ValidateOthers");
		$this->add("likes", "ValidateID");
		$this->add("bought", "ValidateInt");
		$this->add("date_input", "Validatedate", self::TYPE_TIMESTAMP, $this->getDate());
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
		if( !is_null($this->file_name_tpl) ) $this->file_name_tpl = Config::DIR_TMPL_DESC.$this->file_name_tpl;
		if( !is_null($this->certificate) ){
			$this->certificate = Config::DIR_IMG_CERTIFICATE.$this->certificate;
			if( !file_exists($this->certificate) )
				$this->certificate = basename($this->certificate);
		}
		/* проверка: являетсяли продукт новинкой */
		if( $this->news ){
			if( is_null($this->date_input) ) { // если дата ввода в базу равна NULL, то инициализируем дату текущей датой и прописываем в базу 
				$this->date_input = time();
				$this->setDateOnID($this->date_input);
			}elseif( !is_null($this->date_input) ){ // если дата не рана NULL то ищем разницу в дняж между текущей датои и датой ввода прод. в базу
				$time_diff = time() - strtotime($this->date_input);
				$days = floor( $time_diff/86400 );
				if( $days > 183 ){ // если разница в днях составляет больше чем 183 дня, то устанавливаем влаг новинки в false и прописываем в базу
					$this->news = false;
					$this->setNewsOnID($this->news);
				}
			}
		}
		if( !is_null($this->img) && !$this->news ) $this->img = Config::DIR_IMG_FOOD.$this->img;
		elseif( !is_null($this->img) && $this->news ) $this->img = Config::DIR_IMG_FOOD_NEWS.$this->img;
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
	//============ загружаем все дополнительные продукты по полям stock, которые указаны в поле others
	public static function getAllOthers( $value ) {
		$stock = array();
		$stock = explode( ",",$value );
		$stock = ObjectDB::getRandOthers( $stock );
		$select = self::getBaseSelect();
		$select->whereIn("stock",$stock,false );
		$data = self::$db->select($select);
		$products = ObjectDB::buildMultiple(__CLASS__, $data);
		return $products;
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
			->order("date_input", $order);
		$data = self::$db->select($select);
		$products = ObjectDB::buildMultiple(__CLASS__, $data);
		return $products;
	}
	
	//=== получить category_id по id продукта
	public static function getCatOnID($id){
		$select = new Select( self::$db );
		$select->from( self::$table, array("category_id") )
			->where("`id` = ".self::$db->getSQ(), array($id));
		$data = self::$db->selectCol($select);
		return $data[0];
	}
	
	private function postHandling() {
	}
	//=== корректируем лайки продукта по его ID
	public function setLikesOnID( $likes ){
		$this->setFieldsOnID( array("likes"=>$likes) );
	}
	//=== инициализируем дату внесения в базу данных продукта по его ID
	private function setDateOnID( $date_input ){
		$this->setFieldsOnID( array("date_input"=>$date_input) );
	}
	
}
?>