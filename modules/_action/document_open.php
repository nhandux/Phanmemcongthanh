<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['open'])) {
	$type   = $_POST['type'];
	$id     = $_POST['id']+0;
	$date   = new DateClass();
	if($type=='document') {
		$db->table = "document";
		$db->condition = "`document_id` = $id";
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select();
		foreach($rows as $row) {
			?>
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel"><i class="fa fa-file-word-o" data-toggle="tooltip" data-placement="top" title="Nôi dung văn bản"></i> &nbsp;Xem nội dung văn bản</h4>
					</div>
					<div class="modal-body">
						<div class="form-responsive">
							<div class="item-1">
								<table class="table table-no-border table-ol-3w table-hover" style="max-width: 650px;">
									<tr>
										<td width="120px"><label class="form-lb-tp">Tên văn bản:</label></td>
										<td colspan="3"><label><?php echo stripslashes($row['title']);?></label></td>
									</tr>
									<tr>
										<td><label class="form-lb-tp">Ngày ban hành:</label></td>
										<td colspan="3"><label><?php echo $date->vnDate($row['date_issued']);?></label></td>
									</tr>
									<tr>
										<td><label class="form-lb-tp">Trích yếu:</label></td>
										<td colspan="3"><?php echo stripslashes($row['comment']);?></td>
									</tr>
									<tr>
										<td><label class="form-lb-tp">Têp đính kèm:</label></td>
										<td colspan="3">
											<?php
											if(file_exists(ROOT_DIR  . DS . 'uploads' . DS . 'document' . DS . $row['file']) && ($row['file']!='')) echo '<a target="_blank" href="' . HOME_URL . '/uploads/document/' . $row['file'] . '" data-toggle="tooltip" data-placement="top" title="Tải tệp xuống"><i class="fa fa-paperclip fa-lg"></i> (Tải xuống)</a>';
											else echo '&nbsp;';
											?>
										</td>
									</tr>
									<tr>
										<td><label class="form-lb-tp">Nội dung:</label></td>
										<td colspan="3">&nbsp;</td>
									</tr>
									<tr><td colspan="4" style="background-color: #f4f4f4; padding: 10px 20px;"><?php echo stripslashes($row['content']);?></td></tr>
								</table>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<a href="<?php echo TTH_PATH_LK . 'document' . TTH_PATH_OP_LK . 'document_edit&id=' . $row['document_id'];?>" class="btn btn-pink btn-sm">Chỉnh sửa</a>
						<input type="button" class="btn btn-danger btn-sm" onclick="return open_document('delete', <?php echo  $row['document_id'];?>);" value="Xóa việc">
						<input type="button" class="btn btn-warning btn-sm" data-dismiss="modal" value="Đóng">
					</div>
				</div>
			</div>
			<?php
		}
	} elseif($type=='delete') {
		$db->table = "document";
		$db->condition = "`document_id` = $id";
		$db->delete();
		if($db->AffectedRows > 0) return true;
		else return false;
	}
} else echo 'Error--';