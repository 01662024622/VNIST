    <div class="panel-heading">
        Danh Sách người dùng
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
                        <button type="button" class="btn btn-primary fa fa-ellipsis-h" data-toggle="modal" data-target=".modal_<?= $user['id'] ?>"></button>
						<a class='btn btn-warning fa fa-pencil' href='?mod=users&act=edit&id=<?= $user['id'] ?>'></a>
						<a class='btn btn-danger delete fa fa-trash'  href='?mod=users&act=delete&id=<?= $user['id'] ?>'></a>
 					</td>
 				</tr>
				<?php } ?>
 			</tbody>
 		</table>
        <?php 
            foreach ($data as $user) { ?>
            <!-- Modal -->
            <div class="modal fade modal_<?= $user['id'] ?>" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Chi tiết nhân viên</h4>
                  </div>
                  <div class="modal-body">
                    <table class="table table-hover" style="margin-top: 80px;">
                        <tbody>
                            <tr>
                                <th>Họ tên</th>
                                <td><?= $user['name'] ?></td>
                            </tr>
                            <tr>
                                <th>Email</th>
                                <td><?= $user['email'] ?></td>
                            </tr>
                            <tr>
                                <th>Số điện thoại</th>
                                <td><?= $user['mobile'] ?></td>
                            </tr>
                            <tr>
                                <th>Thời gian khởi tạo</th>
                                <td><?= $user['created_at'] ?></td>
                            </tr>
                            <tr>
                                <th>Trạng thái</th>
                                <td><?= $user['status'] ?></td>
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
 		<a href="index.php?mod=users&act=add" class="btn btn-success" title="Thêm tài khoản">Thêm tài khoản</a>

    </div>
    <!-- /.panel-body -->