<?php ob_start(); ?>

<?php 
	// print_r($_POST);
    include_once 'views/header.php';	
				
	if (isset($_SESSION['login'])&&$_SESSION['login']==true) 
 
	{
		$mod='posts';
		$act='list';
		if (isset($_GET['mod'])) {
			$mod=$_GET['mod'];
		}
		
		if (isset($_GET['act'])) {
			$act=$_GET['act'];
		}
	}else{
		$mod='login';
	}
	switch ($mod) {
		case 'users':
			include_once 'controllers/UserController.php';
			$userController = new UserController();
			switch ($act) {
				case 'list':
					$userController->list();
					break;
				case 'add':
					$userController->add();
					break;
				case 'store':
					$userController->store();
					break;
				case 'edit':
					$userController->edit();
					break;
				case 'update':
					$userController->update();
					break;
				case 'delete':
					$userController->delete();
					break;
				case 'detail':
					$userController->detail();
					break;
				
				default:
					$userController->error();
					break;
			}
			break;
		case 'categories':
			include_once 'controllers/CategoryController.php';
			$categoryController = new CategoryController();
			switch ($act) {
				case 'list':
					$categoryController->list();
					break;
                case 'detail':
                    $categoryController->detail();
                    break;
                case 'add':
                    $categoryController->add();
                    break;
                case 'store':
                    $categoryController->store();
                    break;
                case 'edit':
                    $categoryController->edit();
                    break;
                case 'update':
                    $categoryController->update();
                    break;
                case 'addProduct':
                    $categoryController->addProduct();
                    break;
                case 'storeProduct':
                    $categoryController->storeProduct();
                    break;
				case 'delete':
					$categoryController->delete();
					break;
				
				default:
					echo "404 not found!";
					break;
			}
			break;
		case 'posts':
			include_once 'controllers/ProductController.php';
            $productController=new ProductController();
			switch ($act) {
				case 'list':
					$productController->list();
					// header('location: index.php');
					break;
                /*case 'detail':
                    $productController->detail();
                    break;*/
                case 'add':
                    $productController->add();
                    break;
                case 'store':
                    $productController->store();
                    break;
                case 'edit':
                    $productController->edit();
                    break;
                case 'update':
                    $productController->update();
                    break;
				case 'delete':
					$productController->delete();
					break;
				case 'sale':
					$productController->sale();
					break;
				case 'addToCart':
					$productController->addToCart();
					break;
				case 'listCart':
					$productController->listCart();
					break;
				case 'deleteFromCart':
					$productController->deleteFromCart();
					break;
				case 'quantity':
					$productController->quantity();
					break;
				
				default:
					echo "404 not found!";
					break;
			}
			break;
		case 'customers':
			include_once 'controllers/CustomerController.php';
            $customerController=new CustomerController();
			switch ($act) {
				case 'list':
					$customerController->list();
					break;
                case 'detail':
                    $customerController->detail();
                    break;
                case 'add':
                    $customerController->add();
                    break;
                case 'store':
                    $customerController->store();
                    break;
                case 'edit':
                    $customerController->edit();
                    break;
                case 'update':
                    $customerController->update();
                    break;
				case 'delete':
					$customerController->delete();
					break;
				
				default:
					echo "404 not found!";
					break;
			}
			break;
		case 'payments':
			include_once 'controllers/PaymentController.php';
            $paymentController=new PaymentController();
			switch ($act) {
				case 'getInfo':
					$paymentController->getInfo();
					break;
				case 'storeInPayment':
					$paymentController->storeInPayment();
					break;
				case 'insertReceipt':
					$paymentController->insertReceipt();
					break;
				case 'showReceipt':
					$paymentController->showReceipt();
					break;
				
				default:
					echo "404 not found!";
					break;
			}
			break;
		case 'receipts':
			include_once 'controllers/ReceiptController.php';
            $receiptController=new ReceiptController();
			switch ($act) {
				case 'list':
					$receiptController->list();
					break;
				
				default:
					echo "404 not found!";
					break;
			}
			break;
		case 'login':
			if (isset($_SESSION['login'])&&$_SESSION['login']==true) {
				header('location: index.php');
	        }else{
				include_once 'controllers/UserController.php';
	            $userController=new UserController();
	            $userController->login();
	        }
	        break;
		case 'logout':
			include_once 'controllers/UserController.php';
            $userController=new UserController();
            $userController->logout();
	        break;

		default:
			echo "404 not found!";
			break;
	}

include_once 'views/footer.php';	
 ?>
