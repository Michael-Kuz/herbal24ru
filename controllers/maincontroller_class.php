<?php

class MainController extends Controller {
	
	//==== Главная страница
	public function actionIndex() {
		$this->title = "Сбалансированное питание Москва.";
		$this->meta_desc = "Сбалансированное питание, Спортивное питание, Протеиновый коктейль, Снижение веса";
		$this->meta_key = "сбалансированное питание, спортивное питание, протеиновый коктейль, протеиновый коктейль Москва, коктейль для похудения, диета, как похудеть, правильное питание, витамины";
		
		//phpinfo();
		
		if( !$this->auth_user ){//Пока других идей нет, в качестве главной используем Рецепты от Гербалайф(для неавторизованного пользователя)
			$product_db = RecipesDB::getAllOnSectionIDAndSortCategory(4);
			$tpl_file = "recipesicon";
			$url = "recipe_description";
		}else{
			$tpl_file = "producticon_callback";
			$url = "product";
			$product_db= FoodDB::getAllShow();
		}
		
		
				
		$product_icon = new ProductIcon($tpl_file);
		$product_icon->products = $product_db;
		$product_icon->link_desc = $url;
		$product_icon->auth_user = $this->auth_user;
		
		$promo_info = $this->getPromoInfo( $this->promo_info );
		
		$hornav = new Hornav();
		$hornav->addData("Главная");
		
		
		$index = new Index();
		$index->title = "Популярные продукты Гербалайф";
		$index->hornav = $hornav;
		$index->auth_user = $this->auth_user;
		$index->promo_info = $promo_info;
		$index->product_icon = $product_icon;
		
		$this->render( $index );
	}
	
	public function actionResults(){
		$this->title = "Результаты";
		$this->meta_desc = "Результаты";
		$this->meta_key = "результаты, снижение веса, набор веса";
		
		$hornav = $this->getHornav();
		$hornav->addData("Результаты");
		
		$all_fotos = ResultsDB::getAllShow();
		$results = new Results();
		$results->hornav = $hornav;
		$results->results = $all_fotos;
		$this->render($results);
	}
	
	public function actionPayment() {
		$this->title = "Оплата";
		$this->meta_desc = "Оплата";
		$this->meta_key = "оплата, способы оплаты";
		
		$hornav = $this->getHornav();
		$hornav->addData("Оплата");
		
		/* подключаем модуль с платежными формами */
		$pay_forms = new PayForms();
		$pay_forms->active =  $this->request->notification_type;
		$pay_forms->receiver = Config::MONEY_YANDEX;
		$pay_forms->formcomment = "Кузьменко М.Ю.";
		$pay_forms->comment = $this->request->comment;
		//$pay_forms->in_total = $addorder->in_total;
		//$pay_forms->paid_for = "гербыч"; //$addorder->paid_for;
		$pay_forms->sum = $pay_forms->getTransferSum();
		$pay_forms->short_dest = "";
		//$pay_forms->label = $addorder->number;
		$pay_forms->quickpay_form = "shop";
		$pay_forms->targets = "транзакция"; //"транзакция_".$order->id;
		//$pay_forms->success_url = URL::getAbsolute( Config::ADDRESS, URL::get("successpay", "", array("id"=>$order->id) ));
		$pay_forms->need_fio = false;
		$pay_forms->need_email = false;
		$pay_forms->need_phone = false;
		$pay_forms->need_address = false;
		
		$payment = new Payment();
		$payment->hornav = $hornav;
		$payment->pay_forms = $pay_forms;
		
		$this->render($payment);
	}
	
	public function actionDelivery() {
		$this->title = "Доставка";
		$this->meta_desc = "Доставка";
		$this->meta_key = "доставка, способы доставки, самовывоз";
				
		$hornav = $this->getHornav();
		$hornav->addData("Доставка");
		
		$delivery = new Delivery();
		$delivery->hornav = $hornav;
				
		$this->render($delivery);
	}
	
	public function actionContacts() {
		if( !isset($_SESSION[strtolower(__FUNCTION__)]['start']) ){
			$_SESSION[strtolower(__FUNCTION__)]['start'] = microtime(true);
		}
		$message_name = "contacts";
		if( $this->request->contact_form ){
			$captcha = $this->request->contact_captcha;
			$checks = array(array(Captcha::check($captcha), true, "ERROR_CAPTCHA_CONTENT"));
			if( $this->fp->checks($message_name, $checks) ){
				$this->mail->setFromName( $this->request->contact_name );
				$this->mail->setFrom( $this->request->contact_email );
				$_SESSION['timekeeping'] = microtime(true) - $_SESSION[strtolower(__FUNCTION__)]['start'];
				if( $this->mail->send( Config::ADM_EMAIL, array("name"=>$this->request->contact_name, "email"=>$this->request->contact_email, "message"=>$this->request->contact_message, "timekeeping"=>$_SESSION['timekeeping']), "contacts"  ) ){
					$this->fp->setSessionMessage( $message_name, "SUCCESS_MESSAGE_SEND" );
				}else{
					$this->fp->setSessionMessage( $message_name, "UNKNOWN_ERROR_SEND" );
				}
			}
			unset($_SESSION['timekeeping'], $_SESSION[strtolower(__FUNCTION__)]['start']);
		}
		$this->title = "Контакты";
		$this->meta_desc = "Контакты интернетмагазина.";
		$this->meta_key = "контакты, обратная связь, обратная связь с администрацией, сообщение администратору";
		
		$hornav = $this->getHornav();
		$hornav->addData("Контакты");
		
		$contact_form = new Form();
		$contact_form->name = "contact_form";
		$contact_form->action = URL::current();
		$contact_form->message = $this->fp->getSessionMessage($message_name);
		$contact_form->textarea("contact_message", "", "", $this->request->contact_message, "Ваше сообщение:");
		$contact_form->text("contact_name", "", "", $this->request->contact_name, "Ваше имя:" );
		$contact_form->text("contact_email", "", "",  $this->request->contact_email, "Ваш E-mail:");
		$contact_form->captcha("contact_captcha", "", "", "","Введите код с картинки:");
		$contact_form->submit("Отправить", "" );
		
		$contact_form->addJSV("contact_message", $this->jsv->textarea() );
		$contact_form->addJSV("contact_name", $this->jsv->name());
		$contact_form->addJSV("contact_email", $this->jsv->email());
		$contact_form->addJSV("contact_captcha", $this->jsv->captcha());
		
		$contacts = new Contacts();
		$contacts->header = $this->title;
		$contacts->hornav = $hornav;
		$contacts->contact_form = $contact_form;
				
		$this->render($contacts);
	}
	
	public function actionInquiry(){
		if( $this->request->inquiry){
			$this->mail->setFromName( $this->request->inquiry_name );
			$this->mail->setFrom( $this->request->inquiry_email );
			$this->mail->send( Config::INQUIRY_EMAIL, array("name"=>$this->request->inquiry_name, "phone"=>$this->request->inquiry_phone, "email"=>$this->request->inquiry_email, "message"=>$this->request->inquiry_textarea), "inquiry"  );
			$this->title = "Отправка заявки с сайта ".Config::SITENAME;
			$this->meta_desc ="Отправка заявки с сайта ".Config::SITENAME;
			$this->meta_key = "отправка заявки с сайта ".mb_strtolower( Config::SITENAME ).", заявка с сайта ".mb_strtolower( Config::SITENAME );
			
			$hornav = $this->getHornav();
			$hornav->addData("Ваша заявка отправлена");
			
			$pm = new PageMessage();
			$pm->hornav = $hornav;
			$pm->title = "Ваша заявка отправлена.";
			$pm->text = "Ваша заявка отправлена. Наш менеджер свяжется с Вами в ближайшее время.";
			$this->render( $pm );
		}
	}
	//===== Страници секции с иконками продукта
	public function actionSection() {
		$section_db = new SectionDB();
		$section_db->load($this->request->id);
		if (!$section_db->isSaved()) { $this->notFound();}
		$this->section_id = $section_db->id;
		$this->title = $section_db->title;
		$this->meta_desc = $section_db->meta_desc;
		$this->meta_key = $section_db->meta_key;
		
		$hornav = $this->getHornav();
		$hornav->addData($section_db->menu);
		
		if( $section_db->promo_info )
			$this->promo_info = $section_db->promo_info;
		$promo_info = $this->getPromoInfo( $this->promo_info );
		switch( $this->request->id ){
			case 1:
			case 2:
				if(!$this->auth_user){
					$this->redirect( URL::get("cart") );
					exit;
				}
				$product_db = FoodDB::getAllOnSectionIDAndSortCategory($this->request->id);
				$tpl_file = "producticon_callback";
				$url = "product";
			break;
			case 3:
				if(!$this->auth_user){
					$this->redirect( URL::get("cart") );
					exit;
				}
				$product_db = ComplexProgDB::getAllOnSectionIDAndSortCategory($this->request->id);
				$tpl_file = "producticon_callback";
				$url = "ComplexProg";
			break;
			case 4:
				$product_db = RecipesDB::getAllOnSectionIDAndSortCategory($this->request->id);
				$tpl_file = "recipesicon";
				$url = "recipe_description";
			break;
			case 5:
				if(!$this->auth_user){
					$this->redirect( URL::get("cart") );
					exit;
				}
				$product_db = CosmeticsDB::getAllOnSectionIDAndSortCategory($this->request->id);
				$tpl_file = "producticon_callback";
				$url = "product";
			break;
			case 6:
				if(!$this->auth_user){
					$this->redirect( URL::get("cart") );
					exit;
				}
				$product_db = TargetDB::getAllOnSectionIDAndSortCategory($this->request->id);
				$tpl_file = "producticon_callback";
				$url = "target";
			break;
			case 7:
				$product_db = VideoDB::getAllOnSectionIDAndSortCategory($this->request->id);
				$tpl_file = "videoicon";
				$url="/";
			break;
		}
				
		$product_icon = new ProductIcon( $tpl_file );
		$product_icon->products = $product_db;
		$product_icon->auth_user = $this->auth_user;
		$product_icon->link_desc = $url;
						
		$index = new Index();
		$index->title = $section_db->menu;
		$index->hornav = $hornav;
		$index->auth_user = $this->auth_user;
		$index->promo_info = $promo_info;
		$index->product_icon = $product_icon;
								
		$this->render($index);
	}
	//===== Страница описания продукта food и cosmetics
	public function actionProduct(){
		$product_db = $this->getProductClass( $this->request->section_id ); //открываем новый тип класа соответствующий ID секции
		$product_db->load($this->request->id);
		if( !$product_db->isSaved() ) $this->notFound();
				
		$section_db = new SectionDB();
		$section_db->load( $product_db->section_id);
		
		$this->title = $product_db->title;
		$this->meta_desc = $product_db->title;
		$this->meta_key = $product_db->title;
		
		$hornav = $this->getHornav();
		$hornav->addData( $section_db->menu, URL::get("section?id=$section_db->id") );
		$hornav->addData( $product_db->name );
		
		if( $product_db->promo_info )
			$this->promo_info = $product_db->promo_info;
		elseif( $section_db->promo_info )
			$this->promo_info = $section_db->promo_info;
		else
			$this->promo_info = "main_promo_info.tpl";
			
		switch( $this->request->section_id ){
			case 1:
			case 2:
				$product_db_others = FoodDB::getAllOthers( $product_db->others );
				break;
			case 5:
				$product_db_others = CosmeticsDB::getAllOthers( $product_db->others );
				break;
		}
				
		$product_others = new ProductIcon("producticon_callback");
		$product_others->products = $product_db_others;
		$product_others->auth_user = $this->auth_user;
		$product_others->link_desc = "product";
		$product_others->link_likes = URL::get("likes");
		
		$product_intro = new ProductIntro("product_intro_callback");
		$product_intro->section = $section_db->menu;
		$product_intro->product = $product_db;
		$product_intro->auth_user = $this->auth_user;
		$product_intro->product_icon = $product_others;
		$product_intro->show_img = $this->request->show_img;
		$product_intro->tab_active = URL::deleteGET( $this->url_active, "tab" );
		$product_intro->tab_active = URL::deleteGET( $this->url_active, "show_img" );
		$product_intro->tab = URL::deleteGET( URL::current(), "tab" );
		$product_intro->tab = URL::deleteGET( URL::current(), "show_img" );
		
		if( $this->request->tab ){
			$product_intro->tab_active = URL::addGET( $product_intro->tab_active, "tab", $this->request->tab );
		}else{
			$product_intro->tab_active = URL::addGET( $product_intro->tab_active, "tab", 1 );
		}
				
		$index = new Index();
		$index->title = $product_db->name;
		$index->hornav = $hornav;
		$index->auth_user = $this->auth_user;
		$index->product_icon = $product_intro;
		
		$this->render($index);
	}
	//===== Страница рецептов от Гербалайф
	public function actionRecipe_Description(){
		$product_db = $this->getProductClass( $this->request->section_id ); //открываем новый тип класа соответствующий ID секции
		$product_db->load($this->request->id);
		if( !$product_db->isSaved() ) $this->notFound();
				
		$section_db = new SectionDB();
		$section_db->load( $product_db->section_id);
		
		$this->title = $product_db->title;
		$this->meta_desc = $product_db->title;
		$this->meta_key = $product_db->title;
		
		$hornav = $this->getHornav();
		$hornav->addData( $section_db->menu, URL::get("section?id=$section_db->id") );
		$hornav->addData( $product_db->name );
		
		if( $product_db->promo_info )
			$this->promo_info = $product_db->promo_info;
		elseif( $section_db->promo_info )
			$this->promo_info = $section_db->promo_info;
		else
			$this->promo_info = "main_promo_info.tpl";
		
		
		$product_db_others = FoodDB::getAllOthers( $product_db->others );
			
		$product_others = new ProductIcon("recipes_others_icon_callback");
		$product_others->products = $product_db_others;
		$product_others->auth_user = $this->auth_user;
		$product_others->link_desc = "product";
		$product_others->link_likes = URL::get("likes");
		
		$product_intro = new ProductIntro("recipe_intro");
		$product_intro->section = $section_db->menu;
		$product_intro->product = $product_db;
		$product_intro->auth_user = $this->auth_user;
		$product_intro->product_icon = $product_others;
						
		$index = new Index();
		$index->title = $product_db->name;
		$index->hornav = $hornav;
		$index->auth_user = $this->auth_user;
		$index->product_icon = $product_intro;
		
		$this->render($index);
	}
	
	//===== Страница описания продукта target
	public function actionTarget(){
		$product_db = $this->getProductClass( $this->request->section_id ); //открываем новый тип класа соответствующий ID секции
		$product_db->load($this->request->id);
		if( !$product_db->isSaved() ) $this->notFound();
				
		$section_db = new SectionDB();
		$section_db->load( $product_db->section_id);
		
		$this->title = $product_db->title;
		$this->meta_desc = $product_db->title;
		$this->meta_key = $product_db->title;
		
		$hornav = $this->getHornav();
		$hornav->addData( $section_db->menu, URL::get("section?id=$section_db->id") );
		$hornav->addData( $product_db->name );
		
		if( $product_db->promo_info )
			$this->promo_info = $product_db->promo_info;
		elseif( $section_db->promo_info )
			$this->promo_info = $section_db->promo_info;
		else
			$this->promo_info = "main_promo_info.tpl";
			
		$product_intro = new ProductIntro("target_intro_callback");
		$product_intro->section = $section_db->menu;
		$product_intro->product = $product_db;
		$product_intro->auth_user = $this->auth_user;
						
		$index = new Index();
		$index->title = $product_db->name;
		$index->hornav = $hornav;
		$index->auth_user = $this->auth_user;
		$index->product_icon = $product_intro;
		
		$this->render($index);
	}
	
	//===== Страница с описанием комплексной программы
	public function actionComplexProg(){
				
		$product_db = $this->getProductClass( $this->request->section_id ); //открываем новый тип класса соответствующий ID секции
		$product_db->load($this->request->id);
		if( !$product_db->isSaved() ) $this->notFound();
				
		$section_db = new SectionDB();
		$section_db->load( $product_db->section_id);
		if( !$section_db->isSaved() ) $this->notFound();
		
		$this->title = $product_db->title;
		$this->meta_desc = $section_db->meta_desc;
		$this->meta_key = $section_db->meta_key;
		
		$hornav = $this->getHornav();
		$hornav->addData( $section_db->menu, URL::get("section?id=$section_db->id") );
		$hornav->addData( $product_db->name );
		
		//присоединяем соответствующее информационное сообщение
		if( $product_db->promo_info )
			$this->promo_info = $product_db->promo_info;
		elseif( $section_db->promo_info )
			$this->promo_info = $section_db->promo_info;
		else
			$this->promo_info = "main_promo_info.tpl";
				
		$this->getAllComplex($product_db->product_ids);//Считываем все продукты комплексной программы по "product_ids".
		
		//=== если цены в базе данных на продукты входящие в комплексную программы изменились,
		//=== тогда нужно обновить цену в таблице комплексных программ
		$complex_intro = new ComplexIntro( $this->auth_user, "complexprog_intro_callback"  );
		if( $complex_intro->getNumMonths($product_db->id)== 1 )
			if( $product_db->price_25 != $complex_intro->getComplexSum( $this->all_products ) ){
				$product_db->price_25 = $product_db->price = $complex_intro->getComplexSum( $this->all_products );
				$product_db->save();
			}
		//----------------------------------------------------------------
		
		//=== корректитруем количество банок каждого продукта данными из сессии
		$this->NumberCansCorrection($product_db->id);
				
		$items = MenuDB::getTabsMenu();	// считываем из базы данных пунтры для Меню-закладка
		$items = array_values($items);
				
		$complex_intro->auth_user = $this->auth_user;
		$complex_intro->section = $section_db->menu;
		$complex_intro->product = $product_db;
		$complex_intro->all_products = $this->all_products;
		$complex_intro->num_months = $complex_intro->getNumMonths( $product_db->id );
		$complex_intro->syfix = $complex_intro->numberOfSuffix( $complex_intro->num_months, array("месяц","месяца","месяцев") );
		$complex_intro->complex_sum = $complex_intro->getComplexSum( $this->all_products );
		$complex_intro->url = $this->url_active;
		$complex_intro->items = $items;
		//=== устанавливаем ссылку на нужную вкладку внутри станицы complexprog
		if( $this->request->page ){
			$complex_intro->uri = $this->request->page;
		}else
			$complex_intro->uri = $items[0]->link;
		
		$complex_intro->quantity = $complex_intro->getCategoryQuantity( $this->all_products );
		$complex_intro->syfix_1 = $complex_intro->arrayOfSuffix( $complex_intro->quantity,array("банка","банки","банок") );
		
		$index = new Index();
		$index->title = $product_db->name;
		$index->hornav = $hornav;
		$index->auth_user = $this->auth_user;
		$index->product_icon = $complex_intro;
		
		$this->render($index);
	}
				
	//===== Страница корзины
	public function actionCart(){
		$message_name = "cartpage";
		//$this->title = "Корзина";
		//$this->meta_desc = "Содержимое корзины.";
		//$this->meta_key = "корзина, содержимое корзины";
		$this->title = "Задать вопрос или заказать обратный звонок";
		$this->meta_desc = "задать вопрос или обратный звонок.";
		$this->meta_key = "вопрос, обратный звонок";
		
		//$hornav = $this->getHornav();
		//$hornav->addData("Корзина");
		$hornav = $this->getHornav();
		$hornav->addData("Задать вопрос или заказать обратный звонок");
				
		//== расчитываем $_SESSION["ForFreeDelivery"], необходимую для получения бесплатной доставки
		//$this->summForFreeDelivery();
						
		if( $this->request->addorder ){
			//$content_cart = $this->getCart(); //считываем содержимое корзины
			$content_cart = NULL;
			//== Прежде чем открыть страницу проверяем есть ли в корзине товар
			//if( !isset($_SESSION["cart"]) || $_SESSION["cart"] == ""  ){
			//	$this->fp->setSessionMessage($message_name, "002:ERROR_EMPTY_CART" );//устанавливаем код ошибки
			//	$this->redirect( "cart" ); //отправляем пользователя на текущую страницу cart
			//	exit;
			//}
			$new_order = new OrderDB(); //открываем новый обьект Ордер
			//$new_order->product_ids = $_SESSION["cart"];
			//$new_order->summa = $content_cart->cart["cart_summa"];
			//reset(Config::$deliveries[$this->request->type_delivery]);//на всякий случай сбрасываем указатель массива в начало
			/*list($key,$value) = each(Config::$deliveries[$this->request->type_delivery]);//получаем $key - тип доставки $value - стоимость доставки*/		
			//$new_order->total_payment = $new_order->summa + $this->getDeliveryCost( $this->request->type_delivery );
			//$new_order->paid_for = 0;
			//  Формируем массив соответствия ключей базы данных с ключами формы
			//$fields = array( array("delivery", $key), 
			//				array("delivery_cost",$_SESSION["ForFreeDelivery"] ? $value : $this->getDeliveryCost( $this->request->type_delivery ) ),
			//				array("name",$this->request->name), 
			//				array("phone",$this->request->phone), 
			//				array("email",$this->request->email), 
			//				array("address", $this->request->type_delivery != "self" ? $this->request->address : $this->request->city), 
			//				array("note",$this->request->comment) );
			$fields = array( array("name",$this->request->name), 
							array("phone",$this->request->phone), 
							array("email",$this->request->email), 
							array("note",$this->request->comment) );
			$captcha = $this->request->captcha;
			$checks = array(array(Captcha::check($captcha), true, "001:ERROR_CAPTCHA_CONTENT"));
			$new_order = $this->fp->process($message_name, $new_order, $fields, $checks);// делаем проверки и сохраняем в базе данных
			
			if( $new_order instanceof OrderDB ){ // если обьект создан и его тип соответствует обьекту OrderDB
				$new_order->number = date("dmy").sprintf( "%04d",$new_order->id); // Формируем номер нового ордера
				$new_order->save(); //Сохраняем номер заказа в базу данных
				//--------------------------------------------------------------------------
				$this->mail->setFrom($new_order->email);//устанавливаем адрес мэйла заказчика
				$this->mail->setFromName($new_order->name);//устанавливаем имя заказчика
				// отправляем сообщение в администрацию о поступлении нового заказа
				$this->mail->send( Config::ORDER_EMAIL, array("order"=>$new_order,"delivery"=>$new_order->delivery,"delivery_price"=>$new_order->delivery_cost, "content_cart"=>$content_cart), "orderMessForSeller_callback" );
				//------- ВЫПОЛНЯЕМ ОТПРАВКУ ПИСЬМА НА МЭЙЛ ЗАКАЗЧИКА
				$this->mail->setFrom(Config::ORDER_EMAIL);//устанавливаем адрес мэйла сайта herbal24.ru
				$this->mail->setFromName(Config::SITENAME);//устанавливаем имя сайта (herbal24.ru)
				 // отправляем сообщение на мэйл заказчика с параметрами его заказа
				$this->mail->send( $new_order->email, array("order"=>$new_order,"delivery"=>$new_order->delivery,"delivery_price"=>$new_order->delivery_cost, "content_cart"=>$content_cart, "pay_link"=>Config::ADDRESS.URL::get("addorder?id=$new_order->id") ), "orderMessForCustomer_callback" );
				//Отправляем SMS-уведомление о поступлении нового заказа
				$this->sendOrder( $new_order->phone );
				// выводим страницу с оформленным заказом
				$this->redirect(URL::get("addorder?id=$new_order->id"));
				exit;
			}
			
		}
		$cart_page = new CartPage($this->auth_user,"cart_page_callback");
		$cart_page->title = $this->title;
		$cart_page->hornav = $hornav;
		$cart_page->auth_user = $this->auth_user;
		$cart_page->action = URL::addID(URL::current(),"block_form");
		$cart_page->deliveries = Config::$deliveries;
		$cart_page->checked = $this->request->type_delivery;
		$cart_page->city = $this->request->city;
		$cart_page->address = $this->request->address;
		$cart_page->name = $this->request->name;
		$cart_page->phone = $this->request->phone;
		$cart_page->email = $this->request->email;
		$cart_page->comment = $this->request->comment;
		//$cart_page->ForFreeDelivery = $_SESSION["ForFreeDelivery"];
		$cart_page->suffix = $cart_page->numberOfSuffix($cart_page->ForFreeDelivery);
		$cart_page->discount_id = $this->discount_id();
		$cart_page->error_code = $this->fp->getSessionErrorCode($message_name);
		$cart_page->message = $this->fp->getSessionMessage($message_name);
				
		$this->render($cart_page);
	}
	
	//===== Страница "Ваш заказ принят"
	public function actionAddorder(){
		//$this->title = "Ваш заказ принят";
		//$this->meta_desc = "Ваша заказ принят.";
		//$this->meta_key = "заказ принят, заказ принят оплатить, заказ принят звонок";
		$this->title = "Ваша заявка принята";
		$this->meta_desc = "Ваша заявка принята.";
		$this->meta_key = "заявка принят";
		
		$hornav = $this->getHornav();
		//$hornav->addData("Корзина", URL::get("cart") );
		//$hornav->addData("Заказ принят");
		$hornav->addData("Задать вопрос или заказать обратный звонок", URL::get("cart") );
		$hornav->addData("Ваша заявка принята");
		$message_name = "addorder";
		
			
		if( $this->request->id<=0 || !is_numeric ($this->request->id) )//проверяем является ли id числом
			$this->notFound();
		$order = new OrderDB(); 
		$order->load($this->request->id);
		
		if( !$order->isSaved() ) //проверяем наличие обьекта в базе данных с данным id
			$this->notFound();
			
		/* Восстанавливаем содержимое корзины $_SESSION["cart"] */	
		$order->recoveryOrderCart();
						
		$addorder = new AddOrder( $this->auth_user, "addorder_callback" ); // Формируем новый модуль страницы AddOrder и передаем в конструктор auth_user для расчета параметров заказа
		$addorder->title = $this->title;
		$addorder->hornav = $hornav;
		$addorder->auth_user = $this->auth_user;
		$addorder->id = $this->request->id;
		$addorder->number = $order->number;
		$addorder->delivery = $order->delivery;
		$addorder->product_ids = $order->product_ids;
		$addorder->delivery_cost = $order->delivery_cost;
		$addorder->name = $order->name;
		$addorder->phone = $order->phone;
		$addorder->email = $order->email;
		$addorder->address = $order->address;
		$addorder->note = $order->note;
		$addorder->in_total = $order->summa + $order->delivery_cost;
		$addorder->paid_for = $order->paid_for;
		$addorder->date_order = $order->date_order;
		$addorder->date_send = $order->date_send;
		$addorder->date_pay = $order->date_pay;
		/* подключаем модуль с платежными формами */
		$pay_forms = new PayForms();
		$pay_forms->active =  $this->request->notification_type;
		$pay_forms->receiver = Config::MONEY_YANDEX;
		$pay_forms->formcomment = "Кузьменко М.Ю.";
		$pay_forms->comment = $this->request->comment;
		$pay_forms->in_total = $addorder->in_total;
		$pay_forms->paid_for = $addorder->paid_for;
		$pay_forms->sum = $pay_forms->getTransferSum();
		$pay_forms->short_dest = "";
		$pay_forms->label = $addorder->number;
		$pay_forms->quickpay_form = "shop";
		$pay_forms->targets = "транзакция_".$order->id;
		$pay_forms->success_url = URL::getAbsolute( Config::ADDRESS, URL::get("successpay", "", array("id"=>$order->id) ));
		$pay_forms->need_fio = false;
		$pay_forms->need_email = false;
		$pay_forms->need_phone = false;
		$pay_forms->need_address = false;
				
		$addorder->pay_forms = $pay_forms;
		
		$this->render($addorder);
	}
	//====== Страница "Успешное завершение оплаты"
	public function actionSuccessPay(){
		
		$this->title = "Успешное завершение оплаты";
		$this->meta_desc = "Успешная оплата";
		$this->meta_key = "оплата, способы оплаты, успешнон завершение оплаты";
		
		$hornav = $this->getHornav();
		$hornav->addData("Корзина", URL::get("cart") );
		$hornav->addData("Заказ принят", URL::get("addorder?id=".$this->request->id) );
		$hornav->addData("Успешное завершение оплаты");
		$message_name = "successpay";
		
		if( $this->request->id<=0 || !is_numeric ($this->request->id) ){//проверяем является ли id числом
			$this->redirect("/");
		}
		$order = new OrderDB(); 
		$order->load($this->request->id);
		if( !$order->isSaved() ){ //проверяем наличие обьекта в базе данных с данным id
			$this->notFound();
			exit;
		}
		
		/* Восстанавливаем содержимое корзины $_SESSION["cart"] */	
		$order->recoveryOrderCart(); 
				
		$successpay = new AddOrder( $this->auth_user ); // Формируем новый модуль страницы SuccessPay и передаем в конструктор auth_user для расчета параметров заказа
		$successpay->title = $this->title;
		$successpay->hornav = $hornav;
		$successpay->auth_user = $this->auth_user;
		$successpay->id = $this->request->id;
		$successpay->number = $order->number;
		$successpay->delivery = $order->delivery;
		$successpay->product_ids = $order->product_ids;
		$successpay->delivery_cost = $order->delivery_cost;
		$successpay->summa = $order->summa;
		$successpay->in_total = $order->summa + $order->delivery_cost;
		$order->paid_for += $this->request->send_sum;
		$successpay->paid_for = $order->paid_for;
		$successpay->name = $order->name;
		$successpay->phone = $order->phone;
		$successpay->email = $order->email;
		$successpay->address = $order->address;
		$successpay->note = $order->note;
		$successpay->in_total = $order->summa + $order->delivery_cost;
		$successpay->date_order = $order->date_order;
		$successpay->date_send = $order->date_send;
		$successpay->date_pay = $order->date_pay = $order->getDate();
		
		$order->Save(); // Сохраняем order в базу данных с датой оплаты
		
		/* подключаем модуль с платежными формами */
		$pay_forms = new PayForms();
		$pay_forms->active = $this->request->notification_type;
		$pay_forms->receiver = Config::MONEY_YANDEX;
		$pay_forms->formcomment = "Кузьменко М.Ю.";
		$pay_forms->comment = $this->request->comment;
		$pay_forms->in_total = $successpay->in_total;
		$pay_forms->paid_for = $successpay->paid_for;
		$pay_forms->sum = $pay_forms->getTransferSum();
		$pay_forms->short_dest = "";
		$pay_forms->label = $successpay->number;
		$pay_forms->quickpay_form = "shop";
		$pay_forms->targets = "транзакция_".$order->id;
		$pay_forms->success_url = URL::getAbsolute( Config::ADDRESS, URL::get("successpay", "", array("id"=>$order->id) ));
		$pay_forms->need_fio = false;
		$pay_forms->need_email = false;
		$pay_forms->need_phone = false;
		$pay_forms->need_address = false;
						
		$successpay->pay_forms = $pay_forms;
		
		
		//----- сообщение в администрацию об оплате заказа с сайта ------
		$this->mail->setFrom($order->email);//устанавливаем адрес мэйла заказчика
		$this->mail->setFromName($order->name);//устанавливаем имя заказчика
		$content_cart = $this->getCart();
		//Отправляем SMS-уведомление об оплате нового заказа
		$this->sendSMSOrderPay( $successpay->phone );
		// отправляем письмо в администрацию об оплате заказа с сайта
		$this->mail->send( Config::ORDER_EMAIL, array("order"=>$order,"delivery"=>$order->delivery,"delivery_price"=>$order->delivery_cost, "content_cart"=>$content_cart), "orderPayMess" );
		
		$this->render($successpay);
	}
	
	public function actionCategory() {
		$category_db = new CategoryDB();
		$category_db->load($this->request->id);
		if (!$category_db->isSaved()) $this->notFound();
		$this->section_id = $category_db->section_id;
		$this->title = $category_db->title;
		$this->meta_desc = $category_db->meta_desc;
		$this->meta_key = $category_db->meta_key;
		
		$section_db = new SectionDB();
		$section_db->load($category_db->section_id);
		
		$hornav = $this->getHornav();
		$hornav->addData($section_db->title, $section_db->link);
		$hornav->addData($category_db->title);
		
		$intro = new Intro();
		$intro->hornav = $hornav;
		$intro->obj = $category_db;
		
		$category = new Category();
		$articles = ArticleDB::getAllOnCatID($this->request->id, Config::COUNT_ARTICLES_ON_PAGE);
				
		$category->articles = $articles;
		
		$this->render($intro.$category);
	}
	
	public function actionArticle() {
		$article_db = new ArticleDB();
		$article_db->load($this->request->id);
		if (!$article_db->isSaved()) $this->notFound();
		$this->title = $article_db->title;
		$this->meta_desc = $article_db->meta_desc;
		$this->meta_key = $article_db->meta_key;
		
		$hornav = $this->getHornav();
		
		if ($article_db->section) {
			$this->section_id = $article_db->section->id;
			$hornav->addData($article_db->section->title, $article_db->section->link);
			$this->url_active  = URL::get("section", "", array("id" => $article_db->section->id));
		}
		if ($article_db->category) {
			$hornav->addData($article_db->category->title, $article_db->category->link);
			$this->url_active  = URL::get("category", "", array("id" => $article_db->category->id));
		}
		
		$hornav->addData($article_db->title);
		
		$prev_article_db = new ArticleDB();
		$prev_article_db->loadPrevArticle($article_db);
		$next_article_db = new ArticleDB();
		$next_article_db->loadNextArticle($article_db);
		
		$article = new Article();
		$article->hornav = $hornav;
		$article->auth_user = $this->auth_user;
		$article->article = $article_db;
		if ($prev_article_db->isSaved()) $article->prev_article = $prev_article_db;
		if ($next_article_db->isSaved()) $article->next_article = $next_article_db;
		
		$article->link_register = URL::get("register");
		
		$comments = CommentDB::getAllOnArticleID($article_db->id);
		$article->comments = $comments;
		
		$this->render($article);
	}
	
	public function actionPoll() {
		$message_name = "poll";
		if ($this->request->poll) {
			$poll_voter_db = new PollVoterDB();
			$poll_data = PollDataDB::getAllOnPollID($this->request->id);
			$already_poll = PollVoterDB::isAlreadyPoll(array_keys($poll_data));
			$checks = array(array($already_poll, false, "ERROR_ALREADY_POLL"));
			$this->fp->process($message_name, $poll_voter_db, array("poll_data_id"), $checks, "SUCCESS_POLL");
			$this->redirect(URL::current());
		}
		$poll_db = new PollDB();
		$poll_db->load($this->request->id);
		if (!$poll_db->isSaved()) $this->notFound();
		$this->title = "Результаты голосования: ".$poll_db->title;
		$this->meta_desc = "Результаты голосования: ".$poll_db->title.".";
		$this->meta_key = "результаты голосования, ".mb_strtolower($poll_db->title);
		
		$poll_data = PollDataDB::getAllDataOnPollID($poll_db->id);
		
		$hornav = $this->getHornav();
		$hornav->addData($poll_db->title);
		
		$poll_result = new PollResult();
		$poll_result->hornav = $hornav;
		$poll_result->message = $this->fp->getSessionMessage($message_name);
		$poll_result->title = $poll_db->title;
		$poll_result->data = $poll_data;
		
		$this->render($poll_result);
		
	}
	//==== Страничка Авторизации.
	public function actionAuthorization(){
		$message_name = "authorization";
		$this->title = "Авторизация";
		$this->meta_desc = "Авторизация";
		$this->meta_key = "авторизация";
		$hornav = $this->getHornav();
		$hornav->addData($this->title);
		
		$authorization = new Authorization();
		$authorization->title = $this->title;
		$authorization->hornav = $hornav;
		$authorization->form_auth = $this->getAuth("auth_1");
		
		if( $this->auth_user ){
			$this->redirect(URL::get(""));
		}
		
		$this->render($authorization);
	}
	
	public function actionRegister() {
		$message_name = "register";
		if ($this->request->register) {
			$user_old_1 = new UserDB();
			$user_old_1->loadOnEmail($this->request->email);
			/*$user_old_2 = new UserDB();
			$user_old_2->loadOnLogin($this->request->login);*/
			//  Формируем массив соответствия ключей базы данных с ключами формы
			$fields = array( array("name",$this->request->name), 
							 array("email",$this->request->email), 
							 array("login",$this->request->email),
							 array("setPassword()", $this->request->password) );
							 
			$checks = array(); // открываем массив checks и заводим туда все необходимые проверки к форме "register"
			$captcha = $this->request->captcha; //значение из формы
			$checks[] = array(Captcha::check($captcha), true, "001:ERROR_CAPTCHA_CONTENT");
			$checks[] = array($this->request->password, $this->request->password_conf, "005:ERROR_PASSWORD_CONF");
			$checks[] = array($user_old_1->isSaved(), false, "004:ERROR_EMAIL_ALREADY_EXISTS");
			//$checks[] = array($user_old_2->isSaved(), false, "ERROR_LOGIN_ALREADY_EXISTS");
			$user = new UserDB();
			$user = $this->fp->process($message_name, $user, $fields, $checks);
			if ($user instanceof UserDB) {
				//Отправляем письмо на ящик клиента с инструкцией по активации
				$this->mail->send($user->email, array("user" => $user, "link" => URL::get("activate", "", array("login" => $user->login, "key" => $user->activation), false, Config::ADDRESS)), "register_robot");
				//==================================================================================
				$this->mail->setFrom($user->email);//устанавливаем адрес mail-а пользователя
				$this->mail->setFromName($user->name);//устанавливаем имя пользователя
				// отправляем сообщение на мэйл Config::INQUIRY_EMAIL с просьбой об активации
				$this->mail->send(Config::INQUIRY_EMAIL, array("user" => $user, "password"=>$this->request->password, "link" => URL::get("activate", "", array("login" => $user->login, "key" => $user->activation), false, Config::ADDRESS)), "register");
				//===================================================================================
				$this->redirect(URL::get("sregister"));
			}
		}
		$this->title = "Регистрация на сайте ".Config::SITENAME;
		$this->meta_desc = "Регистрация на сайте ".Config::SITENAME.".";
		$this->meta_key = "регистрация сайт ".mb_strtolower(Config::SITENAME).", зарегистрироваться сайт ".mb_strtolower(Config::SITENAME);
		$hornav = $this->getHornav();
		$hornav->addData($this->title);
		$form = new Form("register_var1");
		$form->header = false;
		$form->action = URL::current();
		$form->name = $this->request->name;
		$form->addDIV( array("form_name", "email", "password", "password_conf", "captcha", "checked", "error_code") );
		$form->error_code = $this->fp->getSessionErrorCode($message_name);
		$form->message = $this->fp->getSessionMessage($message_name);
		$form->form_name = "register";
		$form->email = $this->request->email;
		$form->checked = $this->request->agreement;
						
		$register = new Register();
		$register->header = $this->title;
		$register->hornav = $hornav;
		$register->form = $form;
		
		$this->render($register);
		
	}
	
	public function actionSRegister() {
		$this->title = "Регистрация на сайте ".Config::SITENAME;
		$this->meta_desc = "Регистрация на сайте ".Config::SITENAME.".";
		$this->meta_key = "регистрация сайт ".mb_strtolower(Config::SITENAME).", зарегистрироваться сайт ".mb_strtolower(Config::SITENAME);
	
		$hornav = $this->getHornav();
		$hornav->addData("Регистрация");
		
		$pm = new PageMessage();
		$pm->hornav = $hornav;
		$pm->header = "Регистрация";
		$pm->text = "Здравствуйте. Инструкция с регистрацией будет выслана на указанный Вами адрес электронной почты. Если письмо не приходит, тогда сначала проверьте папку 'СПАМ', после чего свяжитесь со мной любым удобным для Вас способом из раздела 'КОНТАКТЫ'<br/>С уважением, Независимый партнер Гербалайф Михаил Кузьменко.";
		$this->render($pm);
	}
	
	public function actionActivate() {
		$user_db = new UserDB();
		$user_db->loadOnLogin($this->request->login);
		$hornav = $this->getHornav();
		if ($user_db->isSaved() && ($user_db->activation == "")) {
			//если пользователи пользователь уже активирован то автоматичкски авторизовываем его и отправляем на главную страницу
			$user_db->login();
			$this->redirect(Config::ADDRESS);
			
            //это то что было=======================			
			$this->title = "Ваш аккаунт уже активирован";
			$this->meta_desc = "Ваш аккаунт уже активирован. Все цены на сайте доступны для просмотра.";
			$this->meta_key = "активация, успешная активация, успешная активация регистрация";
			$hornav->addData("Активация");
		}
		elseif ($user_db->activation != $this->request->key) {
			$this->title = "Ошибка при активации";
			$this->meta_desc = "Неверный код активации! Если ошибка будет повторяться, то обратитесь к администрации.";
			$this->meta_key = "активация, ошибка активация, ошибка активация регистрация";
			$hornav->addData("Ошибка активации");
		}
		else {
			$user_db->activation = "";
			try {
				$user_db->save();
			} catch (Exception $e) {print_r($e->getMessage());}
			//если пользователь успешно активировался то автоматически авторизовываем его и отправляем на главную страницу
			$user_db->login();
			$this->redirect(Config::ADDRESS);
			
            //это то что было======================			
			$this->title = "Ваш аккаунт успешно активирован";
			$this->meta_desc = "Ваш аккаунт успешно активирован. Теперь все цены на сайте доступны для просмотра.";
			$this->meta_key = "активация, успешная активация, успешная активация регистрация";
			$hornav->addData("Активация");
		}
		
		$pm = new PageMessage();
		$pm->hornav = $hornav;
		$pm->header = $this->title;
		$pm->text = $this->meta_desc;
		$this->render($pm);
	}
	
	public function actionLogout() {
		UserDB::logout();
		$this->redirect($_SERVER["HTTP_REFERER"]);
	}
	
	public function actionReset() {
		$message_name = "reset";
		$this->title = "Восстановление пароля";
		$this->meta_desc = "Восстановление пароля пользователя.";
		$this->meta_key = "восстановление пароля, восстановление пароля пользователя";
		$hornav = $this->getHornav();
		$hornav->addData($this->title);
		if ($this->request->reset) {
			$user_db = new UserDB();
			$user_db->loadOnEmail($this->request->email);
			//---------------------------------------------------------------------------
			$this->mail->setFrom(Config::NO_ONE_EMAIL);//устанавливаем адрес мэйла сайта "noone"
			$this->mail->setFromName(Config::SITENAME);//устанавливаем имя сайта (herbal24.ru)
			// отправляем сообщение на мэйл пользователя с инструкцией по востановлению пароля
			if ($user_db->isSaved()) $this->mail->send($user_db->email, array("user" => $user_db, "link" => URL::get("reset", "", array("email" => $user_db->email, "key" => $user_db->getSecretKey()), false, Config::ADDRESS)), "reset");
			$pm = new PageMessage();
			$pm->hornav = $hornav;
			$pm->header = "Восстановление пароля";
			$pm->text = "Инструкция по восстановлению пароля выслана на указанный e-mail адрес.";
			$this->render($pm);
		}
		elseif ($this->request->key) {
			$user_db = new UserDB();
			$user_db->loadOnEmail($this->request->email);
			if ($user_db->isSaved() && ($this->request->key === $user_db->getSecretKey())) {
				if ($this->request->reset_password) {
					$fields = array(array("setPassword()", $this->request->password_reset));
					$checks = array();
					$checks[] = array($this->request->password_reset, $this->request->password_reset_conf, "ERROR_PASSWORD_CONF");
					$user_db = $this->fp->process($message_name, $user_db, $fields, $checks);
					if ($user_db instanceof UserDB) {
						$user_db->login();
						$this->redirect(URL::get("sreset"));
					}
				}
				$form = new Form();
				$form->name = "reset_password";
				$form->action = URL::current();
				$form->message = $this->fp->getSessionMessage($message_name);
				$form->password("password_reset", "Новый пароль:", "<td>");
				$form->password("password_reset_conf", "Повторите пароль:", "<td>");
				$form->submit("Далее");
				$form->addJSV("password_reset", $this->jsv->password("password_reset_conf"));
				
				
				$reset = new Reset();
				$reset->header = $this->title;
				$reset->hornav = $hornav;
				$reset->form = $form;
				$this->render($reset);
			}
			else {
				$pm = new PageMessage();
				$pm->hornav = $hornav;
				$pm->header = "Неверный ключ";
				$pm->text = "Попробуйте ещё раз, если ошибка будет повторяться, то обратитесь к администрации.";
				$this->render($pm);
			}
		}
		else {
			$form = $this->getFormEmail(false, "reset", $message_name);
			$reset = new Reset();
			$reset->header = $this->title;
			$reset->hornav = $hornav;
			$reset->form = $form;
			$this->render($reset);
		}
	}
	
	public function actionSReset() {
		$this->title = "Восстановление пароля";
		$this->meta_desc = "Восстановление пароля успешно завершено.";
		$this->meta_key = "восстановление пароля, восстановление пароля пользователя, восстановление пароля пользователя завершено";
		
		$hornav = $this->getHornav();
		$hornav->addData("Восстановление пароля");
		
		$pm = new PageMessage();
		$pm->hornav = $hornav;
		$pm->header = "Пароль успешно изменён!";
		$pm->text = "Теперь Вы можете войти на сайт, если Вы не авторизовались автоматически.";
		
		$this->render($pm);
	}
	
	public function actionRemind() {
		$this->title = "Восстановление логина";
		$this->meta_desc = "Восстановление логина пользователя.";
		$this->meta_key = "восстановление логина, восстановление логина пользователя";
		$hornav = $this->getHornav();
		$hornav->addData($this->title);
		if ($this->request->remind) {
			$user_db = new UserDB();
			$user_db->loadOnEmail($this->request->email);
			//---------------------------------------------------------------------------
			$this->mail->setFrom(Config::NO_ONE_EMAIL);//устанавливаем адрес мэйла сайта "noone"
			$this->mail->setFromName(Config::SITENAME);//устанавливаем имя сайта (herbal24.ru)
			// отправляем сообщение на мэйл пользователя с его логином
			if ($user_db->isSaved()) $this->mail->send($user_db->email, array("user" => $user_db), "remind");
			$pm = new PageMessage();
			$pm->hornav = $hornav;
			$pm->header = "Восстановление логина";
			$pm->text = "Письмо с Вашим логином отправлено на указанный e-mail адрес.";
			$this->render($pm);
		}
		else {
			$form = $this->getFormEmail(false, "remind", "remind");
			$remind = new Remind();
			$remind->header = $this->title;
			$remind->hornav = $hornav;
			$remind->form = $form;
			$this->render($remind);
		}
	}
	
	public function actionSearch() {
		$this->title = "Поиск: ".$this->request->query;
		$this->meta_desc = "Поиск ".$this->request->query.".";
		$this->meta_key = "поиск, поиск ".$this->request->query;
		
		$hornav = $this->getHornav();
		$hornav->addData("Поиск");
		
		$products = FoodDB::search($this->request->query);
		$cosmetics = CosmeticsDB::search($this->request->query);
		$result = array_merge((array)$products, (array)$cosmetics);
				
		$sr = new SearchProduct("search_product_callback");
		if (mb_strlen($this->request->query) < Config::MIN_SEARCH_LEN) $sr->error_len = true;
		$sr->title = "Поиск";
		$sr->hornav = $hornav;
		$sr->auth_user = $this->auth_user;
		$sr->query = $this->request->query;
		$sr->data = $result;
		$sr->link_desc = URL::get("product");
		$sr->link_likes = URL::get("likes");
				
		$this->render($sr);
	}
	
	private function getFormEmail($header, $name, $message_name) {
		$form = new Form();
		$form->header = $header;
		$form->name = $name;
		$form->action = URL::current();
		$form->message = $this->fp->getSessionMessage($message_name);
		$form->text("email", "Введите E-mail, указанный при регистрации:", "<td>", $this->request->email, "E-mail:");
		$form->submit("Далее");
		$form->addJSV("email", $this->jsv->email());
		return $form;
	}
	
}

?>