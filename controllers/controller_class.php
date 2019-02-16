<?php

abstract class Controller extends AbstractController {
	
	protected $title;
	protected $meta_desc;
	protected $meta_key;
	protected $mail = null;
	protected $url_active;
	protected $section_id = 0;
	protected $logo_herbalife ="logo_herbalife-new.png";
	protected $promo_info = "main_promo_info.tpl";
	protected $promo_img = "f1_evening.png";
	protected $promo_top = "main_promo_top.tpl";
	public $all_products = array();
	private static $user_name="";
				
	public function __construct() {
		parent::__construct( new View(Config::DIR_TMPL), new Message(Config::FILE_MESSAGES) );
		$this->mail = new Mail();
		$this->url_active = URL::deleteGET(URL::current(), "page");
	}
	
	//=== страница 404 =======
	public function action404() {
		header("HTTP/1.1 404 Not Found");
		header("Status: 404 Not Found");
		$this->title = "Страница не найдена - 404";
		$this->meta_desc = "Запрошенная страница не существует.";
		$this->meta_key = "страница не найдена, страница не существует, 404";
		
		$pm = new PageMessage();
		$pm->header = "Страница не найдена";
		$pm->text = "К сожалению, запрошенная страница не существует. Проверьте правильность ввода адреса.";
		$this->render($pm);
	}
	
	public function inDeveloping() {
		$this->title = "Страница в разработке";
		$this->meta_desc = "Запрошенная страница в разработке.";
		$this->meta_key = "страница в разработке, разработка страницы";
		
		$hornav = $this->getHornav();
		$hornav->addData("Страница в разработке");
				
		$developing = new InDeveloping();
		$developing->title = "Страница в разработке";
		$developing->hornav = $hornav;
		$developing->link = URL::get("");
				
		$this->render($developing);
	}
	
	protected function accessDenied() {
		$this->title = "Доступ закрыт!";
		$this->meta_desc = "Доступ к данной странице закрыт.";
		$this->meta_key = "доступ закрыт, доступ закрыт страница, доступ закрыт страница 403";
		
		$pm = new PageMessage();
		$pm->header = "Доступ закрыт!";
		$pm->text = "У Вас нет прав доступа к данной странице.";
		$this->render($pm);
	}
	
	final protected function render($str) {
		$params = array();
		$params["header"] = $this->getHeader();
		$params["logo"] = $this->getLogo($this->logo_herbalife); 
		$params["cart"] = $this->getIconContact();
		$params["auth"] = $this->getAuth();
		$params["top"] = $this->getTop();
		$params["link_search"] = URL::get("search");
		$params["promo_image"] = $this->getPromoImage( $this->promo_img );
		$params["inquiry"] = $this->ConsultationFolder();
		$params["promo_info"] = $this->getPromoTop( $this->promo_top );
		//$params["slider"] = $this->getSlider();
		$params["left"] = $this->getLeft();
		$params["right"] = $this->getRight();
		$params["center"] = $str;
		$params["footer"] = $this->getFooter();
		$this->view->render(Config::LAYOUT, $params);
	}
	
	protected function getHeader() {
		$header = new Header();
		$header->title = $this->title;
		$header->meta("Content-Type", false, "text/html; charset=utf-8", true);
		$header->meta("description", false, $this->meta_desc, false);
		$header->meta("keywords", false, $this->meta_key, false);
		$header->meta("viewport", false, "width=device-width", false);
		$header->meta("wmail-verification", false, "510778a5d69af653", false);
		$header->meta("robots", false, "index, follow", false);
		$header->meta("author", false, "Михаил Кузьменко", false);
		$header->meta(false, "og:title", UseSEF::getTitle(URL::current()) ? UseSEF::getTitle(URL::current()) : $this->title, false);
		$header->meta(false, "og:description", UseSEF::getDesc(URL::current()) ? UseSEF::getDesc(URL::current()) : $this->meta_desc, false);
		$header->meta(false, "og:url", URL::current(Config::ADDRESS), false);
		$header->meta(false, "og:image", UseSEF::getImage(URL::current()) ? UseSEF::getImage(URL::current()) : Config::ADDRESS."/".Config::DIR_IMG_FOOD.$this->promo_img, false);
		$header->favicon = "http://herbal24.ru/favicon.ico";
		$header->favicon_1 = "http://herbal24.ru/favicon.ico";
		$header->css = array("/styles/main.css?v=8", "/styles/prettify.css","/styles/animate.css");
		$header->js = array("/js/jquery-1.10.2.min.js", "/js/wow.min.js", "/js/jquery.nicescroll.min.js", "/js/functions.js", "/js/validator.js", "/js/prettify.js", "https://yastatic.net/share2/share.js", "/js/dispatcher.js");
		return $header;
	}
	
	protected function getFooter(){
		$items = MenuDB::getTopMenu();
		$footermenu = new FooterMenu();
		$footermenu->uri = $this->url_active;
		$footermenu->items = $items;
		$footermenu->link_search = URL::get("search");
		return $footermenu;
	}
	protected function getLogo($logo_img){
		$logo = new Logo();
		$logo->img = Config::DIR_IMG.$logo_img;
		return $logo;
	}
	protected function getCart() {
		$cart = new Cart($this->auth_user,$this->discount_id=null);
		$cart->icon_cart = Config::DIR_IMG."icon_cart.png";
		return $cart;
	}
	protected function getIconContact() {
		$iconcontact = new IconContact($this->auth_user,$this->discount_id=null);
		$iconcontact->icon_phone = Config::DIR_IMG."phone_4.png";
		$iconcontact->title = Config::ADM_PHONE;
		$iconcontact->phone_number = Config::ADM_PHONE;
		return $iconcontact;
	}
	protected function getAuth( $file_tpl="auth" ) {
		if ($this->auth_user) {
			$user_panel = new UserPanel();
			$user_panel->name = self::$user_name;
			$user_panel->logout = URL::get("logout");
			$obj = $user_panel;
		} else{
			$auth = new Auth( $file_tpl );
			$auth->message = $this->fp->getSessionMessage("auth");
			$auth->action = URL::current("", true);
			$auth->link_register = URL::get("register");
			$auth->link_reset = URL::get("reset");
			$auth->link_remind = URL::get("remind");
			$obj = $auth;
		}
		return $obj;
	}
	
	protected function getTop() {
		$items = MenuDB::getTopMenu();
		$topmenu = new TopMenu();
		$topmenu->uri = $this->url_active;
		$topmenu->items = $items;
		$topmenu->link_search = URL::get("search");
		return $topmenu;
	}
	protected function getPromoImage( $promo_img ){
		$promoimage = new PromoImage();
		$promoimage->img = Config::DIR_PROMO_IMG.$promo_img;
		$promoimage->slide_checked = '';
		if( $this->url_active ==  htmlspecialchars("/product.html?id=102&section_id=1") ){ 
			$promoimage->slide_checked = 2;
		}
		else if( $this->url_active ==  htmlspecialchars("/product.html?id=100&section_id=1") ){ 
			$promoimage->slide_checked = 3;
		}
		
		return $promoimage;
	}
	protected function getPromoInfo( $promo_info ){
		$promoinfo = new PromoInfo();
		$promoinfo->promo_info = Config::DIR_TMPL_PROMO.$promo_info;
		return $promoinfo; 
	}
	private function getPromoTop(){
		$promotop = new PromoTop();
		if( $this->auth_user )
			$promotop->promo_top = Config::DIR_TMPL_PROMO_TOP."main_promo_top_auth_user.tpl";
		else
			$promotop->promo_top = Config::DIR_TMPL_PROMO_TOP."main_promo_top.tpl";
		
		return $promotop; 
	}
	protected function getInquiry(){
		$message_name = "inquiry";
		$inquiry = new Form();
		$inquiry->header = "ОСТАВЬТЕ ВАШУ ЗАЯВКУ";
		$inquiry->name = "inquiry";
		$inquiry->action = URL::get("inquiry");
		$inquiry->message = $this->fp->getSessionMessage($message_name);
		$inquiry->text("inquiry_name", "", "", $this->request->inquiry_name, "Ваше имя");
		$inquiry->text("inquiry_phone", "", "", $this->request->inquiry_phone, "Телефон");
		$inquiry->text("inquiry_email", "", "", $this->request->inquiry_email, "E-mail");
		$inquiry->textarea("inquiry_textarea", "", "", $this->request->inquiry_textarea, "Сообщение");
		$inquiry->submit("ОТПРАВИТЬ", "");
		$inquiry->addJSV("inquiry_name", $this->jsv->name());
		$inquiry->addJSV("inquiry_phone", $this->jsv->phone());
		$inquiry->addJSV("inquiry_email", $this->jsv->email());
		$inquiry->addJSV("inquiry_textarea",$this->jsv->textarea());
		return $inquiry;
	}
	//=== модуль "ПАПКА ДЛЯ КОНСУЛЬТАЦИЙ"
	protected function ConsultationFolder(){
		$items = new Cart($this->auth_user,$this->discount_id=null);
		$consultation = new ReviewsMenu("request_callback");
		$consultation->title = "ЗАДАТЬ ВОПРОС";
		$consultation->link_add_review = URL::get("Cart" );
		$consultation->items = $items->cart_list;
				
		return $consultation;
	}
	
	protected function getSlider() {
		$course = new CourseDB();
		$course->loadOnSectionID($this->section_id, PAY_COURSE);
		$slider = new Slider();
		$slider->course = $course;
		return $slider;
	}
	
	protected function getLeft() {
		$items = MenuDB::getMainMenu();
		$mainmenu = new MainMenu();
		$mainmenu->title = "МЕНЮ";
		$mainmenu->uri = $this->url_active;
		$mainmenu->items = $items;
		
		$items2 = MenuDB::getTrainingMaterialsMenu();
		$training_materials_menu = new MainMenu();
		$training_materials_menu->title = "ОБУЧАЮЩИЕ МАТЕРИАЛЫ";
		$training_materials_menu->uri = $this->url_active;
		$training_materials_menu->items = $items2;
		
		return $mainmenu.$training_materials_menu;
	}
	
	protected function getRight() {
		/* группа в Контакте */
		$html = "<div class='vk'>
						<script type='text/javascript' src='//vk.com/js/api/openapi.js?115'></script>
						<!-- VK Widget -->
						<div id='vk_groups'></div>
						<script type='text/javascript'>
							VK.Widgets.Group('vk_groups', {mode: 1, width: '245', height: '400', color1: 'FFFFFF', color2: '2B587A', color3: '7DBD48'}, 55377896);
						</script>
                 </div>";
		/* отзывы покупателей */
		$items = ReviewsDB::getAllModerated();
		$reviews = new ReviewsMenu();
		$reviews->title = "ОТЗЫВЫ";
		$reviews->link_add_review = URL::addID( URL::get("reviews", "userreviews" ), "add_review" );
		$reviews->items = $items;
		/* блок социальные кнопки */
		$social_buttons = new SocialButtons();
		$social_buttons->title = $this->title;
		$social_buttons->description = $this->meta_desc;
		$social_buttons->url = URL::current(Config::ADDRESS);
		$social_buttons->image = "http://update24.ru/images/promo_img/cell_activator.png";
		
		return $reviews.$html.$social_buttons;
		
		/*$course_db_1 = new CourseDB();
		$course_db_1->loadOnSectionID($this->section_id, FREE_COURSE);
		$course_db_2 = new CourseDB();
		$course_db_2->loadOnSectionID($this->section_id, ONLINE_COURSE);
		$courses = array($course_db_1, $course_db_2);
		
		$course = new Course();
		$course->courses = $courses;
		$course->auth_user = $this->auth_user;
		
		$quote_db = new QuoteDB();
		$quote_db->loadRandom();
		
		$quote = new Quote();
		$quote->quote = $quote_db;
		return $course.$quote;*/
		
	}
	
	protected function getHornav() {
		$hornav = new Hornav();
		$hornav->addData("Главная", URL::get(""));
		return $hornav;
	}
	
	final protected function getOffset($count_on_page) {
		return $count_on_page * ($this->getPage() - 1);
	}
	
	final protected function getPage() {
		$page = ($this->request->page)? $this->request->page: 1;
		if ($page < 1) $this->notFound();
		return $page;
	}
	
	final protected function getPagination($count_elements, $count_on_page, $url = false) {
		$count_pages = ceil($count_elements / $count_on_page);
		$active = $this->getPage();
		if (($active > $count_pages) && ($active > 1)) $this->notFound();
		$pagination = new Pagination();
		if (!$url) $url = URL::deletePage(URL::current());
		$pagination->url = $url;
		$pagination->url_page = URL::addTemplatePage($url);
		$pagination->count_elements = $count_elements;
		$pagination->count_on_page = $count_on_page;
		$pagination->count_show_pages = Config::COUNT_SHOW_PAGES;
		$pagination->active = $active;
		return $pagination;
	}
	
	protected function authUser() {
		$login = "";
		$password = "";
		$redirect = false;
		if ($this->request->auth) {
			$login = $this->request->login;
			$password = $this->request->password;
			$redirect = true;
		}
		$user = $this->fp->auth("auth", "UserDB", "authUser", $login, $password);
		if ($user instanceof UserDB) {
			self::$user_name = self::getUserName( $user );
			if ($redirect) $this->redirect(URL::current());
			return $user;
		}
		self::$user_name = "";
		return null;
	}
	
	private static function getUserName( $obj ) {
		return $obj->name;
	}
	
	//получаем набор всех возможных продуктов комплексной программы
	protected function getAllComplex( $ids ){
		$this->all_products = ComplexProgDB::getAllComplex( $ids );
	}
	
	//=== корректитруем количество банок каждого продукта данными из сессии
	protected function NumberCansCorrection( $complex_prog_id ){
		if (!session_id()) session_start();
		for( $i=0; $i<count($this->all_products); $i++ ){
			foreach( $this->all_products[$i] as $product_cat ){
				$product_cat->short_name = str_replace(" ", "_", $product_cat->short_name);
				if( array_key_exists( $product_cat->short_name.$complex_prog_id, $_SESSION ) ){
					$product_cat->num = $_SESSION[$product_cat->short_name.$complex_prog_id];
				}
				$product_cat->short_name = str_replace("_", " ", $product_cat->short_name);
			}
		}
	}
	
	//=== расчет стоимости доставки
	protected function getDeliveryCost( $delivery_type ){
		reset(Config::$deliveries[$delivery_type]);//на всякий случай сбрасываем указатель массива в начало
		list($key,$value) = each(Config::$deliveries[$delivery_type]);
		$delivery_price = $value;
		if( isset($_SESSION["ForFreeDelivery"]) )
			if( $_SESSION["ForFreeDelivery"] == 0 )
				switch( $delivery_type ){
					case "self":
					case "courier":
					case "postamat":
						$delivery_price = 0;
						break;
					case "mail":
						reset(Config::$deliveries["postamat"]);//на всякий случай сбрасываем указатель массива в начало
						list($key,$value) = each(Config::$deliveries["postamat"]);
						$delivery_price -= $value;
						break;
					default:
						$delivery_price = 0;
				}
		return $delivery_price;
	}
}

?>