$(document).ready(function(){
	var nameInput= $(".name-input").val().trim();
	var emailInput= $(".email-input").val().trim();
	var mobileInput= $(".mobile-input").val().trim();
	var passwordInput= $(".password-input").val();
	var nameErr="";
	var emailErr="";
	var mobileErr="";
	var passwordErr="";
	$(".submit-button").hide();
	function check() {
		if (nameInput=="") {
			nameErr="Tên không được để trống"
		}else{
			nameErr="";
		}
		if (passwordInput=="") {
			passwordErr="Mật khẩu không được để trống"
		}else{
			passwordErr="";
		}
		if (validateEmail(emailInput)) 
			emailErr="";
		else
			emailErr="Email không hợp lệ";
		if (validateMobile(mobileInput)) {
			mobileErr="";
		}
		else{
			mobileErr="Số điện thoại không hợp lệ";
		}
		if (nameErr==""&&emailErr==""&&mobileErr==""&&passwordErr=="") {
			return true;
		}else{
			return false;
		}
		
	}
	$(".name-input").blur(function(){
		if (check()) {
			$(".submit-button").show();
			$(".name-err").text("");
		}else{
			$(".submit-button").hide();
			$(".name-err").text(nameErr);
		}
	});
	$(".email-input").blur(function(){
		if (check()) {
			$(".submit-button").show();
			$(".email-err").text("");
		}else{
			$(".submit-button").hide();
			$(".email-err").text(emailErr);
		}
	});
	$(".mobile-input").blur(function(){
		if (check()) {
			$(".submit-button").show();
			$(".mobile-err").text("");
		}else{
			$(".submit-button").hide();
			$(".mobile-err").text(mobileErr);
		}
	});
	$(".password-input").blur(function(){
		if (check()) {
			$(".submit-button").show();
			$(".password-err").text("");
		}else{
			$(".submit-button").hide();
			$(".password-err").text(passwordErr);
		}
	});

	function validateEmail(email) {
	    var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    return re.test(email);
	}
	function validateMobile(mobile) {
	    var re = /(09|01[2|6|8|9])+([0-9]{8})\b/;
	    return re.test(mobile);
	}
})