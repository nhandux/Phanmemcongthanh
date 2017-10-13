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
				<a href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][2];?>"><?php echo $menu_ol[4];?></a>
			</li>
			<li>
				<a href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][2];?>"><?php echo $menu_op[4][2];?></a>
			</li>
			<li>
				<a class="current">Chỉnh sửa điểm</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
//
$matches_id = isset($_GET['id']) ? $_GET['id']+0 : $matches_id+0;
$db->table = "matches";
$db->condition = "matches_id = " . $matches_id;
$db->order = "";
$db->limit = 1;
$db->select();
if($db->RowCount==0) loadPageError("Dữ liệu không tồn tại.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][2]);

include_once (_F_TEMPLATES . DS . "general_matches.php");
if(empty($typeFunc)) $typeFunc = "no";

$stringObj = new String();
$OK = false;
$error = '';
if($typeFunc=='edit'){
	if($number<0) $error = '<span class="show-error">Vui lòng nhập điểm số.</span>';
	else {
		$db->table = "matches";
		$data = array(
			'number'=>$db->clearText($number),
			'is_active'=>$is_active+0,
			'modified_time'=>time(),
			'user_id'=>$_SESSION["user_id"]
		);
		$db->condition = "matches_id = ".$matches_id;
		$db->update($data);
		loadPageSuccess("Đã chỉnh sửa dữ liệu thành công.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][2]);
		$OK = true;
	}
}
else {
	$db->table = "matches";
	$db->condition = "matches_id = ".$matches_id;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$number        		= $row['number']+0;
		$is_active          = $row['is_active']+0;
	}
}
if(!$OK) matchesGeneral(TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'general_matches_edit', "edit", $matches_id, $number, $is_active, $error);