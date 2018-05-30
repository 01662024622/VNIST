    <div class="panel-heading">
        Giỏ hàng
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
        <?php 
        $_SESSION['sumCart']=0;
/*        echo "<pre>";
        print_r($_SESSION['cart']);
        echo "</pre>";
        unset($_SESSION['cart']);
        die();*/
        if (isset($_SESSION['cart'])) { ?>
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
 					<th>Action</th>
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
     					<td>
                            <a class='btn btn-warning fa fa fa-plus' href='?mod=products&act=quantity&set=1&id=<?= $code ?>'></a>
                            <a class='btn btn-warning fa fa fa-minus' href='?mod=products&act=quantity&set=-1&id=<?= $code ?>'></a>
                            <button type="button" class="btn btn-primary fa fa-ellipsis-h" data-toggle="modal" data-target=".modal_<?= $product['code'] ?>"></button>

                            <a class='btn btn-danger delete fa fa-trash'  href='?mod=products&act=deleteFromCart&id=<?= $code ?>'></a>
     					</td>
     				</tr>
    				<?php $_SESSION['sumCart']+=($product['price']*$product['quantity']);
                }
/*                echo "<pre>";
                print_r($_SESSION['cart']);
                echo "</pre>"; */
                } else{echo "<h2>Chưa có sản phẩm nào trong giỏ hàng!</h2>";}?>
 			</tbody>
 		</table>
        
            <?php 
            if (isset($_SESSION['cart'])) {
            foreach ($_SESSION['cart'] as $code => $product) { ?>
            <!-- Modal -->
            <div class="modal fade modal_<?= $product['code'] ?>" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Chi tiết sản phẩm</h4>
                  </div>
                  <div class="modal-body">
                    <div class="col-sm-6 col-sm-offset-3" style="padding: 10px 0 20px 0;">
                        <img src="../images/productImages/<?= $product['image'] ?>" class="img-responsive">
                    </div>
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
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  </div>
                </div>

              </div>
            </div>
            <?php } ?>
         		<a href="?mod=payments&act=getInfo" class="btn btn-warning" title="Thanh toán"><span style="font-size: 1.2em;">Thanh toán</span> <span style="font-size: 1.5em;" class="font-weight-bold"><?= number_format($_SESSION['sumCart'])." VNĐ"?></span>
            <?php } ?>
</a>

    </div>
    <!-- /.panel-body -->