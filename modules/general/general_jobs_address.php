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
				<a class="current"><?php echo $menu_op[4][4];?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
if(isset($_POST['idDel'])){

	$idDel = implode(',',$_POST['idDel']);

	$db->table = "jobs_address";
	$db->condition = "jobs_address_id IN (".$idDel.")";
	$db->delete();
}
?>
<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-no-border">
			<a class="btn-add-new" href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'general_jobs_address_add';?>">Thêm địa điểm</a>
			<div class="table-responsive">
				<form action="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][4];?>" method="post" id="_ol_delete">
					<table class="table display table-bordered" cellspacing="0" cellpadding="0" id="dataTablesList">
						<thead>
						<tr>
							<th>STT</th>
							<th>Địa điểm</th>
							<th>Trạng thái</th>
							<th>Chức năng</th>
						</tr>
						</thead>
						<tbody>
						<?php
						$date = new DateClass();

						$db->table = "jobs_address";
						$db->condition = "";
						$db->order = "sort ASC";
						$db->limit = "";
						$db->select();
						$countList = $db->RowCount;

						$totalpages = 0;
						$perpage = 50;
						$total = $db->RowCount;
						if($total%$perpage==0) $totalpages=$total/$perpage;
						else $totalpages = floor($total/$perpage)+1;
						if(isset($_GET["page"])) $page=$_GET["page"]+0;
						else $page=1;
						$start=($page-1)*$perpage;
						$i=0+($page-1)*$perpage;

						$db->table = "jobs_address";
						$db->condition = "";
						$db->order = "sort ASC";
						$db->limit = $start.','.$perpage;
						$rows = $db->select();

						foreach($rows as $row) {
							$i++;
							?>
							<tr>
								<td align="center">
									<?php
									if(in_array("general_jobs_address_edit", $corePrivilegeSlug['op']))
										echo showSort("sort_".$row["jobs_address_id"], $countList, $row["sort"], '90%', 0, $row["jobs_address_id"] , 'jobs_address');
									else
										echo showSort("sort_".$row["jobs_address_id"], $countList, $row["sort"], '90%', 0, $row["jobs_address_id"] , 'jobs_address', 0);
									?>
								</td>
								<td><span class="crop-ol-3w"><?php echo stripslashes($row['title']);?></span></td>
								<td align="center">
									<?php
									if(in_array("general_jobs_address_edit", $corePrivilegeSlug['op'])) {
										echo ($row["is_active"] + 0 == 0) ?
											'<div class="btn-event-close" data-toggle="tooltip" data-placement="top" title="Mở" onclick="edit_status($(this), ' . $row["jobs_address_id"] . ', \'is_active\', \'jobs_address\');" rel="1">0</div>'
											:
											'<div class="btn-event-open" data-toggle="tooltip" data-placement="top" title="Đóng" onclick="edit_status($(this), ' . $row["jobs_address_id"] . ', \'is_active\', \'jobs_address\');" rel="0">1</div>';
									} else {
										echo ($row["is_active"]+0==0)?
											'<div class="btn-event-close ol-alert-core" data-toggle="tooltip" data-placement="top" title="Mở" rel="1">0</div>'
											:
											'<div class="btn-event-open ol-alert-core" data-toggle="tooltip" data-placement="top" title="Đóng" rel="0">1</div>';
									}
									?>
								</td>
								<td class="details-control" align="center">
									<div class="checkbox">
										<a href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'general_jobs_address_edit&id=' . $row['jobs_address_id'];?>"><img data-toggle="tooltip" data-placement="top" title="Chỉnh sửa" src="images/edit.png"></a> &nbsp;
										<label class="checkbox-inline">
											<input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa" class="ol-checkbox-js" name="idDel[]" value="<?php echo $row['jobs_address_id']?>">
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
						<div class="col-sm-6"><?php echo showPageNavigation($page, $totalpages, TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][4].'&page=')?></div>
						<div class="col-sm-6" align="right">
							<label class="radio-inline"><input type="checkbox" id="_ol_select_all"  data-toggle="tooltip" data-placement="top" title="Chọn xóa tất cả" ></label>
							<input type="button" class="btn btn-primary btn-xs <?php if(in_array("general_jobs_address;delete", $corePrivilegeSlug['op'])) echo 'ol-confirm'; else echo "ol-alert-core";?>" value="Xóa" name="_ol_delete">
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
	$(document).ready(function() {
		$('#dataTablesList').dataTable( {
			"language": {
				"url": "/js/data-tables/de_DE.txt",
				"decimal": ",",
				"thousands": "."
			},
			"aoColumnDefs" : [ {
				"bSortable" : false,
				"aTargets" : [3, "no-sort" ]
			} ],
			"paging":   false,
			"info":     false,
			"order": [[ 0, "asc" ]],
			"columns": [
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