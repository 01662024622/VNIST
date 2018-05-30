<?php 
/**
* 		
*/
	include_once 'models/Receipt.php';
	include_once 'models/ReceiptDetail.php';
	include_once 'models/Customer.php';
	include_once 'models/Product.php';
	class PaymentController 
	{
		public $Receipt_model;
		public $ReceiptDetail_model;
		public $Customer_model;
		public $Prodcut_model;
		function __construct()
		{
			$this->Receipt_model=new Receipt();
			$this->ReceiptDetail_model=new ReceiptDetail();
			$this->Customer_model=new Customer();
			$this->Product_model=new Product();
		}
		public function getInfo()
		{
			if (isset($_POST['submit'])&&isset($_POST['email'])) {
				$customer=$this->Customer_model->findEmail($_POST['email']);
				if (isset($customer)) {
					$_SESSION['curentCustomer']=$customer;
					include_once 'views/payment/customerDetail.php';
				}else{
					include_once 'views/payment/addCustomer.php';
				}
			}else{
				include_once 'views/payment/getEmail.php';
			}
		}
		public function storeInPayment()
		{
			$data=array();
			//$data['id']=$_POST['id'];
			$data['name']=$_POST['name'];
			$data['email']=$_POST['email'];
			$data['mobile']=$_POST['mobile'];
			$data['address']=$_POST['address'];
			$result=$this->Customer_model->insert($data);
			$_SESSION['curentCustomer']=$this->Customer_model->findEmail($_POST['email']);

			if ($result) {
	            setcookie('success',"Thêm khách hàng thành công.", time()+3);
	        }else{
	            setcookie('error',"Đã xảy ra lỗi!.", time()+3);
	        }
			header('location: ?mod=payments&act=insertReceipt');
		}
		public function insertReceipt()
		{
			if (isset($_SESSION['cart'])&&isset($_SESSION['account'])&&isset($_SESSION['curentCustomer'])) {
				$receipt=array();
				date_default_timezone_set('Asia/Ho_Chi_Minh');
				$receipt['code']=time();
				$receipt['staff_id']=$_SESSION['account']['id'];
				$receipt['customer_id']=$_SESSION['curentCustomer']['id'];
				$receipt['date']=date('Y-m-d H:i:s');
				$receipt['sum']=$_SESSION['sumCart'];
				/*echo "<pre>";
				print_r($receipt);
				echo "</pre>";*/
				$resultReceipt=$this->Receipt_model->insert($receipt);
				foreach ($_SESSION['cart'] as $code => $product) {
					$detail=array();
					$detail['receipt_code']=$receipt['code'];
					$detail['product_code']=$product['code'];
					$detail['quantity']=$product['quantity'];
					$detail['price']=$product['price'];
					$detail['sum']=$product['quantity']*$product['price'];
					/*echo "<pre>";
					print_r($detail);
					echo "</pre>";*/
					$resultReceiptDetail=$this->ReceiptDetail_model->insert($detail);
				}
				if ($resultReceipt&&$resultReceiptDetail) {
		            setcookie('success',"Thanh toán thành công.", time()+3);
				    $name1="Tùng đẹp trai";
				    $mailAddress=$_SESSION['curentCustomer']['email'] ;
				    $Msg="<h1>Cảm ơn đã mua hàng tại công ty chúng tôi !</h1>";
				    $this->send_email($mailAddress,$name1, $Msg, "Auto email");
		            unset($_SESSION['cart']);
					$_SESSION['lastReceipt']=$receipt['code'];
					header('location: ?mod=payments&act=showReceipt');
		        }else{
		            setcookie('error',"Đã xảy ra lỗi thanh toán!.", time()+3);
		        }

			}
		}
		public function showReceipt()
		{
			if (isset($_SESSION['lastReceipt'])) {
				$receipt=$this->Receipt_model->getByCode($_SESSION['lastReceipt']);
				$products=array();
				$products=$this->ReceiptDetail_model->getDetail($_SESSION['lastReceipt']);
				$items=array();
				foreach ($products as $product_key => $product) {
                    $items[$product_key]=$this->Product_model->getByCode($product['product_code']);
                }
				include_once 'views/payment/showReceipt.php';
			}
		}

			
		public function send_email($email_recive,$name,$contents,$subject ){
		        //https://www.google.com/settings/security/lesssecureapps
		        // Khai báo thư viên phpmailer
		        require "phpmailer/PHPMailerAutoload.php";
		        require "phpmailer/class.phpmailer.php";
		        // Khai báo tạo PHPMailer
		        $mail = new PHPMailer();
		        //Khai báo gửi mail bằng SMTP
		        $mail->IsSMTP();
		        //Tắt mở kiểm tra lỗi trả về, chấp nhận các giá trị 0 1 2
		        // 0 = off không thông báo bất kì gì, tốt nhất nên dùng khi đã hoàn thành.
		        // 1 = Thông báo lỗi ở client
		        // 2 = Thông báo lỗi cả client và lỗi ở server
		        // To load the French version
		        $mail->setLanguage('vi', '/optional/path/to/language/directory/');
		        $mail->SMTPDebug  = 0;
		        $mail->CharSet="UTF-8";
		        $mail->Debugoutput = "html"; // Lỗi trả về hiển thị với cấu trúc HTML
		        $mail->Host       = "smtp.gmail.com"; //host smtp để gửi mail
		        $mail->Port       = 587; // cổng để gửi mail
		        $mail->SMTPSecure = "tls"; //Phương thức mã hóa thư - ssl hoặc tls
		        $mail->SMTPAuth   = true; //Xác thực SMTP
		        $mail->Username   = "auto.zentgroup@gmail.com"; // Tên đăng nhập tài khoản Gmail
		        $mail->Password   = "1@3$5^7*"; //Mật khẩu của gmail
		        $mail->SetFrom("zentgroup@gmail.com", "Zent Group"); // Thông tin người gửi
		        $mail->AddReplyTo("zentgroup@gmail.com","Zent Group");// Ấn định email sẽ nhận khi người dùng reply lại.
		        $mail->AddAddress($email_recive, $name);//Email của người nhận
		        $mail->Subject = $subject; //Tiêu đề của thư
		        $mail->MsgHTML($contents); //Nội dung của bức thư.
		        // $mail->MsgHTML(file_get_contents("email-template.html"), dirname(__FILE__));
		        // Gửi thư với tập tin html
		        $mail->AltBody = "Nội dung thư";//Nội dung rút gọn hiển thị bên ngoài thư mục thư.
		        //$mail->AddAttachment("images/attact-tui.gif");//Tập tin cần attach
		         
		        //Tiến hành gửi email và kiểm tra lỗi
		        if(!$mail->Send()) {
		         // echo "Có lỗi khi gửi mail: " . $mail->ErrorInfo;
		            return false;
		        } else {
		            return true;
		          //echo "Đã gửi thư thành công!";
		        }
		    } /*
		    $name="Tùng đẹp trai";
		    $Msg="<h1>Hello world</h1>";
		    send_email('tungtinhteis@gmail.com',$name, $Msg, "Auto email");*/
	    

	}
 ?>