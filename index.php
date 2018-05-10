<?php ob_start(); ?>
<?php
$ip=$_SERVER["REMOTE_ADDR"];
include_once 'pages/Controller/PageController.php';
$PageController = new PageController();
$time=$PageController->override($ip);
echo $time;
// var_dump($time);
?>
<?php 
	// print_r($_POST);	
				
	
		$page='trang-chu';
		if (isset($_GET['page'])) {
			$page=$_GET['page'];
		}	
	switch ($page) {
		case 'trang-chu':
			include_once 'pages/header.php';
			include_once 'pages/Controller/PageController.php';
			$PageController = new PageController();
			$PageController->trangchu();
			include_once 'pages/footer.php';
			break;
		case 'tin-tuc':
			include_once 'pages/header.php';
			$title='index';
			if (isset($_GET['title'])) {
				$title=$_GET['title'];
			}
			include_once 'pages/Controller/PageController.php';
			$PageController = new PageController();
			switch ($title) {
				case 'index':
					$PageController->tintuc();
					break;
				
				default:
					$PageController->page($title);
					
					break;
			}
			include_once 'pages/footer.php';
			break;
		case 'nhan-tho':
			include_once 'NhanTho/Controller/PageController.php';
			$PageController = new PageController();
			$PageController->trangchu();
			break;
		case 'tin-tuc-nhan-tho':
			$title='index';
			if (isset($_GET['title'])) {
				$title=$_GET['title'];
			}

			include_once 'NhanTho/Controller/PageController.php';
			$PageController = new PageController();
			switch ($title) {
				case 'index':
					$PageController->tintuc();
					break;
				
				default:
					$PageController->page($title);
					
					break;
			}
			break;
		case 'ngan-hang':
			include_once 'NganHang/Controller/PageController.php';
			$PageController = new PageController();
			$PageController->trangchu();
			break;
		case 'tin-tuc-ngan-hang':
			$title='index';
			if (isset($_GET['title'])) {
				$title=$_GET['title'];
			}

			include_once 'NganHang/Controller/PageController.php';
			$PageController = new PageController();
			switch ($title) {
				case 'index':
					$PageController->tintuc();
					break;
				
				default:
					$PageController->page($title);
					
					break;
			}
			break;
		default:
		echo "404 not found!";
			break;
		}
	
 ?>
