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
				<a class="current">Thêm mức dộ</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
include_once (_F_TEMPLATES . DS . "general_level.php");
if(empty($typeFunc)) $typeFunc = "no";

$stringObj = new String();
$OK = false;
$error = '';
if($typeFunc=='add'){
	if(empty($title)) $error = '<span class="show-error">Vui lòng nhập tên.</span>';
	elseif(empty($class)) $error = '<span class="show-error">Vui lòng nhập lớp.</span>';
	elseif(empty($color)) $error = '<span class="show-error">Vui lòng chọn màu.</span>';
	else {
		$db->table = "level";
		$data = array(
			'title'=>$db->clearText($title),
			'class'=>$db->clearText($stringObj->getSlug($class)),
			'color'=>$db->clearText($color),
			'sort'=>sortLevel()+1,
			'is_active'=>$is_active+0,
			'created_time'=>time(),
			'modified_time'=>time(),
			'user_id'=>$_SESSION["user_id"]
		);
		$db->insert($data);
		loadPageSuccess("Đã thêm dữ liệu thành công.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][0]);
		$OK = true;
	}
}
else {
	$title              = "";
	$class              = "";
	$color              = "#094089";
	$is_active		    = 1;
}
if(!$OK) levelGeneral(TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'general_level_add', "add", 0, $title, $class, $color, $is_active, $error);