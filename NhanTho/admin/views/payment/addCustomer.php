

    <div class="panel-heading">
        Thêm Khách Hàng
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
		<form  action="?mod=payments&act=storeInPayment" method="POST" role="form" style="margin-top: 80px;">
		
			<div class="form-group">
				<label for="">Tên khách hàng</label>
				<input name="name" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Địa chỉ email</label>
				<input name="email" type="text" class="form-control" value="<?=$_POST['email']?>" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Số điện thoại</label>
				<input name="mobile" type="text" class="form-control" placeholder="Input field">
			</div>
			<div class="form-group">
				<label for="">Địa chỉ</label>
				<input name="address" type="text" class="form-control" placeholder="Input field">
			</div>
		
			
		
			<button style="margin-bottom: 30px;" name="submit" type="submit" class="btn btn-primary">Thêm mới và thanh toán</button>
			<a class="btn btn-default" style="float: right;" href="?mod=payments&act=getInfo" title="Back">Back</a>

		<table id="table"  class="my_table" width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Mã sản phẩm</th>
                    <th>Ảnh</th>
                    <th>Tên sản phẩm</th>
                    <th>Mô tả</th>
                    <th>Giá</th>
                    <th>Số lượng</th>
                    <th>Thành tiền</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                //session_start();
                foreach ($_SESSION['cart'] as $code => $product) { ?>
                    <tr>
                        <td><?= $product['id'] ?></td>
                        <td><?= $product['code'] ?></td>
                        <td><img style="width: 65px; padding: 5px 0;" src="../images/productImages/<?= $product['image'] ?>" class="img-responsive"></td>
                        <td><?= $product['name'] ?></td>
                        <td><?= $product['description'] ?></td>
                        <td><?php echo number_format($product['price'])." VNĐ";  ?></td>
                        <td><?= $product['quantity'] ?></td>
                        <td><?php echo number_format($product['price']*$product['quantity'])." VNĐ";  ?></td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>

    </div>
    <!-- /.panel-body -->