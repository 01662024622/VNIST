<?php 
	/**
	* 
	*/
	include_once 'models/User.php';
	class UserController 
	{
		public $user_model;
		function __construct()
		{
			$this->user_model=new User();
		}

		public function list()
		{
			$data=$this->user_model->getAll();
			include_once 'views/user/list.php';
		}
		public function add()
		{
			include_once 'views/user/add.php';
		}
		public function store()
		{
			date_default_timezone_set('Asia/Ho_Chi_Minh');
			$created_at=date('Y-m-d H:i:s');
			$password=md5($_POST['password']);
			$data=array();
			$data['name']=$_POST['name'];
			$data['email']=$_POST['email'];
			$data['mobile']=$_POST['mobile'];
			$data['password']=$password;
			$data['created_at']=$created_at;
			$data['status']=1;
			$result=$this->user_model->insert($data);
			if ($result) {
	            setcookie('success',"Thêm người dùng thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: ?mod=users&act=list');
		}
		public function edit()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$user=$this->user_model->detail($id);
			include_once 'views/user/edit.php';
		}
		public function update()
		{
			date_default_timezone_set('Asia/Ho_Chi_Minh');
			$update_at=date('Y-m-d H:i:s');
			$data=array();
			$data['id']=$_POST['id'];
			$data['name']=$_POST['name'];
			$data['email']=$_POST['email'];
			$data['mobile']=$_POST['mobile'];
			$data['update_at']=$update_at;
			$result=$this->user_model->update($data);
			if ($result) {
	            setcookie('warning',"Thay đổi đã được lưu.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: index.php?mod=users&act=list');
		}

		public function delete()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$result=$this->user_model->delete($id);
			if ($result) {
	            setcookie('delete',"Xóa người dùng thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: ?mod=users&act=list');
		}
		public function error()
		{
			echo "User-Error.";
		}
		public function detail()
		{
			if (isset($_GET['id'])) {
				$id=$_GET['id'];
			}
			$user=$this->user_model->detail($id);
			include_once 'views/user/detail.php';
		}
		public function login()
		{	
			//session_start();
			// print_r($_SESSION['login']);
			if (isset($_SESSION['login'])&&$_SESSION['login']==true) {
				header('location: index.php');
			}
			if (isset($_POST['submit'])) {
				$_SESSION['account']=$this->user_model->getPassword(trim($_POST['email']));
				$passInput=md5($_POST['pass']);
					/*echo "<pre>";
					print_r($password);
					echo "</pre>";
					echo "<br>";
					echo $passInput;*/
				if ($passInput==$_SESSION['account']['password']) {
					$_SESSION['login']=true;
					header('location: index.php');
				}else{
					$_SESSION['login']=false;
					unset($_SESSION['account']);
				}

			}
			include_once 'views/user/login.php';
		}
		public function logout()
		{
			session_start();
			unset($_SESSION['login']);
			unset($_SESSION['account']);
			header('location: index.php');
		}
	}
 ?>