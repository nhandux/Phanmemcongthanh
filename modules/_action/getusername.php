<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($_POST['value']) {

	$star = array();
	$listuser = array();
 
    $role = $_POST['value'];

 
 	$db->table = "status_role";
		$db->condition = "status  = ".$role;
		$db->order = "";
		$db->limit = "";
	$rows = $db->select();

	foreach ($rows as $row) {
		
		array_push($star, $row['role']);
	}
	$star = implode(',', $star);
	$db->table = "role_user";
	$db->condition = "`role` IN ($star)";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();

    foreach ($rows as $row) {
    	array_push($listuser, $row['user']);
    }
    $listuser = implode(',',$listuser);
?> 
        <select name="member" class="tech2 form-control chaclangu" id="tech3" style="float: left;margin-top:10px;" onchange="ol_filter1('_from_statistic_exhibition', '_statistic_exhibition', 'statistic_exhibiton');">	
		<option value="0" selected data-image="<?= HOME_URL;?>/images/icon-cus.png" >Chọn nhân viên...</span></option>
<?php 
    $db->table = "core_user";
	$db->condition = "`user_id` IN ($listuser)";
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();
	foreach ($rows as $row) {
		?>
          <option value="<?= $row['user_id'] ?>"  data-image="<?= HOME_URL;?>/images/address.png" ><?= $row['full_name']  ?> </option>
		<?php
		}
	echo '</select>';	

}
else{
	?>
	<select name="member" class="tech2 form-control chaclangu" id="tech3" style="float: left;margin-top:10px;" onchange="ol_filter1('_from_statistic_exhibition', '_statistic_exhibition', 'statistic_exhibiton');"">

						<option value="0" selected data-image="<?= HOME_URL;?>/images/icon-cus.png">Chọn nhân viên...</span></option>

						<?php 
                            $db->table = "core_user";
							$db->condition = "";
							$db->order = "`user_id` ASC";
							$db->limit = "";
							$rows = $db->select();
							foreach ($rows as $stat):
						?>
						<option value="<?= $stat['user_id'] ?>" data-image="<?= HOME_URL;?>/images/address.png"><?= $stat['full_name'] ?></option>
						<?php endforeach ?>
					</select>
	<?php
}