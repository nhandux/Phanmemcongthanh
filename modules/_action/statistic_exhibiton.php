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
	
	$startotal          = isset($_POST['startotal']) ? ($_POST['startotal']+0) : 0;

	$endtotal           = isset($_POST['endtotal']) ? ($_POST['endtotal']+0) : 0;

	$custion     	    = isset($_POST['name_customer']) ? ($_POST['name_customer']) : "";
    
    $cusarray    = array();

	$queryCustom = "";

	


	$query              = $show_date = "";

	$current_time       = strtotime($date->vnOther(time(), 'Y-m-d H:i'));

	$c_query = "";

	$c_personnel = $c_core = array();

	$c_core = getAgencyToCore($corePrivilegeSlug['op'], '/statistic_exhibition;/');

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
		$show_date = 'Thời gian, ngày <strong>' . $date->vnDate($date_qr) . '</strong>';
	} elseif($date_start!=0 && $date_end == 0) {
		$date_qr = $date_start;
		$query .= "`created_time` > ($date_qr)";
		$show_date = 'Thời gian, ngày <strong>' . $date->vnDate($date_qr) . '</strong>';
	} elseif($date_start==0 && $date_end != 0) {
		$date_qr = $date_end;
		$query .= "`created_time` < ($date_qr+86400)";
		$show_date = 'Thời gian, ngày <strong>' . $date->vnDate($date_qr) . '</strong>';
	} else {
		$query .= " `created_time` > ($date_start) AND `created_time` < ($date_end+86400)";
		$show_date = 'Thời gian, từ ngày <strong>' . $date->vnDate($date_start) . '</strong> đến ngày <strong>' . $date->vnDate($date_end) . '</strong>';
	}

	if($status != 0)
	$query .= " AND status = $status";
    if($startotal != 0  && $endtotal != 0){
    $query .= " AND ($startotal+0) < `money_undiscounted` AND `money_undiscounted`  < ($endtotal+0) ";
    }elseif($startotal != 0  && $endtotal != 0){
    $query .= " AND  `money_undiscounted` > $startotal";
    }
    elseif($startotal == 0 && $endtotal != 0)
    {
    $query .= " AND `money_undiscounted` < ($endtotal + 0)";
    }
    if($member != 0){
        $listram = array();
        $db->table = "exhibition_history";
		$db->condition = "`creator_id` = $member";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
		foreach ($rows as $row1) {
			array_push($listram, $row1['id_exhibition']);
		}
		if($listram != []){
			$listram = array_keys(array_flip($listram));
			$listram = implode(',', $listram);
			$query .= " AND `exhibition_id` IN ($listram)";
		}else{
			$query .= " AND `exhibition_id` IN ('')";
		}
    }else{
       $listram = ""; 
    }

    if($custion != "")

    {
    	$db->table="customer";
			$db->condition = "company_name like '%".$custion."%' OR full_name like '%".$custion."%'";
			$db->order = "";
			$db->limit = "";
			$row2s = $db->select();
			if($row2s != []){
			foreach ($row2s as $row) {
				array_push($cusarray, $row['customer_id']+0);
			}
			    $cusarray = implode(',', $cusarray);

			    $queryCustom = " AND `customer_id` IN ($cusarray)";
			}
			else  $queryCustom = " AND `customer_id` IN ('')";
    }

    else{
    	$queryCustom = "";
    }
    
	?>
	<div class="info-panel-top-ol">
		<p>- Lọc đơn hàng theo lịch: <?php echo $show_date;?></p>
	</div>
	<table class="table display table-bordered" cellspacing="0" cellpadding="0" id="dataTablesList">
		<thead>
		<tr>
			<th>STT</th>
			<?php if($cusarray == []){ ?>
			<th>Mã đơn hàng</th>
			<?php }else{ ?>
			<th>Khách hàng</th>
			<?php } ?>
			<th>Trạng thái</th>
			<th>Tổng giá trị</th>
			<th>Nhân viên thực hiện</th>
			<th>Ngày lập đơn</th>
			<th>Ngày gửi hàng</th>
		</tr>
		</thead>
		<tbody>
		<?php
	
		if($query=='') $query = $c_query;
		else $query = $c_query .$query;
		$query = $query;

		$db->table = "exhibition";
		$db->condition = $query.$queryCustom;
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();

		$i = 0; $tt = 0 ; $dt = 0 ; $cn = 0 ; $mn = 0 ; $gg = 0;

		foreach($rows as $row) {
       
        $tt += $row['money_undiscounted'];

        $dt += ($row['prepayment'] + $row['payment_2'] + $row['payment_3']);

        $cn += $row['debtor'];

        $mn += $row['into_money'];

        $gg += $row['discount'];
        
        $id_us = getLevelRow($row['exhibition_id']);
       
		$i++;

			?>
				<tr>
					<td align="center"><?php echo $i?></td>
					<?php if($cusarray == []){ ?>
					<td><?php echo $row['code']; ?></td>
					<?php
					 }else{
					?>
                      <td><?php $info_customer = getInfoCustomer($row['customer_id']+0); echo $info_customer[0]  ?></td>
					<?php 
					} 
					?>
					<td align="center"><?php echo  getVaStatus($row['status']);?></td>
					

					<td><?php echo number_format($row['money_undiscounted'],'0','','.') ?> VNĐ</td>
					<td align="center"><?= getNameRow($id_us) ?></td>
					<td align="center"><?php echo $date->vnDateTime($row['created_time']);?></td>
					<td align="center"><?php echo $date->vnDateTime($row['date_end']);?></td>
				
				</tr>
		<?php

			}

		?>
		
		</tbody>
	</table>

	<div class="info-panel-top-ol">
		<p>- Tổng doanh thu: <?php echo $show_date;?></p>
	</div>

	<table class="table display table-bordered" cellspacing="0" cellpadding="0"  id="dataTablesList1" style="margin-bottom: 0px !important;">
		<thead>
		<tr>
			<th width="50px" align="center">STT</th>
			<th>Loại</th>
			<th>Tổng tiền</th>
		</tr>
		</thead>
		<tbody>
		<tr>
			<td align="center">1</td>
			<td>Tổng số đơn hàng tạo</td>
			<td><?php echo $i?> Đơn hàng</td>
		</tr>
		<tr>
			<td align="center">2</td>
			<td>Tổng số tiền chiết khấu</td>
			<td><?php echo number_format($mn,'0','','.') ?> VNĐ</td>
		</tr>
		<tr>
			<td align="center">3</td>
			<td>Tổng số tiền Chưa chiết khấu</td>
			<td><?php echo number_format($tt,'0','','.') ?> VNĐ</td>
		</tr>
		<tr>
			<td align="center">4</td>
			<td>Tổng số tiền đã trả</td>
			<td><?php echo number_format($dt,'0','','.') ?> VNĐ</td>
		</tr>
		<tr>
			<td align="center">5</td>
			<td>Tổng tiền chiết khấu</td>
			<td><?php echo number_format($gg,'0','','.') ?> VNĐ</td>
		</tr>
		<tr>
			<td align="center">6</td>
			<td>Tổng số tiền còn nợ</td>
			<td><?php echo number_format($cn,'0','','.') ?> VNĐ</td>
		</tr>
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
				paging:   true,
				info:     true,
				order: [[ 0, "asc" ]],
				dom: 'Bfrtip',
		        buttons: [
		            'copy', 'csv', 'excel', 'pdf', 'print'
		        ],
		
			} );

			$('#dataTablesList1').dataTable( {

				"language": {
					"url": "/js/data-tables/de_DE.txt",
					"decimal": ",",
					"thousands": "."
				},
				paging:   false,
				info:     false,
				searching: false,
				order: [[ 0, "asc" ]],
				
			} );

		});
	</script>
<?php
}