<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$query      = "";
$pg_agency  = "";
$bc_agency  = "";

function breadcrumbsAgency($id) {
	global $db, $link_ol, $link_op, $menu_op;
	$result = '';
	$parent = $id;

	while($parent != 0) {
		$db->table = "agency";
		$db->condition = "`agency_id` =  $parent";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		if ($db->RowCount > 0) {
			foreach ($rows as $row) {
				$parent = ($row['parent']+0);
				$result = '<li><a href="' . TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][2] . '">' . stripslashes($row['name']) . '</a></li>' . $result;
			}
		} else $parent = 0;
	}

	return $result;
}
?>
<!-- Menu path -->
<div class="row">
	<div class="col-md-12">
		<ul class="breadcrumbs-alt">
			<li>
				<a href="/"><?php echo $menu_ol[0];?></a>
			</li>
			<li>
				<a><?php echo $menu_ol[5];?></a>
			</li>
			<?php echo $bc_agency;?>
			<li>
				<a class="current"><?php echo $menu_op[5][0];?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
if(isset($_POST['idDel'])){
	$dir_dest = ROOT_DIR . DS .'uploads'. DS . 'user';

	$idDel = implode(',',$_POST['idDel']);

	$db->table = "core_user";
	$db->condition = "user_id IN (".$idDel.")";
	$db->order = "";
	$rows = $db->select();
	foreach($rows as $row) {
		if(!empty($row['img']) && glob($dir_dest . DS . '*'.$row['img'])) {
			array_map("unlink", glob($dir_dest . DS . '*'.$row['img']));
		}
	}

	$db->table = "core_user";
	$db->condition = "user_id IN (".$idDel.")";
	$db->delete();
        $db->table = "role_user";
	$db->condition = "user IN (".$idDel.")";
	$db->delete();
}
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-no-border">
			<a class="btn-add-new" href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . 'core_user_add'. $pg_agency;?>">Thêm thành viên</a>
			<div class="table-responsive">
				<form action="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][0];?>" method="post" id="_ol_delete">
					<table class="table display table-bordered" cellspacing="0" cellpadding="0" id="dataTablesList">
						<thead style="border-bottom: 1px solid #ddd;">
							<tr>
								<th>STT</th>
								<th>Tài khoản</th>
								<th>Họ và tên</th>
								<th>Trạng thái</th>
								<th>Hiển thị</th>
								<th>Sắp xếp</th>
								<!-- <th>&nbsp;</th> -->
								<th>Ngày tạo</th>
								<th>Chức năng</th>
							</tr>
						</thead>
						<tbody>

						<?php
						$date = new DateClass();
						$countList = 0;
						$db->table = "core_user";
						$db->condition = "";
						$db->order = "`sort` DESC";
						$db->limit = 1;
						$rows_C = $db->select();
						foreach($rows_C as $row_C) {
							$countList = $row_C['sort'];
						}

						$db->table = "core_user";
						$db->condition = $query;
						$db->order = "sort ASC";
						$db->limit = "";
						$db->select();
						$total = $db->RowCount;

						$totalpages = 0;
						$perpage = 50;
						if($total%$perpage==0) $totalpages=$total/$perpage;
						else $totalpages = floor($total/$perpage)+1;
						if(isset($_GET["page"])) $page=$_GET["page"]+0;
						else $page=1;
						$start=($page-1)*$perpage;
						$i=0+($page-1)*$perpage;

						$db->table = "core_user";
						$db->condition = $query;
						$db->order = "sort ASC";
						$db->limit = $start.','.$perpage;
						$rows = $db->select();

						foreach($rows as $row) {
							$i++;
							?>
							<tr>
								<td align="center"><?php echo $i?></td>
								<td><a href="javascript:;" class="btn-popover" title="<?php echo stripslashes($row['full_name'])?>" rel="<?php echo stripslashes($row['user_id'])?>"><?php echo stripslashes($row['user_name'])?></a></td>
								<td><?php echo stripslashes($row['full_name']);?></td>
								<?php
								if(in_array("core_user_edit", $corePrivilegeSlug['op'])) {
								?>
								<td align="center">
									<?php echo ($row["is_active"]+0==0)?
										'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status_core($(this), '.$row["user_id"].', \'is_active\', \'core_user\', \'user\');" rel="1">0</div>'
										:
										'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status_core($(this), '.$row["user_id"].', \'is_active\', \'core_user\', \'user\');" rel="0">1</div>'
									?>
								</td>
								<td align="center">
									<?php echo ($row["is_show"]+0==0)?
											'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status_core($(this), '.$row["user_id"].', \'is_show\', \'core_user\', \'user\');" rel="1">0</div>'
											:
											'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status_core($(this), '.$row["user_id"].', \'is_show\', \'core_user\', \'user\');" rel="0">1</div>'
									?>
								</td>
								<td align="center">
									<?php echo showSortUser("sort_".$row["user_id"]."", $countList, $row["sort"], $row["user_id"] ,'core_user');?>
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
								<td align="center">
									<?php echo showSortUser("sort_".$row["user_id"]."", $countList, $row["sort"], $row["user_id"] ,'core_user' , 0);?>
								</td>
								<?php
								}
								?>
								<!-- <td align="center">&nbsp;</td> -->
								<td align="center"><?php echo $date->vnDateTime($row['created_time'])?></td>
								<td class="details-control" align="center">
									<div class="checkbox">

										<a href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . 'core_user_edit&id=' .$row['user_id'];?>"><img data-toggle="tooltip" data-placement="top" title="Chỉnh sửa" src="images/edit.png"></a> &nbsp;

										<label class="checkbox-inline">
											<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa" class="ol-checkbox-js" name="idDel[]" value="<?php echo $row['user_id']?>">
										</label>
									</div>
								</td>
							</tr>
						<?php
						}
						?>
						</tbody>
					</table>
					<div class="row">
						<div class="col-sm-6"><?php echo showPageNavigation($page, $totalpages, TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][0] . $pg_agency . '&page=')?></div>
						<div class="col-sm-6" align="right" style="padding:15px;">
							<label class="radio-inline"><input type="checkbox" id="_ol_select_all"  data-toggle="tooltip" data-placement="top" title="Chọn xóa tất cả" ></label>
							
							<input type="button" class="btn color-1 material-design nuthemmuc  saoluudulieu  <?php if(in_array("core_role;delete", $corePrivilegeSlug['op'])) echo 'ol-confirm'; else echo "ol-alert-core";?>" value="Xóa nhóm" name="_ol_delete" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Xóa dòng dữ liệu" style="margin-top: 0px;">
							

						</div>
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
			return open_popover('user', id);
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
			"order": [0, "asc" ],
			"columns": [
				null,
				null,
				null,
				null,
				{ "orderDataType": "dom-select" },
				null,
				null,
				null
			]
		} );

	});
	$(".ol-confirm").click(function() {
		confirm("Tất cả các dữ liệu liên quan sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {
			if(this.data == true) document.getElementById("_ol_delete").submit();
		});
	});
	$(".ol-alert-core").boxes('alert', 'Bạn không được phân quyền với chức năng này.');
</script>