<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($_POST['value'] > 0) {

	$star = array();
	$listuser = array();
 
    $role = $_POST['value'];
 	$star = getRoleToStatus($role+0);
	
	$db->table = "role_user";
	$db->condition = "`role` = " . $star;
		$db->order = "";
		$db->limit = "";
		$rows = $db->select();

    foreach ($rows as $row) {
    	array_push($listuser, $row['user']);
    }
    $listuser = implode(',',$listuser);
?> 
        <select name="member" class="tech2 form-control chaclangu" id="tech00" >	
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
