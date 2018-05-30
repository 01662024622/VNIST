<?php ob_start(); ?>

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
			include_once 'override/override.php';
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
					include_once 'override/override.php';
					break;
				
				default:
					$PageController->page($title);
					include_once 'override/override.php';
					break;
			}
			include_once 'pages/footer.php';
			include_once 'override/override.php';
			break;


		default:
		echo "404 not found!";
		
			break;

		}
	
 ?>
