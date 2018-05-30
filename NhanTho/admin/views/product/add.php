

    <div class="panel-heading">
        Thêm sản phẩm
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<form action="?mod=products&act=store" method="POST" role="form" style="margin-top: 80px;" enctype="multipart/form-data">
		
			<div class="form-group">
				<label for="">Mã sản phẩm</label>
				<input name="code" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Tên sản phẩm</label>
				<input name="name" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Mô tả</label>
				<input name="description" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Giá</label>
				<input name="price" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Số lượng</label>
				<input name="quantity" type="number" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Danh mục</label>
				<input name="category_id" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Ảnh</label>
				<input name="image" type="file" class="form-control" placeholder="Input field">
			</div>
		
			
		
			<button name="submit" type="submit" class="btn btn-primary">Submit</button>
			<a class="btn btn-default" style="float: right;" href="?mod=products&act=list" title="Cancel">Cancel</a>
		</form>

    </div>
    <!-- /.panel-body -->