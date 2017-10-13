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
				<a class="current">Thêm điểm</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
include_once (_F_TEMPLATES . DS . "general_matches.php");
if(empty($typeFunc)) $typeFunc = "no";

$stringObj = new String();
$OK = false;
$error = '';
if($typeFunc=='add'){
	if($number<0) $error = '<span class="show-error">Vui lòng nhập điểm số.</span>';
	else {
		$db->table = "matches";
		$data = array(
			'number'=>$db->clearText($number),
			'sort'=>sortMatches()+1,
			'is_active'=>$is_active+0,
			'created_time'=>time(),
			'modified_time'=>time(),
			'user_id'=>$_SESSION["user_id"]
		);
		$db->insert($data);
		loadPageSuccess("Đã thêm dữ liệu thành công.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][2]);
		$OK = true;
	}
}
else {
	$number              = "";
	$is_active		    = 1;
}
if(!$OK) matchesGeneral(TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'general_matches_add', "add", 0, $number, $is_active, $error);