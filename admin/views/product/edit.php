    <div class="panel-heading">
        Cập nhật thông tin
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<form action="?mod=products&act=update" method="POST" role="form" style="margin-top: 80px;" enctype="multipart/form-data">
			<input type="hidden" name="id" value="<?= $product['id'] ?>">
			<div class="form-group">
				<label for="">Mã sản phẩm</label>
				<input name="code" type="text" class="form-control" id="" value="<?= $product['code'] ?>">
			</div>
			<div class="form-group">
				<label for="">Tên sản phẩm</label>
				<input name="name" type="text" class="form-control" id="" value="<?= $product['name'] ?>">
			</div>
			<div class="form-group">
				<label for="">Mô tả</label>
				<input name="description" type="text" class="form-control" id="" value="<?= $product['description'] ?>">
			</div>
			<div class="form-group">
				<label for="">Giá</label>
				<input name="price" type="text" class="form-control" id="" value="<?= $product['price'] ?>">
			</div>
			<div class="form-group">
				<label for="">Số lượng</label>
				<input name="quantity" type="number" class="form-control" id="" value="<?= $product['quantity'] ?>">
			</div>
			<div class="form-group">
				<label for="">Mã danh mục</label>
				<input name="category_id" type="text" class="form-control" id="" value="<?= $product['category_id'] ?>">
			</div>
			<div class="form-group">
				<label for="">Ảnh</label>
				<input name="image" type="file" class="form-control" placeholder="Input field" value="<?= $product['image'] ?>">
			</div>
		
			
		
			<button name="submit" type="submit" class="btn btn-primary">Update</button>
			<a class="btn btn-default" style="float: right;" href="?mod=products&act=list" title="Cancel">Cancel</a>
		</form>

    </div>
    <!-- /.panel-body -->