<?php
	$title = 'Quản Lý Sản Phẩm';
    $isActive = "ProductAdmin";
	require_once('mvc/views/blocks/header_admin.php');
?>
<div class="row" style="margin-top: 20px;">
	<div class="col-md-12 table-responsive">
		<h3>Quản Lý Sản Phẩm</h3>

		<a href="http://localhost/Laptrinhweb/ProductAdmin/viewAddProduct"><button class="btn btn-success">Thêm Sản Phẩm</button></a>

		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Thumbnail</th>
					<th>Tên Sản Phẩm</th>
					<th>Giá</th>
					<th>Danh Mục</th>
					<th style="width: 50px"></th>
					<th style="width: 50px"></th>
				</tr>
			</thead>
			<tbody>
<?php
	$countCategory = count($data["allProduct"]);
	for($i=0; $i<$countCategory;$i++) {
		echo '<tr>
					<th>'.($i).'</th>
					<td><img src="'.fixUrl($data["allProduct"][$i]["thumbnail"]).'" style="height: 100px"/></td>
					<td>'.$data["allProduct"][$i]["title"].'</td>
					<td>'.number_format($data["allProduct"][$i]['price']).' VNĐ</td>
					<td>'.$data["allProduct"][$i]['category_name'].'</td>
					<td style="width: 50px">
						<a href="http://localhost/Laptrinhweb/ProductAdmin/viewUpdateProduct/'.$data["allProduct"][$i]["id"].'"><button class="btn btn-warning">Sửa</button></a>
					</td>
					<td style="width: 50px">
					<a href="http://localhost/Laptrinhweb/ProductAdmin/deleteProduct/'.$data["allProduct"][$i]["id"].'"><button class="btn btn-danger">Xoá</button></a>
					</td>
				</tr>';
	}
?>
			</tbody>
		</table>
	</div>
</div>
<?php
	require_once('mvc/views/blocks/footer_admin.php');
?>