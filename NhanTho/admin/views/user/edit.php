    <div class="panel-heading">
        Cập nhật thông tin
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<form action="?mod=users&act=update" method="POST" role="form" style="margin-top: 80px;">
			<input type="hidden" name="id" value="<?= $user['id'] ?>">
			<div class="form-group">
				<label for="">Name</label>
				<input name="name" type="text" class="form-control" id="" value="<?= $user['name'] ?>">
			</div>
			<div class="form-group">
				<label for="">Email</label>
				<input name="email" type="text" class="form-control" id="" value="<?= $user['email'] ?>">
			</div>
			<div class="form-group">
				<label for="">Mobile</label>
				<input name="mobile" type="text" class="form-control" id="" value="<?= $user['mobile'] ?>">
			</div>
		
			
		
			<button name="submit" type="submit" class="btn btn-primary">Update</button>
			<a class="btn btn-default" style="float: right;" href="?mod=users&act=list" title="Cancel">Cancel</a>
		</form>

    </div>
    <!-- /.panel-body -->