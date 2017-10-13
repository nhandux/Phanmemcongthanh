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
				<a><?php echo $menu_ol[3];?></a>
			</li>
			<li>
				<a class="current"><?php echo $menu_op[3][1];?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
if(isset($_POST['idDel'])){

	$idDel = implode(',',$_POST['idDel']);

	$db->table = "core_role";
	$db->condition = "role_id IN (".$idDel.")";
	$db->delete();
}
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-no-border">
			<a class="btn-add-new" href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . 'core_role_add';?>">Thêm nhóm</a>
			<div class="table-responsive">
				<form action="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1];?>" method="post" id="_ol_delete">
					<table class="table display table-bordered" cellspacing="0" cellpadding="0" id="dataTablesList">
						<thead style="border-bottom: 1px solid #ddd;">
						<tr>
							<th>STT</th>
							<th>Tên nhóm</th>
							<th>Trạng thái</th>
							<th>Hiển thị</th>
							<th>Thành viên</th>
							<th>Ngày cập nhật</th>
							<th>Người cập nhật</th>
							<th>Chức năng</th>
						</tr>
						</thead>
						<tbody>
						<?php
						$date = new DateClass();

						$db->table = "core_role";
						$db->condition = "";
						$db->order = "role_id ASC";
						$db->limit = "";
						$db->select();

						$totalpages = 0;
						$perpage = 50;
						$total = $db->RowCount;
						if($total%$perpage==0) $totalpages=$total/$perpage;
						else $totalpages = floor($total/$perpage)+1;
						if(isset($_GET["page"])) $page=$_GET["page"]+0;
						else $page=1;
						$start=($page-1)*$perpage;
						$i=0+($page-1)*$perpage;

						$db->table = "core_role";
						$db->condition = "";
						$db->order = "role_id ASC";
						$db->limit = $start.','.$perpage;
						$rows = $db->select();

						foreach($rows as $row) {
							$i++;
							?>
							<tr>
								<td align="center"><?php echo $i?></td>
								<td><a href="javascript:;" class="btn-popover" title="<?php echo stripslashes($row['name'])?>" rel="<?php echo stripslashes($row['role_id'])?>"><?php echo stripslashes($row['name'])?></a></td>
								<?php
								if(in_array("core_role_edit", $corePrivilegeSlug['op'])) {
								?>
								<td align="center">
									<?php echo ($row["is_active"]+0==0)?
										'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status_core($(this), '.$row["role_id"].', \'is_active\', \'core_role\', \'role\');" rel="1">0</div>'
										:
										'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status_core($(this), '.$row["role_id"].', \'is_active\', \'core_role\', \'role\');" rel="0">1</div>'
									?>
								</td>
								<td align="center">
									<?php echo ($row["is_show"]+0==0)?
										'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status_core($(this), '.$row["role_id"].', \'is_show\', \'core_role\', \'role\');" rel="1">0</div>'
										:
										'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status_core($(this), '.$row["role_id"].', \'is_show\', \'core_role\', \'role\');" rel="0">1</div>'
									?>
								</td>
								<?php
								} else {
								?>
								<td align="center">
									<?php echo ($row["is_active"]+0==0)?
										'<div class="btn-event-close ol-alert-core" data-toggle="tooltip" data-placement="top" title="Mở" rel="1">0</div>'
										:
										'<div class="btn-event-open ol-alert-core" data-toggle="tooltip" data-placement="top" title="Đóng" rel="0">1</div>'
									?>
								</td>
								<td align="center">
									<?php echo ($row["is_show"]+0==0)?
										'<div class="btn-event-close ol-alert-core" data-toggle="tooltip" data-placement="top" title="Mở" rel="1">0</div>'
										:
										'<div class="btn-event-open ol-alert-core" data-toggle="tooltip" data-placement="top" title="Đóng" rel="0">1</div>'
									?>
								</td>
								<?php
								}
								?>
								<td align="center">
									<?php
									$db->table = "role_user";
									$db->condition = "role = ".($row["role_id"]+0);
									$db->order = "";
									$db->limit = "";
									$db->select();
									echo '<a href="javascript:;" class="btn-popover" title="' . stripslashes($row['name']) . '" rel="' . stripslashes($row['role_id']) .'">' . formatNumberVN($db->RowCount+0) . '</a>';
									?>
								</td>
								<td align="center"><?php echo $date->vnDateTime($row['modified_time'])?></td>
								<td align="center"><?php echo getUserName($row['user_id']);?></td>
								<td class="details-control" align="center">
									<div class="checkbox">
										<a href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . 'core_role_edit&id=' . $row['role_id'];?>"><img data-toggle="tooltip" data-placement="top" title="Chỉnh sửa" src="images/edit.png"></a> &nbsp;
										<label class="checkbox-inline">
											<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa" class="ol-checkbox-js" name="idDel[]" value="<?php echo $row['role_id']?>">
										</label>
										<a href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . 'core_dashboard&id=' . $row['role_id'];?>"><img data-toggle="tooltip" data-placement="top" title="Quyền quản trị" src="images/list.png"></a>
									</div>
								</td>
							</tr>
						<?php
						}
						?>
						</tbody>
					</table>
					<div class="row">
						<div class="col-sm-6"><?php echo showPageNavigation($page, $totalpages, TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1].'&page=')?></div>
						<div class="col-sm-6" align="right" style="padding:15px;">
							<label class="radio-inline"><input type="checkbox" id="_ol_select_all"  data-toggle="tooltip" data-placement="top" title="Chọn xóa tất cả" ></label>
							
							<input type="button" class="btn color-1 material-design nuthemmuc saoluudulieu <?php if(in_array("core_role;delete", $corePrivilegeSlug['op'])) echo 'ol-confirm'; else echo "ol-alert-core";?>" value="Xóa nhóm" name="_ol_delete" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Xóa dòng dữ liệu" style="margin-top: 0px;">
							

						</div>
					</div>
				</form>
			</div>
			<!-- /.table-responsive -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-6 -->
</div>
<script>
	$('.btn-popover').popover({
		placement: 'bottom',
		content:  function () {
			var id = $(this).attr('rel');
			return open_popover('role', id);
		},
		trigger: 'focus',
		html: true
	});
</script>
<script>
	$(document).ready(function() {
		$('#dataTablesList').dataTable( {
			"language": {
				"url": "/js/data-tables/de_DE.txt",
				"decimal": ",",
				"thousands": "."
			},
			"aoColumnDefs" : [ {
				"bSortable" : false,
				"aTargets" : [7, "no-sort" ]
			} ],
			"paging":   false,
			"info":     false,
			"order": [[ 0, "asc" ]]
		} );
	});
	$(".ol-confirm").click(function() {
		confirm("Tất cả các dữ liệu liên quan sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {
			if(this.data == true) document.getElementById("_ol_delete").submit();
		});
	});
	$(".ol-alert-core").boxes('alert', 'Bạn không được phân quyền với chức năng này.');
</script>