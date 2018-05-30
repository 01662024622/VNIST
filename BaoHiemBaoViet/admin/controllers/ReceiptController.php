<?php 
/**
* 		
*/
	include_once 'models/Receipt.php';
	include_once 'models/ReceiptDetail.php';
	include_once 'models/Customer.php';
	include_once 'models/Product.php';
	include_once 'models/User.php';
	class ReceiptController 
	{
		public $Receipt_model;
		public $ReceiptDetail_model;
		public $Customer_model;
		public $Product_model;
		public $User_model;
		function __construct()
		{
			$this->Receipt_model=new Receipt();
			$this->ReceiptDetail_model=new ReceiptDetail();
			$this->Customer_model=new Customer();
			$this->Product_model=new Product();
			$this->User_model=new User();
		}
		public function list()
		{
			$data=$this->Receipt_model->getAll();
			$detail=array();
			$item=array();
			$customerName=array();
			$staffName=array();
			foreach ($data as $receipt_key => $receipt) {
				$detail[$receipt_key]=$this->ReceiptDetail_model->getDetail($receipt['code']);

				//$staffName[$receipt_key]=$this->User_model->detail($receipt['staff_id']);
				//$customerName[$receipt_key]=$this->Customer_model->detail($receipt['customer_id']);
				foreach ($detail[$receipt_key] as $product_key => $product){
					$item[$receipt_key][$product_key]=$this->Product_model->getByCode($product['product_code']);
				}
			}
			include_once 'views/receipt/list.php';
		}

	}
 ?>