    <a href="index.php?mod=products&act=add" class="btn btn-success" title="Thêm tài khoản">Thêm sản phẩm</a>
    <br><br>
    <div class="panel-heading">
        Danh Sách Sản Phẩm
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
 		<table id="table"  class="my_table" width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
 			<thead>
 				<tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Text</th>
                    <th>Update at</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                foreach ($data as $user) { ?>
                <tr>
                    <td><?= $user['id'] ?></td>
                    <td><?= $user['title'] ?></td>
                    <td><?= $user['description'] ?></td>
                    <td><?= $user['text'] ?></td>
                    <td><?= $user['update_at'] ?></td>
                    <td>
                        <button type="button" class="btn btn-primary fa fa-ellipsis-h" data-toggle="modal" data-target=".modal_<?= $product['code'] ?>"></button>
						<a class='btn btn-warning fa fa-pencil' href='?mod=products&act=edit&id=<?= $product['id'] ?>'></a>
                        <a class='btn btn-danger delete fa fa-trash'  href='?mod=products&act=delete&id=<?= $product['id'] ?>'></a>
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
                        <img src="upload/product/<?= $product['image'] ?>" class="img-responsive">
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
 		

    </div>
    <!-- /.panel-body -->