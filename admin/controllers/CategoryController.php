<?php 
	/**
	* 
	*/
	include_once "models/Category.php";
	class CategoryController
	{
		public $category_model;
		function __construct()
		{
			$this->category_model=new Category();
		}


		public function list()
		{
			$data=$this->category_model->getAll();
			include_once 'views/category/list.php';
		}
		public function detail()
		{
			if (isset($_GET['id'])) {
				$id = $_GET['id'];
				$data=$this->category_model->products($id);
				include_once 'views/category/listProducts.php';
			}
		}

		public function delete()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$result=$this->category_model->delete($id);
			if ($result) {
	            setcookie('delete',"Xóa danh mục thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: ?mod=categories&act=list');
		}
		public function add()
		{
			include_once 'views/category/add.php';
		}
		public function store()
		{
			$data=array();
			date_default_timezone_set('Asia/Ho_Chi_Minh');
			$created_at=date('Y-m-d H:i:s');
			$data['name']=$_POST['name'];
			$data['description']=$_POST['description'];
			$data['created_at']=$created_at;
			$result=$this->category_model->insert($data);
			if ($result) {
	            setcookie('success',"Thêm danh mục thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: index.php?mod=categories&act=list');
		}
		public function addProduct()
		{
			if (isset($_GET['category_id'])) {
				$category_id=$_GET['category_id'];
				include_once 'views/category/addProduct.php';
			}
		}
		public function storeProduct()
		{
			$data=array();
			//$data['id']=$_POST['id'];
			$data['name']=$_POST['name'];
			$data['code']=$_POST['code'];
			$data['description']=$_POST['description'];
			$data['price']=$_POST['price'];
			$data['quantity']=$_POST['quantity'];
			$data['category_id']=$_POST['category_id'];
			include_once "models/Product.php";
			$product_model=new Product();
			$result=$product_model->insert($data);
			if ($result) {
	            setcookie('success',"Thêm sản phẩm thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: ?mod=categories&act=detail&id='.$category_id);
			//header('location: index.php?mod=categories&act=list');
		}
		public function edit()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$category=$this->category_model->detail($id);
			include_once 'views/category/edit.php';
		}
		public function update()
		{
			$data=array();
			date_default_timezone_set('Asia/Ho_Chi_Minh');
			$updated_at=date('Y-m-d H:i:s');
			$data['name']=$_POST['name'];
			$data['id']=$_POST['id'];
			$data['description']=$_POST['description'];
			$data['updated_at']=$updated_at;
			$result=$this->category_model->update($data);
			if ($result) {
	            setcookie('warning',"Thay đổi đã được lưu.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: index.php?mod=categories&act=list');
		}
	}
 ?>