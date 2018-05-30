

    <div class="panel-heading">
        Thêm danh mục
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<form action="?mod=categories&act=store" method="POST" role="form" style="margin-top: 80px;">
		
			<div class="form-group">
				<label for="">Tên danh mục</label>
				<input name="name" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Mô tả</label>
				<input name="description" type="text" class="form-control" placeholder="Input field">
			</div>
		
			
		
			<button name="submit" type="submit" class="btn btn-primary">Submit</button>
			<a class="btn btn-default" style="float: right;" href="?mod=categories&act=list" title="Cancel">Cancel</a>
		</form>

    </div>
    <!-- /.panel-body -->