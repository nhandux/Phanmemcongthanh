<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($account["id"]>0) {
	// -- Bảng phân quyền :)
	$corePrivilegeSlug  = array();
	$corePrivilegeSlug  = corePrivilegeSlug($account["id"]);
	$date               = new DateClass();
	$date_start         = (empty($_POST['date_start'])) ? 0 : strtotime($date->dmYtoYmd($_POST['date_start']));
	$date_end           = (empty($_POST['date_end'])) ? 0 : strtotime($date->dmYtoYmd($_POST['date_end']));

	$status             = isset($_POST['status']) ? ($_POST['status']+0) : 0;

	$member             = isset($_POST['member']) ? ($_POST['member']+0) : 0;

	$query              = $show_date = "";
	$current_time       = strtotime($date->vnOther(time(), 'Y-m-d H:i'));

	$c_query = "";
	$c_personnel = $c_core = array();
	// $c_core = getAgencyToCore($corePrivilegeSlug['op'], '/statistic_jobs;/');
	$c_list = implode(',', $c_core);
	$db->table = "core_user";
	$db->condition = "";
	$db->order = "`sort` ASC";
	$db->limit = "";
	$rows = $db->select();
	if($db->RowCount > 0) {
		foreach($rows as $row) {
			array_push($c_personnel, $row['user_id']);
		}
	}
	if(count($c_personnel)>0) {
		$c_calendar = array();
		$c_personnel = implode(',', $c_personnel);
		$db->table = "calendar_user";
		$db->condition = "`user_id` IN ($c_personnel)";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		if($db->RowCount>0) {
			foreach($rows as $row) {
				array_push($c_calendar, $row['calendar']+0);
			}
		}
		if(count($c_calendar)>0) {
			$c_calendar = implode(',', $c_calendar);
			$c_query = "";
		} else $c_query = "";

	} else $c_query = "";

   
	if($date_start==0 && $date_end==0) {

		$date_qr = strtotime($date->vnOther(time(), 'Y-m-d'));

		$query .= "`created_time` < ($date_qr+86400)";

		$show_date = '<label>' . $date->dateTimeOther($date_qr, 'D, d/m/Y') . '</label>';

	} elseif($date_start!=0 && $date_end == 0) {

		$date_qr = $date_start;

		$query .= " `created_time` > ($date_qr+86400)";

		$show_date = '<label>' . $date->dateTimeOther($date_qr, 'D, d/m/Y') . '</label>';

	} elseif($date_start==0 && $date_end != 0) {

		$date_qr = $date_end;

		$query .= " `created_time` < ($date_qr+86400)";

		$show_date = '<label>' . $date->dateTimeOther($date_qr, 'D, d/m/Y') . '</label>';

	} else {

		$query .= " `created_time` > ($date_start)  AND `created_time` < ($date_end +86400) ";

		$show_date = '(từ) <label>' . $date->dateTimeOther($date_start, 'D, d/m/Y') . '</label> (đến) <label>' . $date->dateTimeOther($date_end, 'D, d/m/Y') . '</label>';
	}

	
  //    if($member != 0){
  //       $listram = array();
  //       $db->table = "exhibition_history";
		// $db->condition = "`creator_id` = $member";
		// $db->order = "";
		// $db->limit = "";
		// $rows = $db->select();
		// foreach ($rows as $row1) {
		// 	array_push($listram, $row1['id_exhibition']);
		// }
		// if($listram != []){
		// 	$listram = array_keys(array_flip($listram));
		// 	$listram = implode(',', $listram);
		// 	$query .= " AND `exhibition_id` IN ($listram)";
		// }else{
		// 	$query .= " AND `exhibition_id` IN ('')";
		// }
  //   }else{
  //      $listram = ""; 
  //   }
?>
	<div class="info-panel-top-ol">
		<p>- Lọc đơn hàng theo lịch: <?php echo $show_date;?></p>
	</div>
	<table class="table display table-bordered" cellspacing="0" cellpadding="0" id="dataTablesList">
		<thead>
		<tr>
			<th>STT</th>
			<th>Nhân viên</th>
			<th>Lập đơn</th>
			<th>Thiết kế</th>
			<th>Xuất kẽm</th>
			<th>In</th>
			<th>Đóng gói</th>
		</tr>
		</thead>
		<tbody>

		<?php
	 
	    if($member == 0){
             $qrc = "";
	    }else{
             $qrc = "`user_id` = $member";
	    }

		if($query=='') $query = $c_query;
		else $query = $c_query .$query;
		$query = $query;


		$db->table = "core_user";
		$db->condition = $qrc;
		$db->order = "";
		$db->limit = "";

		$rows = $db->select();
		$i = 0;
		foreach($rows as $row) {
			$i++;
			?>
				<tr>
					<td align="center"><?php echo $i?></td>
					<td align="center"><?php echo $row['full_name'];?></td>
					<td align="center"><?= getSales('creator_id',$row['user_id'],$query) ?></td>
					<td align="center"><?= getSales('design_id',$row['user_id'],$query) ?></td>
					<td align="center"><?= getSales('offset_id',$row['user_id'],$query) ?></td>
					<td align="center"><?= getSales('printing_id',$row['user_id'],$query) ?></td>
					<td align="center"><?= getSales('packaging_id',$row['user_id'],$query) ?></td>
				
				</tr>
				<?php
		}
		?>
		</tbody>
	</table>
	<script>
		$(document).ready(function() {
			$('#dataTablesList').dataTable( {
				"language": {
					"url": "/js/data-tables/de_DE.txt",
					"decimal": ",",
					"thousands": "."
				},
				
				"paging":   true,
				"info":     true,
				"order": [[ 0, "asc" ]]
			} );
		});
	</script>
<?php
}