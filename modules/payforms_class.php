<?php

class PayForms extends ModuleHornav{
	
	private $file_tpl;
	
	public function __construct( $file_name = "paysistems" ){
		parent::__construct();
		$this->file_tpl = $file_name;
		$this->add("active");
		$this->add("method", "POST");
		$this->add("action", "https://money.yandex.ru/quickpay/confirm.xml" );
		$this->add("receiver");
		$this->add("formcomment");
		$this->add("comment");
		$this->add("in_total");
		$this->add("paid_for");
		$this->add("sum");
		$this->add("short_dest");
		$this->add("label");
		$this->add("quickpay_form");
		$this->add("targets");
		$this->add("success_url");
		$this->add("need_fio");
		$this->add("need_email");
		$this->add("need_phone");
		$this->add("need_address");
	}
	
	/* расчет суммы для перевода в зависимости от лимита перевода и уже оплаченной суммы */
	public function getTransferSum(){
		$this->sum = $this->in_total - $this->paid_for;
		if( $this->sum <= Config::LIMIT_FOR_ONE_TRANSFER )
			return $this->sum;
		else
			while( $this->sum > Config::LIMIT_FOR_ONE_TRANSFER )
				$this->sum -= Config::LIMIT_FOR_ONE_TRANSFER;
		
		return $this->sum;
	}
	
	public function getTmplFile() {
		return $this->file_tpl;
	}
}

?>