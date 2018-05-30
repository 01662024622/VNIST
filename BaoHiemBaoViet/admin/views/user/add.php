

    <div class="panel-heading">
        Đăng ký tài khoản
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<form action="?mod=users&act=store" method="POST" role="form" style="margin-top: 80px;">
		
			<div class="form-group">
				<label for="">Name <small class="error name-err"></small></label>
				<input name="name" type="text" class="form-control name-input" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Email <small class="error error email-err"></small></label>
				<input name="email" type="text" class="form-control email-input" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Mobile <small class="error mobile-err"></small></label>
				<input name="mobile" type="text" class="form-control mobile-input" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Password <small class="error password-err"></small></label>
				<input name="password" type="password" class="form-control password-input" placeholder="Input field">
			</div>
		
			
		
			<button name="submit" type="submit" class="btn btn-primary submit-button">Submit</button>
			<a class="btn btn-default" style="float: right;" href="index.php" title="Cancel">Cancel</a>
		</form>

    </div>
    <!-- /.panel-body -->