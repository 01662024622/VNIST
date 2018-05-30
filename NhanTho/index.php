<?php ob_start(); ?>

<?php 
	// print_r($_POST);	
				
	
		$page='trang-chu';
		if (isset($_GET['page'])) {
			$page=$_GET['page'];
		}	
	switch ($page) {
		case 'trang-chu':
			include_once 'NhanTho/Controller/PageController.php';
			$PageController = new PageController();
			$PageController->trangchu();
			include_once 'override/override.php';
			break;
		case 'tin-tuc':
			$title='index';
			if (isset($_GET['title'])) {
				$title=$_GET['title'];
			}

			include_once 'NhanTho/Controller/PageController.php';
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
			
			break;

		default:
		echo "404 not found!";
		
			break;

		}
	
 ?>
