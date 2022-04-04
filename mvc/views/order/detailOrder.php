<?php
	$title = 'Thông Tin Chi Tiết Đơn Hàng';
    $isActive = "OrderAdmin";
	require_once('mvc/views/blocks/header_admin.php');
?>

<div class="row" style="margin-top: 20px;">
	<div class="col-md-12">
		<h3>Chi Tiết Đơn Hàng</h3>
	</div>
	<div class="col-md-8 table-responsive">
		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Thumbnail</th>
					<th>Tên Sản Phẩm</th>
					<th>Giá</th>
					<th>Số Lượng</th>
					<th>Tổng Giá</th>
				</tr>
			</thead>
			<tbody>
<?php
	$countDetail = count($data["detailOrder"]);
	for($i=0; $i<$countDetail;$i++) {
		echo '<tr>
					<th>'.$i.'</th>
					<td><img src="'.fixUrl($data["detailOrder"][$i]['thumbnail']).'" style="height: 120px"/></td>
					<td>'.$data["detailOrder"][$i]['title'].'</td>
					<td>'.number_format($data["detailOrder"][$i]['price']).' đ</td>
					<td>'.$data["detailOrder"][$i]['num'].'</td>
					<td>'.number_format($data["detailOrder"][$i]['total_money']).' đ</td>
				</tr>';
	}
?>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<th>Tổng Tiền</th>
					<th><?=number_format($data["orderItem"]['total_money'])?> đ</th>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="col-md-4">
		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<tr>
				<th>Tên: </th>
				<td><?=$data["orderItem"]['fullname']?></td>
			</tr>
			<tr>
				<th>Email: </th>
				<td><?=$data["orderItem"]['email']?></td>
			</tr>
			<tr>
				<th>Địa Chỉ: </th>
				<td><?=$data["orderItem"]['address']?></td>
			</tr>
			<tr>
				<th>Phone: </th>
				<td><?=$data["orderItem"]['phone']?></td>
			</tr>
		</table>
	</div>
</div>
<?php
	require_once('mvc/views/blocks/footer_admin.php');
?>