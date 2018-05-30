    <div class="panel-heading">
        Cập nhật thông tin khách hàng
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<form action="?mod=customers&act=update" method="POST" role="form" style="margin-top: 80px;">
			<input type="hidden" name="id" value="<?= $customer['id'] ?>">
			<div class="form-group">
				<label for="">Tên khách hàng</label>
				<input name="name" type="text" class="form-control" id="" value="<?= $customer['name'] ?>">
			</div>
			<div class="form-group">
				<label for="">Địa chỉ email</label>
				<input name="email" type="text" class="form-control" id="" value="<?= $customer['email'] ?>">
			</div>
			<div class="form-group">
				<label for="">Số điện thoại</label>
				<input name="mobile" type="text" class="form-control" id="" value="<?= $customer['mobile'] ?>">
			</div>
			<div class="form-group">
				<label for="">Địa chỉ</label>
				<input name="address" type="text" class="form-control" id="" value="<?= $customer['address'] ?>">
			</div>
		
			
		
			<button name="submit" type="submit" class="btn btn-primary">Update</button>
			<a class="btn btn-default" style="float: right;" href="?mod=customers&act=list" title="Cancel">Cancel</a>
		</form>

    </div>
    <!-- /.panel-body -->