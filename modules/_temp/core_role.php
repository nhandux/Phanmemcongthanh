<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
function grAdmin($act, $typeFunc, $role_id, $name, $comment, array $user, $is_active, $is_show, $error) {
	global  $link_ol,  $link_op;
?>
<div class="row">
	<div class="col-lg-12 col-md-12">
		<div class="panel">
			<div class="panel-heading">
				<i class="fa fa-group fa-fw"></i> Thông tin nhóm
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
			
					<form class="form-ol-3w" action="<?php echo $act?>" method="post">
						<input type="hidden" name="typeFunc" value="<?php echo $typeFunc?>" />
						<input type="hidden" name="role_id" value="<?php echo $role_id?>" />
						<div class="panel-show-error">
							<?php echo $error?>
						</div>
						<div class="col-md-3 col-sm-4 col-xs-12"><label>Tên nhóm:</label></div>
						<div class="col-md-9 col-sm-8 col-xs-12">
						<input class="form-control" type="text" name="name" maxlength="255" value="<?php echo stripslashes($name)?>" required="required" ></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label>Mô tả:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<textarea class="form-control" rows="3" name="comment"><?php echo stripslashes($comment)?></textarea>
								</div>
							
							<div class="col-md-3 col-sm-4 col-xs-12"><label style="line-height: inherit;">Trạng thái:</label></div>
								<div class="col-md-9 col-sm-8 col-xs-12">
									<label class="radio-inline" style="line-height: inherit;"><input type="radio" name="is_active" value="0" <?php echo $is_active==0?"checked":""?> > Đóng</label>
									<label class="radio-inline" style="line-height: inherit;"><input type="radio" name="is_active" value="1" <?php echo $is_active==1?"checked":""?> > Mở</label>
								</div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label style="line-height: inherit;">Hiển thị:</label></div>
								<div class="col-md-9 col-sm-8 col-xs-12">
									<label class="radio-inline" style="line-height: inherit;"><input type="radio" name="is_show" value="0" <?php echo $is_show==0?"checked":""?> > Đóng</label>
									<label class="radio-inline" style="line-height: inherit;"><input type="radio" name="is_show" value="1" <?php echo $is_show==1?"checked":""?> > Mở</label>
								</div>
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
<?php
}

function groupUserSelect(array $id) {
	global $db;
	echo '<select name="user[]" class="selectpicker" multiple data-live-search="true" data-selected-text-format="count" data-live-search-placeholder="Tìm..." title="Chọn nhân viên...">';
	$db->table = "agency";
	$db->condition = "`is_active` = 1 AND `parent` = 0";
	$db->order = "`sort` ASC";
	$db->limit = "";
	$rows_ag = $db->select();
	foreach ($rows_ag as $row_ag) {
		$list_ag = getAgencyElementPlus($row_ag['agency_id']);
		echo '<optgroup label="' . stripslashes($row_ag['symbol']) . ' - ' . stripslashes($row_ag['name']) . '">';
		$db->table = "core_user";
		$db->condition = "`is_active` = 1 AND `agency` IN ($list_ag)";
		$db->order = "`sort` ASC";
		$db->limit = "";
		$rows = $db->select();
		foreach($rows as $row) {
			echo "<option value='".$row["user_id"]."'";
			if (in_array($row["user_id"], $id)) echo " selected ";
			echo ">".stripslashes($row["user_name"]). ' - ' . stripslashes($row["full_name"])."</option>";
		}
		echo '</optgroup>';
	}
	echo '</select>';
}
