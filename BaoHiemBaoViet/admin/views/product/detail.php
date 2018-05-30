


    <div class="panel-heading">
        Chi tiết sản phẩm
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<table class="table table-hover" style="margin-top: 80px;">
			<tbody>
				<tr>
					<th>Mã sản phẩm</th>
					<td><?= $product['code'] ?></td>
				</tr>
				<tr>
					<th>Tên sản phẩm</th>
					<td><?= $product['name'] ?></td>
				</tr>
				<tr>
					<th>Mô tả</th>
					<td><?= $product['description'] ?></td>
				</tr>
				<tr>
					<th>Giá</th>
					<td><?php echo number_format($product['price'])." VNĐ";  ?></td>
				</tr>
				<tr>
					<th>Số lượng</th>
					<td><?= $product['quantity'] ?></td>
				</tr>
				<tr>
					<th>Danh mục</th>
					<td><?= $product['category_id'] ?></td>
				</tr>
			</tbody>
		</table>
		<a class="btn btn-default" style="float: right;" href="?mod=products&act=list" title="Back">Back</a>

    </div>
    <!-- /.panel-body -->