<?php 
function check(){
	$nameErr=$mobileErr=$emailErr="";
	$inputData=array();
	function test_input($inputData) {
	  	$inputData = trim($inputData);
	  	$inputData = stripslashes($inputData);
	  	$inputData = htmlspecialchars($inputData);
	  	return $inputData;
	}

	if(isset($_POST['submit'])){
		$inputData=array();
		$inputData['name'] = $_POST['name'];
		$inputData['email']  = $_POST['email'];
		$inputData['mobile']  = $_POST['mobile'];
		$inputData['created_at'] =date('Y-m-d H:i:s');
	
		if($_POST['name']=="") {
			$nameErr="Tên sinh viên không được bỏ trống";
		}
			else $nameErr="";
		$name = test_input($_POST["name"]);
		if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
	      $nameErr = "Tên chỉ chứa kí tự và khoảng trống"; 
	    }

	    if ($_POST["email"]=="") {
		    $emailErr = "Email không được bỏ trống";
		}else {
			$email = test_input($_POST["email"]);
		    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		      $emailErr = "Email không đúng định dạng"; 
			}
		}

		if($_POST['mobile']=="") $mobileErr="Số điện thoại không được bỏ trống";
			else $mobileErr="";

		if(!preg_match('/^[0-9]{3}[0-9]{3}[0-9]{5}$/', $_POST['mobile'])&&!preg_match('/^[0-9]{3}[0-9]{3}[0-9]{4}$/', $_POST['mobile'])){
		      	$mobileErr = 'Số điện thoại có 10 hoặc 11 số';
		    }
		    echo $_POST['name'];
		if( $_POST['name']!="" && preg_match("/^[a-zA-Z ]*$/",test_input($_POST["name"])) && $_POST["email"]!="" && filter_var(test_input($_POST["email"]), FILTER_VALIDATE_EMAIL)
			&& preg_match('/^[0-9]{3}[0-9]{3}[0-9]{5}$/', $_POST['mobile']) ){
			echo "đúng ròi";
				$inputData=array();
				$inputData['name'] = $_POST['name'];
				$inputData['email']  = $_POST['email'];
				$inputData['mobile']  = $_POST['mobile'];
				$inputData['created_at'] =date('Y-m-d H:i:s');
				if($_FILES["avatar"]["error"] > 0){
					echo "lỗi upload images";
				}
				else {
					move_uploaded_file($_FILES["avatar"]["tmp_name"], "upload/user/" .$_FILES["avatar"]["name"]);
					$link= "upload/user/" .$_FILES["avatar"]["name"];
				}			
				$inputData['avatar']=$link;
				header('location: ?mod=users&act=store');
		}
	}
	include_once('views/user/add.php');
}
?>