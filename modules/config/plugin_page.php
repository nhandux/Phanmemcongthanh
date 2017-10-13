<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
?>

<!-- Menu path -->
<div class="row">
	<div class="col-md-12">
		<ul class="breadcrumbs-alt">
			<li>
				<a href="/"><?php echo $menu_ol[0];?></a>
			</li>
			<li>
				<a><?php echo $menu_ol[4];?></a>
			</li>
			<li>
				<a class="current"><?php echo $menu_op[4][6];?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
if(isset($_POST['update'])) {

	function updateConstant ($constant, $value) {
		global $db;
		$db->table = "constant";
		$data =array(
			'value'=>$db->clearText($value)
		);
		$db->condition = "constant = '".$constant."'";
		$db->update($data);
	}

	$nameConstant = $_POST["name_constant"];
	$countConstant = count($nameConstant);
	$valueConstant = $_POST["value_constant"];
	for($i = 0; $i < $countConstant; $i++) {
		updateConstant($nameConstant[$i],$valueConstant[$i]);
	}
}
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel">
			<div class="panel-heading">
				<i class="fa fa-puzzle-piece fa-fw"></i> Phần bổ sung
				<span class="tools pull-right">
		            <a href="javascript:;" class="fa fa-spinner fa-spin"></a>
		            <a href="javascript:;" class="fa fa-chevron-down"></a>
		            <a href="javascript:;" class="fa fa-eye"></a>
		            <a href="javascript:;" class="fa fa-compress"></a>
		            <a href="javascript:;" class="fa fa-times"></a>
	            </span>
			</div>
			<div class="panel-body">
				<div class="form-responsive row chucnangsaoluu">
					<form action="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][6]?>" method="post" class="form-ol-3w">
					
							<?php
							$db->table = "constant";
							$db->condition = "type = 7";
							$db->order = "sort ASC";
							$db->limit = "";
							$rows = $db->select();

							foreach($rows as $row) {
							?>
							<div class="col-md-12 nh_role">
									<label><?=$row['name']?>:</label>
									<input type="hidden" name="name_constant[]" value="<?=$row['constant']?>" >
									<textarea class="form-control ckeditor" rows="6" style="resize: none;" name="value_constant[]" ><?=stripslashes($row['value'])?></textarea>
							</div>
							<?php
							}
							?>
							<div class="col-md-12 col-sm-12 col-xs-12 chuanutconfig"> 

							<button class="btn btn-round color-1 material-design nuthemmuc"  type="submit" name="update"  style="margin-top: 0px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Lưu thiết lập"><i class="fa fa-save" ></i> <span>Lưu lại</span></button>

							<button class="btn btn-round color-1 material-design nuthemmuc nutlammoi"  type="reset"  style="margin-top: 0px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Làm mới "><i class="fa fa-recycle" ></i> <span>Nhập lại</span></button>

							<button class="btn btn-round color-1 material-design nuthemmuc saoluudulieu"  onclick="location.href='/'"  style="margin-top: 0px;" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thoát khỏi cấu hình"><i class="fa fa-reply" ></i> <span>Thoát</span></button>

							</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>