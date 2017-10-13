<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
function agencyCore($act, $typeFunc, $agency_id, $code, $symbol, $name, $address, $phone, $email, $parent, $img, $is_active, $error) {
	global $link_ol,  $link_op;
?>
<div class="row">
	<div class="col-lg-7 col-md-10">
		<div class="panel">
			<div class="panel-heading">
				<i class="fa fa-info fa-fw"></i> Thông tin đơn vị
				<span class="tools pull-right">
		            <a href="javascript:;" class="fa fa-spinner fa-spin"></a>
		            <a href="javascript:;" class="fa fa-chevron-down"></a>
		            <a href="javascript:;" class="fa fa-eye"></a>
		            <a href="javascript:;" class="fa fa-compress"></a>
		            <a href="javascript:;" class="fa fa-times"></a>
	            </span>
			</div>
			<div class="panel-body">
				<div class="form-responsive">
					<form class="form-ol-3w" action="<?php echo $act?>" method="post" enctype="multipart/form-data">
						<input type="hidden" name="typeFunc" value="<?php echo $typeFunc?>" />
						<input type="hidden" name="agency_id" value="<?php echo $agency_id?>" />
						<input type="hidden" name="img" value="<?php echo $img?>" />
						<input type="hidden" name="code" value="<?php echo $code?>" />
						<div class="panel-show-error">
							<?php echo $error?>
						</div>
						<table class="table table-no-border table-hover">
							<tr>
								<td width="150px"><label class="form-lb-tp">Kí hiệu:</label></td>
								<td><input class="form-control" type="text" name="symbol" maxlength="10" value="<?php echo stripslashes($symbol)?>" required="required"></td>
							</tr>
							<tr>
								<td><label class="form-lb-tp">Tên đơn vị:</label></td>
								<td><input class="form-control" type="text" name="name" maxlength="255" value="<?php echo stripslashes($name)?>" required="required"></td>
							</tr>
							<tr>
								<td class="ver-top"><label class="form-lb-tp">Hình đại diện:</label></td>
								<td>
									<input class="form-control file file-img" type="file" name="img" data-show-upload="false" data-max-file-count="1" accept="image/*">
								</td>
							</tr>
							<tr>
								<td><label class="form-lb-tp">Địa chỉ:</label></td>
								<td><input class="form-control" type="text" name="address" maxlength="255" value="<?php echo stripslashes($address)?>" required="required"></td>
							</tr>
							<tr>
								<td><label class="form-lb-tp">Số điện thoại:</label></td>
								<td><input class="form-control" type="text" name="phone" maxlength="20" value="<?php echo stripslashes($phone)?>"></td>
							</tr>
							<tr>
								<td><label class="form-lb-tp">E-mail:</label></td>
								<td><input class="form-control" type="text" name="email" maxlength="255" value="<?php echo stripslashes($email)?>"></td>
							</tr>
							<tr>
								<td><label class="form-lb-tp">Đơn vị cấp trên:</label></td>
								<td><?php echo parentAgency($parent, $typeFunc);?></td>
							</tr>
							<tr>
								<td><label class="form-lb-tp">Trạng thái:</label></td>
								<td>
									<label class="radio-inline"><input type="radio" name="is_active" value="0" <?php echo $is_active==0?"checked":""?>> Đóng</label>
									<label class="radio-inline"><input type="radio" name="is_active" value="1" <?php echo $is_active==1?"checked":""?>> Mở</label>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="form-ol-btn-tzc">
									<button type="submit" class="btn btn-primary">Lưu lại</button> &nbsp;
									<button type="reset" class="btn btn-warning">Nhập lại</button> &nbsp;
									<button type="button" class="btn btn-danger" onclick="location.href='<?php echo TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][2];?>'">Thoát</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$('.file-img').fileinput({
		<?php if($img!='no' && $img!='') { ?>
		initialPreview: [
			"<img src='../uploads/agency/<?php echo $img?>' class='file-preview-image' title='<?php echo $img?>' alt='<?php echo $img?>'>"
		],
		<?php } ?>
		allowedFileExtensions : ['jpg', 'png','gif']
	});
</script>
<?php
}

/**
 * @param $id
 * @param $par
 */
function parentAgency($par, $type) {
	global $db;
	$disabled = '';
	if($type=='edit') $disabled = 'disabled';
	echo '<select class="form-control" name="parent" ' . $disabled . ' required>';
	if($par==0) {
		echo '<option value="0" selected>[Corp.] - TỔNG CÔNG TY</option>';
	} else {
		echo '<option value="0">[Corp.] - TỔNG CÔNG TY</option>';
	}
	loadItemAgency($db, 0, 0, $par);
	echo '</select>';

}

/**
 * @param $db
 * @param $level
 * @param $parent
 * @param $category_id
 * @param $par
 */
function loadItemAgency($db, $level, $parent, $par){
	$space = '';
	$db->table = "agency";
	$db->condition = "parent = ".$parent;
	$db->order = "sort ASC";
	$db->limit = "";
	$rows = $db->select();
	foreach($rows as $row) {
		$space = '--';
		for($i=0; $i<$level; $i++) {
			$space = $space . '--';
		}
		if ($level < 3){
			echo '<option value="' . $row["agency_id"] . '"';
			if ($par==$row["agency_id"]) echo " selected ";
			echo '>' . $space . '| ' . stripslashes($row["name"]) . '</option>';
			loadItemAgency($db, $level+1, $row["agency_id"]+0, $par);
		}
	}
}

/**
 * @param $id
 * @param $parent
 * @return mixed
 */
function sortAcs($parent){
	global $db;
	$db->table = "agency";
	$db->condition = "parent = ".($parent+0);
	$db->limit = "";
	$db->select();
	return $db->RowCount;
}
