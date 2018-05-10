    <div class="panel-heading">
        Hóa đơn
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
        <table class="table table-hover" style="margin-top: 80px;">
            <tbody>
                <h5>Khách hàng: <?= $_SESSION['curentCustomer']['name'] ?></h5>
                <h5>Email: <?= $_SESSION['curentCustomer']['email'] ?></h5>
                <h5>Số điện thoại: <?= $_SESSION['curentCustomer']['mobile'] ?></h5>
                <h5>Địa chỉ: <?= $_SESSION['curentCustomer']['address'] ?></h5>
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
                    $count=0;
                    foreach ($products as $product_key => $product) { ?>
                    <tr>
                        <td><?= $product['product_code'] ?></td>
                        <td><?= $items[$product_key]['name'] ?></td>
                        <td><?= $items[$product_key]['description'] ?></td>
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
        <h3>Đã thanh toán đủ: <?= number_format($receipt['sum'])." VNĐ" ?></h5>
        <h5>Thu ngân: <?= $_SESSION['account']['name'] ?></h5>
        <h4 class="text-center">Công ty Vô trách nhiệm Vô hạn Một thành viên TÙNG TINH TẾ</h2>
        <h6 class="text-center">Số 2 ngõ Trại Cá, Trương Định, Hà Nội</h4>
        <a href="index.php?mod=products&act=sale" class="btn btn-success" title="Tiếp tục bán hàng">Tiếp tục bán hàng</a>
    </div>
    <!-- /.panel-body -->