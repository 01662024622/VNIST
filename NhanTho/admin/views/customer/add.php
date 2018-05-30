

    <div class="panel-heading">
        Thêm Khách Hàng
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<form action="?mod=customers&act=store" method="POST" role="form" style="margin-top: 80px;">
		
			<div class="form-group">
				<label for="">Tên khách hàng</label>
				<input name="name" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Địa chỉ email</label>
				<input name="email" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Số điện thoại</label>
				<input name="mobile" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Địa chỉ</label>
				<input name="address" type="text" class="form-control" placeholder="Input field">
			</div>
		
			
		
			<button name="submit" type="submit" class="btn btn-primary">Submit</button>
			<a class="btn btn-default" style="float: right;" href="?mod=customers&act=list" title="Cancel">Cancel</a>
		</form>

    </div>
    <!-- /.panel-body -->