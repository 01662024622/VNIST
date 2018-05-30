


    <div class="panel-heading">
        Chi tiết khách hàng
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
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
		<a class="btn btn-default" style="float: right;" href="?mod=customers&act=list" title="Back">Back</a>

    </div>
    <!-- /.panel-body -->