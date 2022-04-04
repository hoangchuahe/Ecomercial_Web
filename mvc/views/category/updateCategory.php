<?php
	$title = 'Quản Lý Danh Mục Sản Phẩm';
	$isActive = "CategoryAdmin";
	require_once('mvc/views/blocks/header_admin.php');
?>

<div class="row" style="margin-top: 20px;">
	<div class="col-md-12" style="margin-bottom: 20px;">
		<h3>Quản Lý Danh Mục Sản Phẩm</h3>
	</div>
	<div class="col-md-6">
		<form method="post" action="http://localhost/Laptrinhweb/CategoryAdmin/doupdateCategoryController">
			<div class="form-group">
			  <label for="usr" style="font-weight: bold;">Sửa tên Danh Mục:</label>
			  <input required="true" type="text" class="form-control" id="usr" name="name" value="<?=$data["name"]?>">
			  <input type="text" name="id" value="<?=$data["id"]?>" hidden="true">
			</div>
			<button class="btn btn-success">Lưu</button>
		</form>
	</div>
</div>

<?php
	require_once('mvc/views/blocks/footer_admin.php');
?>