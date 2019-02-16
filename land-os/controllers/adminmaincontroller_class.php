<?php

class AdminMainController extends AdminController {
	
	//==== Главная страница
	public function actionAdminIndex() {
		$this->title = "Панель администратора ".Config::SITENAME;
		$this->meta_desc = "Панель администратора ".Config::SITENAME;
		$this->meta_key = "администратор,панель,панель администратора,управление лендингом";
				
		$message_name = "adminindex";
		$admin = new Manage();
		$this->auth_admin = $admin->isAdmin(); //делаем проверку на авторизацию админа
		if( $this->auth_admin === NULL ){
			$this->redirect( URL::get("admin") );
		}
		
		$index = new AdminIndex();
		$index->title = "Общая статистика ".Config::SITENAME;
		$index->total_orders = OrderDB::getCount();
		$index->confirm_orders = OrderDB::getConfirmOrders() ? OrderDB::getConfirmOrders() : "HET";
		$index->paid_orders = OrderDB::getPaidOrders() ? OrderDB::getPaidOrders() : "НЕТ";
		$index->cancel_orders = OrderDB::getCancelOrders() ? OrderDB::getCancelOrders() : "НЕТ";
		$index->total_summ = OrderDB::getTotalSum() ? OrderDB::getTotalSum() : 0;
		$index->confirm_sum = OrderDB::getConfirmSum() ? OrderDB::getConfirmSum() : 0;
		$index->paid_sum = OrderDB::getPaidSum() ? OrderDB::getPaidSum() : 0;
		$index->cancel_sum = OrderDB::getCancelSum() ? OrderDB::getCancelSum() : 0;
				
		$this->render( $index );
		
	}
	//==== страница "СТАТИСТИКА"
	public function actionAdminStatistics(){
		$this->title = "Статистика ".Config::SITENAME;
		$this->meta_desc = "Статистика ".Config::SITENAME;
		$this->meta_key = "Статистика";
				
		$message_name = "admin_statistics";
		$admin = new Manage();
		$this->auth_admin = $admin->isAdmin(); //делаем проверку на авторизацию админа
		if( $this->auth_admin === NULL ){
			$this->redirect( URL::get("admin") );
		}
		
		$index = new AdminIndex("admin_statistics");
		$index->title = "Статистика ".Config::SITENAME;
		$index->total_orders = OrderDB::getCount();
		$index->confirm_orders = OrderDB::getConfirmOrders() ? OrderDB::getConfirmOrders() : "HET";
		$index->paid_orders = OrderDB::getPaidOrders() ? OrderDB::getPaidOrders() : "НЕТ";
		$index->cancel_orders = OrderDB::getCancelOrders() ? OrderDB::getCancelOrders() : "НЕТ";
		$index->total_summ = OrderDB::getTotalSum() ? OrderDB::getTotalSum() : 0;
		$index->confirm_sum = OrderDB::getConfirmSum() ? OrderDB::getConfirmSum() : 0;
		$index->paid_sum = OrderDB::getPaidSum() ? OrderDB::getPaidSum() : 0;
		$index->cancel_sum = OrderDB::getCancelSum() ? OrderDB::getCancelSum() : 0;
				
		$this->render( $index );
	}
	
	//==== страница "ЗАКАЗЫ"
	public function actionAdminOrders(){
		$this->title = "Заказы ".Config::SITENAME;
		$this->meta_desc = "Заказы ".Config::SITENAME;
		$this->meta_key = "заказы";
				
		$message_name = "admin_orders";
		
		/* блок сохранения данных */
		if( $this->request->func === "update" || $this->request->func === "save" || $this->request->func === "add" ){
			$order_db = new OrderDB();
			
			/*--- Формируем массив соответствия ключей базы данных с ключами формы ---*/
			$fields = array( "id",
							 array("name", $this->request->name),
							 array("price", $this->request->price ? $this->request->price : NULL ),
							 array("phone", $this->request->phone),
							 array("email", $this->request->email),
							 array("date_order", $this->request->date_order ? $this->request->date_order : date("d.m.Y G:i:s") ),
							 array("date_confirm", $this->request->date_confirm ? $this->request->date_confirm : NULL ),
							 array("date_pay", $this->request->date_pay ? $this->request->date_pay : NULL ),
							 array("date_cancel", $this->request->date_cancel? $this->request->date_cancel : NULL ),
							 "camp_id",
							 array("split", $_SESSION["split"]),
							 "func"
							
			);
			/*--- Проверяем и записываем данные в таблицу lan_orders ---*/
			$order_db = $this->fp->process($message_name, $order_db, $fields, array(), "SUCCESS_DATA_SAVE");
			if( $order_db instanceof OrderDB ){
				$save = true;
				$id = $order_db->id;
			}else{
				$save = false;
				$id = "";
			}
			$data = array(  "func"=>$this->request->func, "text"=>$this->fp->getSessionMessage( $message_name ), "save"=>$save, "id"=>$id   );
			echo json_encode($data);
			exit;
		}else if( $this->request->func === "delete" ){
			$order_db = new OrderDB();
			$order_db->load( $this->request->id );
			$order_db->delete();
				
			$data = array( "func"=>$this->request->func, "text"=>"Строка успешно удалена" );
			echo json_encode($data);
			exit;
		}
		
		
		$admin = new Manage();
		$this->auth_admin = $admin->isAdmin(); //делаем проверку на авторизацию админа
		if( $this->auth_admin === NULL ){
			$this->redirect( URL::get("admin") );
		}
		
		$orders = OrderDB::getAllDesc();
				
		$admin_orders = new AdminOrders();
		$admin_orders->title = "Список заказов ".Config::SITENAME;
		$admin_orders->action = URL::current();
		$admin_orders->orders = $orders;
		
		
		$this->render( $admin_orders);	
	}
}
?>