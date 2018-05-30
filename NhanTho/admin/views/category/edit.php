    <div class="panel-heading">
        Cập nhật thông tin
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<form action="?mod=categories&act=update" method="POST" role="form" style="margin-top: 80px;">
			<input type="hidden" name="id" value="<?= $category['id'] ?>">
			<div class="form-group">
				<label for="">Tên sản phẩm</label>
				<input name="name" type="text" class="form-control" id="" value="<?= $category['name'] ?>">
			</div>
			<div class="form-group">
				<label for="">Mô tả</label>
				<input name="description" type="text" class="form-control" id="" value="<?= $category['description'] ?>">
			</div>			
		
			<button name="submit" type="submit" class="btn btn-primary">Update</button>
			<a class="btn btn-default" style="float: right;" href="?mod=categories&act=list" title="Cancel">Cancel</a>
		</form>

    </div>
    <!-- /.panel-body -->