<?php
	$title = 'Quản Lý Phản Hồi';
    $isActive = "FeedbackAdmin";
	require_once('mvc/views/blocks/header_admin.php');
?>

<div class="row" style="margin-top: 20px;">
	<div class="col-md-12 table-responsive">
		<h3>Quản Lý Phản Hồi</h3>

		<table class="table table-bordered table-hover" style="margin-top: 20px;">
			<thead>
				<tr>
					<th>STT</th>
					<th>Tên</th>
					<th>SĐT</th>
					<th>Email</th>
					<th>Tên sản phẩm</th>
					<th>Nội Dung</th>
					<th>Ngày Tạo</th>
					<th style="width: 120px"></th>
				</tr>
			</thead>
			<tbody>
<?php
	$countFeedback = count($data["allFeedback"]);
	for($i=0; $i<$countFeedback; $i++) {
		echo '<tr>
					<th>'.$i.'</th>
					<td>'.$data["allFeedback"][$i]['fullname'].'</td>
					<td>'.$data["allFeedback"][$i]['phone_number'].'</td>
					<td>'.$data["allFeedback"][$i]['email'].'</td>
					<td>'.$data["allFeedback"][$i]['title'].'</td>
					<td>'.$data["allFeedback"][$i]['note'].'</td>
					<td>'.$data["allFeedback"][$i]['updated_at'].'</td>
					<td style="width: 50px">';
		if($data["allFeedback"][$i]['status'] == 0) {
			echo '<a href="http://localhost/Laptrinhweb/FeedbackAdmin/updateStatusFeedback/'.$data["allFeedback"][$i]['id'].'"><button class="btn btn-danger">Đã Đọc</button><a/>';
		}	
		echo '</td>
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