<?php 
	/**
	* 	
	*/
	include_once 'models/Product.php';
	class ProductController 
	{
		public $product_model;
		function __construct()
		{
			$this->product_model=new Product();
		}

		public function list()
		{
			$data=$this->product_model->getAll();
			include_once 'views/product/list.php';
		}/*
		public function detail()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$product=$this->product_model->detail($id);
			include_once 'views/product/detail.php';
		}*/

		public function delete()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$result=$this->product_model->delete($id);
			if ($result) {
	            setcookie('delete',"Xóa sản phẩm thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: ?mod=products&act=list');
		}
		public function add()
		{
			include_once 'views/product/add.php';
		}
		public function store()
		{
			$data=array();
			//$data['id']=$_POST['id'];
			$data['name']=$_POST['name'];
			$data['code']=$_POST['code'];
			$data['description']=$_POST['description'];
			$data['price']=$_POST['price'];
			$data['quantity']=$_POST['quantity'];
			$data['category_id']=$_POST['category_id'];
			if ($_FILES['image']['error']>0) {
				$msg="Ảnh không hợp lệ";
			}
			else{
				move_uploaded_file($_FILES['image']['tmp_name'],"upload/product/".$_FILES['image']['name']);
				$link=$_FILES['image']['name'];
			}
			$data['image']=$link;
			$result=$this->product_model->insert($data);

			if ($result) {
	            setcookie('success',"Thêm sản phẩm thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: ?mod=products&act=list');
		}
		public function edit()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$product=$this->product_model->detail($id);
			include_once 'views/product/edit.php';
		}
		public function update()
		{
			$data=array();
			$data['id']=$_POST['id'];
			$data['name']=$_POST['name'];
			$data['code']=$_POST['code'];
			$data['description']=$_POST['description'];
			$data['price']=$_POST['price'];
			$data['quantity']=$_POST['quantity'];
			$data['category_id']=$_POST['category_id'];
			if ($_FILES['image']['error']>0) {
				$msg="Ảnh không hợp lệ";
			}
			else{
				move_uploaded_file($_FILES['image']['tmp_name'],"upload/product/".$_FILES['image']['name']);
				$link=$_FILES['image']['name'];
			}
			$data['image']=$link;
			$result=$this->product_model->update($data);
			if ($result) {
	            setcookie('warning',"Thay đổi đã được lưu.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: index.php?mod=products&act=list');
		}
		public function addToCart()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
				$product=$this->product_model->detail($id);
				$this->product_model->addToCart($product,$id);

				setcookie('success',"Thêm giỏ hàng thành công.", time()+3);
				header('location: index.php?mod=products&act=sale');
			}
		}
		public function deleteFromCart()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
				$this->product_model->deleteFromCart($id);

				setcookie('delete',"Đã xóa sản phẩm khỏi giỏ hàng.", time()+3);
				header('location: index.php?mod=products&act=listCart');
			}
		}
		public function quantity()
		{
			session_start();
			if (isset($_GET['set'])&&isset($_GET['id'])&&isset($_SESSION['cart'][$_GET['id']])) {
				$id=$_GET['id'];
				$product=$this->product_model->detail($id);
				if($_GET['set']==1){
					if ($_SESSION['cart'][$id]['quantity'] < $product['quantity']) {
						$_SESSION['cart'][$id]['quantity']++;
					}else{
						setcookie('warning',"Số lượng vượt quá lượng hàng hiện có.", time()+3);
					}
				}else{
					if ($_SESSION['cart'][$id]['quantity']>1) {
						$_SESSION['cart'][$id]['quantity']--;
					}else{
						unset($_SESSION['cart'][$id]);
						setcookie('delete',"Xóa mặt hàng thành công.", time()+3);
					}
				}
				header('location: index.php?mod=products&act=listCart');
			}
		}
		public function sale()
		{
			$data=$this->product_model->getAll();
			include_once 'views/product/sale.php';
		}
		public function listCart()
		{
/*			session_start();
			unset($_SESSION['cart']);*/
			include_once 'views/product/cart.php';
		}

	}
 ?>