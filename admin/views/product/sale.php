    <div class="panel-heading">
        Bán hàng
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
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
 					<th>Action</th>
 				</tr>
 			</thead>
 			<tbody>
				<?php 
				foreach ($data as $product) { ?>
 				<tr>
 					<td><?= $product['id'] ?></td>
 					<td><?= $product['code'] ?></td>
                    <td><img style="width: 65px; padding: 5px 0;" src="../images/productImages/<?= $product['image'] ?>" class="img-responsive"></td>
 					<td><?= $product['name'] ?></td>
 					<td><?= $product['description'] ?></td>
 					<td><?php echo number_format($product['price'])." VNĐ";  ?></td>
 					<td><?= $product['quantity'] ?></td>
 					<td>
                        <button type="button" class="btn btn-primary fa fa-ellipsis-h" data-toggle="modal" data-target=".modal_<?= $product['code'] ?>"></button>
						<a class='btn btn-success fa fa-shopping-cart'  href='?mod=products&act=addToCart&id=<?= $product['id'] ?>'></a>
 					</td>
 				</tr>
				<?php } ?>
 			</tbody>
 		</table>
        
            <?php 
            foreach ($data as $product) { ?>
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
                    <a class='btn btn-success fa fa-shopping-cart'  href='?mod=products&act=addToCart&id=<?= $product['id'] ?>'></a>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  </div>
                </div>

              </div>
            </div>
            <?php } ?>

    </div>
    <!-- /.panel-body -->