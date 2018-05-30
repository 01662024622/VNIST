    <div class="panel-heading">
        Danh Sách Danh Mục
    </div>
    <!-- /.panel-heading -->
    <div class="panel-body">
 		<table id="table"  class="my_table" width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
 			<thead>
 				<tr>
 					<th>ID</th>
 					<th>Name</th>
 					<th>Description</th>
                    <th>Created at</th>
 					<th>Updated at</th>
 					<th>Action</th>
 				</tr>
 			</thead>
 			<tbody>
				<?php 
				foreach ($data as $category) { ?>
 				<tr>
 					<td><?= $category['id'] ?></td>
 					<td><?= $category['name'] ?></td>
 					<td><?= $category['description'] ?></td>
 					<td><?= $category['created_at'] ?></td>
 					<td><?= $category['updated_at'] ?></td>
 					<td>
						<a class='btn btn-primary fa fa-ellipsis-h' href='index.php?mod=categories&act=detail&id=<?= $category['id'] ?>'></a>
						<a class='btn btn-warning fa fa-pencil' href='?mod=categories&act=edit&id=<?= $category['id'] ?>'></a>
						<a class='btn btn-danger delete fa fa-trash'  href='?mod=categories&act=delete&id=<?= $category['id'] ?>'></a>
 					</td>
 				</tr>
				<?php } ?>
 			</tbody>
 		</table>
 		<a href="index.php?mod=categories&act=add" class="btn btn-success" title="Thêm danh mục">Thêm danh mục</a>

    </div>
    <!-- /.panel-body -->