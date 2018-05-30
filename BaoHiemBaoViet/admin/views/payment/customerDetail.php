


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
        <a class="btn btn-success" href="?mod=payments&act=insertReceipt" title="Thanh Toán">Thanh Toán <?= number_format($_SESSION['sumCart'])." VNĐ"?></a>
        <a class="btn btn-default" style="float: right;" href="?mod=products&act=listCart" title="Back">Back</a>

    </div>
    <!-- /.panel-body -->