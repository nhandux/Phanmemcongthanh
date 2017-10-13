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
				<a href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][0];?>"><?php echo $menu_ol[4];?></a>
			</li>
			<li>
				<a href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][0];?>"><?php echo $menu_op[4][0];?></a>
			</li>
			<li>
				<a class="current">Chỉnh sửa mức dộ</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
//
$level_id = isset($_GET['id']) ? $_GET['id']+0 : $level_id+0;
$db->table = "level";
$db->condition = "level_id = " . $level_id;
$db->order = "";
$db->limit = 1;
$db->select();
if($db->RowCount==0) loadPageError("Dữ liệu không tồn tại.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][0]);

include_once (_F_TEMPLATES . DS . "general_level.php");
if(empty($typeFunc)) $typeFunc = "no";

$stringObj = new String();
$OK = false;
$error = '';
if($typeFunc=='edit'){
	if(empty($title)) $error = '<span class="show-error">Vui lòng nhập tên.</span>';
	elseif(empty($class)) $error = '<span class="show-error">Vui lòng nhập lớp.</span>';
	elseif(empty($color)) $error = '<span class="show-error">Vui lòng chọn màu.</span>';
	else {
		$db->table = "level";
		$data = array(
			'title'=>$db->clearText($title),
			'class'=>$db->clearText($stringObj->getSlug($class)),
			'color'=>$db->clearText($color),
			'is_active'=>$is_active+0,
			'modified_time'=>time(),
			'user_id'=>$_SESSION["user_id"]
		);
		$db->condition = "level_id = ".$level_id;
		$db->update($data);
		loadPageSuccess("Đã chỉnh sửa dữ liệu thành công.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][0]);
		$OK = true;
	}
}
else {
	$db->table = "level";
	$db->condition = "level_id = ".$level_id;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$title        		= $row['title'];
		$class        		= $row['class'];
		$color        		= $row['color'];
		$is_active          = $row['is_active']+0;
	}
}
if(!$OK) levelGeneral(TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'general_level_edit', "edit", $level_id, $title, $class, $color, $is_active, $error);