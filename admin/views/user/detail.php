


    <div class="panel-heading">
        Thông tin chi tiết
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
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
		<a class="btn btn-default" style="float: right;" href="index.php" title="Back">Back</a>

    </div>
    <!-- /.panel-body -->