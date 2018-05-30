<?php 
	/**
	* 	
	*/
	include_once 'models/Customer.php';
	class CustomerController 
	{
		public $Customer_model;
		function __construct()
		{
			$this->Customer_model=new Customer();
		}

		public function list()
		{
			$data=$this->Customer_model->getAll();
			include_once 'views/customer/list.php';
		}
		public function detail()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$customer=$this->Customer_model->detail($id);
			include_once 'views/customer/detail.php';
		}

		public function delete()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$result=$this->Customer_model->delete($id);
			if ($result) {
	            setcookie('delete',"Xóa khách hàng thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: ?mod=customers&act=list');
		}
		public function add()
		{
			include_once 'views/customer/add.php';
		}
		public function store()
		{
			$data=array();
			//$data['id']=$_POST['id'];
			$data['name']=$_POST['name'];
			$data['email']=$_POST['email'];
			$data['mobile']=$_POST['mobile'];
			$data['address']=$_POST['address'];
			$result=$this->Customer_model->insert($data);

			if ($result) {
	            setcookie('success',"Thêm khách hàng thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: ?mod=customers&act=list');
		}
		public function edit()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$customer=$this->Customer_model->detail($id);
			include_once 'views/customer/edit.php';
		}
		public function update()
		{
			$data=array();
			$data['id']=$_POST['id'];
			$data['name']=$_POST['name'];
			$data['email']=$_POST['email'];
			$data['mobile']=$_POST['mobile'];
			$data['address']=$_POST['address'];
			$result=$this->Customer_model->update($data);
			if ($result) {
	            setcookie('warning',"Thay đổi đã được lưu.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: index.php?mod=customers&act=list');
		}
	}
 ?>