<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
function document_typeGeneral($act, $typeFunc, $document_type_id, $title, $slug, $is_active, $error) {
	global  $link_ol,  $link_op;
?>
<div class="row">
	<div class="col-lg-7 col-md-10">
		<div class="panel">
			<div class="panel-heading">
				<i class="fa fa-gear fa-fw"></i> Nội dung loại văn bản
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
					<form action="<?php echo $act?>" method="post" class="form-xs-10">
						<input type="hidden" name="typeFunc" value="<?php echo $typeFunc?>" />
						<input type="hidden" name="document_type_id" value="<?php echo $document_type_id?>" />
						<div class="panel-show-error">
							<?php echo $error?>
						</div>
						<table class="table table-no-border table-hover">
							<tr>
								<td><label>Tên loại:</label></td>
								<td><input class="form-control" type="text" id="name" name="title" value="<?php echo stripslashes($title)?>" maxlength="200" required="required"></td>
							</tr>
							<tr>
								<td><label>Tên xử lý:</label></td>
								<td class="element-relative">
									<input class="form-control" type="text" id="slug" name="slug" maxlength="255" value="<?=stripslashes($slug)?>" >
									<div data-toggle="tooltip" data-placement="top" title="Tạo liên kết tĩnh" class="btn-get-slug" onclick="return getSlugOther()"></div>
								</td>
							</tr>
							<tr>
								<td><label>Trạng thái:</label></td>
								<td>
									<label class="radio-inline"><input type="radio" name="is_active" value="0" <?php echo $is_active==0?"checked":""?> > Đóng</label>
									<label class="radio-inline"><input type="radio" name="is_active" value="1" <?php echo $is_active==1?"checked":""?> > Mở</label>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="form-ol-btn-tzc">
									<button type="submit" class="btn btn-primary" id="user">Lưu lại</button> &nbsp;
									<button type="reset" class="btn btn-warning">Nhập lại</button> &nbsp;
									<button type="button" class="btn btn-danger" onclick="location.href='<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][5];?>'">Thoát</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<?php
}

function sortDocument_type(){
	global $db;
	$db->table = "document_type";
	$db->condition = "";
	$db->order = "";
	$db->limit = "";
	$db->select();
	return $db->RowCount;
}