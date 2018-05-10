    <div class="panel-heading">
        Danh Sách Người Dùng
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
 		<table id="table"  class="my_table" width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
 			<thead>
 				<tr>
 					<th>ID</th>
 					<th>Tên người dùng</th>
 					<th>Địa chỉ email</th>
 					<th>Số điện thoại</th>
 					<th>Địa chỉ</th>
 					<th>Action</th>
 				</tr>
 			</thead>
 			<tbody>
				<?php 
				foreach ($data as $customer) { ?>
 				<tr>
 					<td><?= $customer['id'] ?></td>
                    <td><?= $customer['name'] ?></td>
                    <td><?= $customer['email'] ?></td>
 					<td><?= $customer['mobile'] ?></td>
 					<td><?= $customer['address'] ?></td>
 					<td>
						<button type="button" class="btn btn-primary fa fa-ellipsis-h" data-toggle="modal" data-target=".modal_<?= $customer['id'] ?>"></button>
						<a class='btn btn-warning fa fa-pencil' href='?mod=customers&act=edit&id=<?= $customer['id'] ?>'></a>
						<a class='btn btn-danger delete fa fa-trash'  href='?mod=customers&act=delete&id=<?= $customer['id'] ?>'></a>
 					</td>
 				</tr>
				<?php } ?>
 			</tbody>
 		</table>
        <?php 
            foreach ($data as $customer) { ?>
            <!-- Modal -->
            <div class="modal fade modal_<?= $customer['id'] ?>" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Chi tiết khách hàng</h4>
                  </div>
                  <div class="modal-body">
                        <table class="table table-hover" style="margin-top: 80px;">
                            <tbody>
                                <tr>
                                    <th>Tên khách hàng</th>
                                    <td><?= $customer['name'] ?></td>
                                </tr>
                                <tr>
                                    <th>Địa chỉ email</th>
                                    <td><?= $customer['email'] ?></td>
                                </tr>
                                <tr>
                                    <th>Số điện thoại</th>
                                    <td><?= $customer['mobile'] ?></td>
                                </tr>
                                <tr>
                                    <th>Địa chỉ</th>
                                    <td><?= $customer['address'] ?></td>
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
 		<a href="index.php?mod=customers&act=add" class="btn btn-success" title="Thêm khách hàng">Thêm khách hàng</a>

    </div>
    <!-- /.panel-body -->