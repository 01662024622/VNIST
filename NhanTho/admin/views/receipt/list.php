    <div class="panel-heading">
        Danh sách hóa đơn
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
 		<table id="table"  class="my_table" width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
 			<thead>
 				<tr>
 					<th>ID</th>
                    <th>Mã hóa đơn</th>
 					<th>Mã khách hàng</th>
 					<th>Mã nhân viên</th>
 					<th>Thời điểm tạo</th>
 					<th>Tổng hóa đơn</th>
 					<th>Action</th>
 				</tr>
 			</thead>
 			<tbody>
				<?php 
				foreach ($data as $receipt_key => $receipt) { ?>
 				<tr>
 					<td><?= $receipt['id'] ?></td>
                    <td><?= $receipt['code'] ?></td>
                    <td><?= $receipt['customer_id'] ?></td>
 					<td><?= $receipt['staff_id'] ?></td>
 					<td><?= $receipt['date'] ?></td>
 					<td><?= number_format($receipt['sum'])." VNĐ" ?></td>
 					<td>
                        <button  type="button" class="btn btn-primary fa fa-ellipsis-h" data-toggle="modal" data-target=".modal_<?= $receipt_key ?>"></button>
						<a class='btn btn-success fa fa-print' href='#'></a>
 					</td>
 				</tr>

				<?php } ?>
 			</tbody>
 		</table>
        
            <?php 
            foreach ($data as $receipt_key => $receipt) { ?>
            <!-- Modal -->
            <div class="modal fade modal_<?= $receipt_key ?>" role="dialog">
              <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Chi tiết hóa đơn</h4>
                  </div>
                  <div class="modal-body">
                    <table class="table table-hover" style="margin-top: 50px;">
                        <tbody>
                            <!-- <h5>Khách hàng: <?= $customerName[$receipt_key]['name'] ?></h5>
                            <h5>Email: <?= $customerName[$receipt_key]['email'] ?></h5>
                            <h5>Số điện thoại: <?= $customerName[$receipt_key]['mobile'] ?></h5>
                            <h5>Địa chỉ: <?= $customerName[$receipt_key]['address'] ?></h5> -->
                            <tr>
                                <th colspan="3">Mã hóa đơn: <?= $receipt['code'] ?></th>
                                <th colspan="3">Ngày : <?= $receipt['date'] ?></th>
                            </tr>
                            <tr>
                                <th>Mã sản phẩm</th>
                                <th>Tên sản phẩm</th>
                                <th>Mô tả</th>
                                <th>Giá</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                            </tr>
                            <?php 
                                /*$detail=array();
                                $item=array();
                                $detail[$receipt_key]=$this->ReceiptDetail_model->getDetail($receipt['code']);*/
                                $count=0;
                                foreach ($detail[$receipt_key] as $product_key => $product) {
                                    /*$item[$receipt_key][$product_key]=$this->Product_model->getByCode($product['product_code']);*/?>
                                <tr>
                                    <td><?= $product['product_code'] ?></td>
                                    <td><?= $item[$receipt_key][$product_key]['name'] ?></td>
                                    <td><?= $item[$receipt_key][$product_key]['description'] ?></td>
                                    <td><?= number_format($product['price'])." VNĐ" ?></td>
                                    <td><?= $product['quantity'] ?></td>
                                    <td><?= number_format($product['quantity']*$product['price'])." VNĐ" ?></td>
                                </tr>

                            <?php $count+=$product['quantity']; } ?>
                                <tr>
                                    <td colspan="3"></td>
                                    <td>Cộng</td>
                                    <td><?= $count ?></td>
                                    <td><?= number_format($receipt['sum'])." VNĐ" ?></td>
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