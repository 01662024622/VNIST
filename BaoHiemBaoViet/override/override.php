<?php 
$ip=$_SERVER["REMOTE_ADDR"];
include_once 'pages/Controller/PageController.php';
$PageController = new PageController();
$time=$PageController->override($ip); 
?>

<!-- foreach($_SERVER as $key => $value){
echo '$_SERVER["'.$key.'"] = '.$value."<br />";
}
 -->