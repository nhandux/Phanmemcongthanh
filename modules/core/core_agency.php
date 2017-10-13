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
				<a><?php echo $menu_ol[5];?></a>
			</li>
			<li>
				<a class="current"><?php echo $menu_op[5][2];?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
if(isset($_GET['del'])) {
	$del = $_GET['del']+0;
	$dir_dest = ROOT_DIR . DS . 'uploads'. DS .'agency';
	// Lấy id menu cha.
	$parent = 0;
	$db->table = "agency";
	$db->condition = "agency_id = ".$del;
	$db->order = "";
	$rows = $db->select();
	foreach($rows as $row) {
		$parent = $row['parent']+0;
		if(!empty($row['img']) && glob($dir_dest . DS . '*'.$row['img'])) {
			array_map("unlink", glob($dir_dest . DS . '*'.$row['img']));
		}
	}

	// Cập nhật menu con.
	$db->table = "agency";
	$data = array(
		'parent'=>$parent,
		'modified_time'=>time(),
		'user_id'=>$_SESSION["user_id"]
	);
	$db->condition = "parent = ".$del;
	$db->update($data);

	// Xóa csld menu.
	$db->table = "agency";
	$db->condition = "agency_id  = ".$del;
	$db->delete();
}
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-no-border">
			<a class="btn-add-new" href="<?php echo TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . 'core_agency_add&parent=0';?>">Thêm đơn vị</a>
			<div class="table-responsive">
				<table class="table table-manager" cellspacing="0" cellpadding="0" id="dataTablesList">
					<thead>
						<tr>
							<th>Kí hiệu</th>
							<th>Tên</th>
							<th>Sắp xếp</th>
							<th>Trạng thái</th>
							<th>Chức năng</th>
							<th>Nhân viên</th>
						</tr>
					</thead>
					<tbody>
					<?php
					loadMenuCategory($db, 0 , 0);
					?>
					</tbody>
				</table>
			</div>
			<!-- /.table-responsive -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-6 -->
</div>

<?php
/* ***** MODULE MỚI CHỈ HOÀN THIỆN CHO MENU 3 CẤP **** */
/**
 * @param $db
 * @param $level
 * @param $parent
 * @param $category_id
 */
function loadMenuCategory($db, $level, $parent) {
	global  $link_ol,  $link_op, $corePrivilegeSlug;
	$i = $countList = $width = 0;
	$db->table = "agency";
	$db->condition = "parent = " . $parent;
	$db->order = "sort ASC";
	$db->limit = "";
	$rows = $db->select();
	$countList = $db->RowCount;
	foreach($rows as $row) {
		if($parent==0) $width = '90%';
		else $width = '70%';
		?>
		<tr>
			<td align="center"><?php echo stripslashes($row['symbol'])?></td>
			<td style="padding: 0 10px 0 <?php echo $level?>px;"><img src="images/node.png" /> <?php echo stripslashes($row['name'])?></td>
			<?php
			if(in_array("core_agency_edit", $corePrivilegeSlug['op'])) {
			?>
			<td align="right">
				<?php echo showSort("sort_" . $row["agency_id"] . "", $countList, $row["sort"], $width, 0, $row["agency_id"], 'agency', 1); ?>
			</td>
			<td align="center">
				<?php echo ($row["is_active"] + 0 == 0) ?
					'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status($(this), ' . $row["agency_id"] . ', \'is_active\', \'agency\');" rel="1">0</div>'
					:
					'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status($(this), ' . $row["agency_id"] . ', \'is_active\', \'agency\');" rel="0">1</div>'
				?>
			</td>
			<?php
			} else {
			?>
			<td align="right">
				<?php echo showSort("sort_" . $row["agency_id"] . "", $countList, $row["sort"], $width, 0, $row["agency_id"], 'agency', 0); ?>
			</td>
			<td align="center">
				<?php echo ($row["is_active"] + 0 == 0) ?
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
				if ($level < 90){
					?>
					<a href="<?php echo TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . 'core_agency_add&parent=' . $row["agency_id"];?>"><img data-toggle="tooltip" data-placement="left" title="Thêm mục" src="images/add.png"></a>
					&nbsp;
				<?php } else { ?>
					<span style="width: 16px; height: 1px; display: inline-block;""></span>
					&nbsp;
				<?php } ?>
				<a href="<?php echo TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . 'core_agency_edit&id=' . $row["agency_id"];?>"><img data-toggle="tooltip" data-placement="top" title="Chỉnh sửa" src="images/edit.png"></a>
				&nbsp;
				<a class="<?php if(in_array("core_agency;delete", $corePrivilegeSlug['op'])) echo 'ol-confirm'; else echo "ol-alert-core";?>" style="cursor: pointer;" id="<?php echo TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][2] . '&del=' . $row["agency_id"];?>"><img data-toggle="tooltip" data-placement="right" title="Xóa đơn vị" src="images/remove.png"></a>
			</td>
			<td align="center"><a href="<?php echo TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][0] . '&agency=' . $row["agency_id"];?>"><img data-toggle="tooltip" data-placement="top" title="Danh sách nhân viên" src="images/list.png"></a></td>
		</tr>
	<?php
		if ($level < 90){
			loadMenuCategory($db, $level+30, $row["agency_id"]+0);
		}
	}
}
?>
<script>
	$(document).ready(function() {
		$('#dataTablesList').dataTable( {
			"language": {
				"url": "/js/data-tables/de_DE.txt"
			},
			"ordering": false,
			"paging":   false,
			"info":     false
		});
	});
	$(".ol-confirm").click(function() {
		var element = $(this);
		var action = element.attr("id");
		confirm("Tất cả các Dữ liệu liên quan sẽ được xóa và không thể phục hồi.\nMục con của mục này sẽ được đẩy lên một bậc.\nBạn có muốn thực hiện không?", function() {
			if(this.data == true) window.location.href = action;
		});
	});
	$(".ol-alert-core").boxes('alert', 'Bạn không được phân quyền với chức năng này.');
</script>