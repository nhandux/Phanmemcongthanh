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
				<a href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][3];?>"><?php echo $menu_ol[4];?></a>
			</li>
			<li>
				<a href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][3];?>"><?php echo $menu_op[4][3];?></a>
			</li>
			<li>
				<a class="current">Chỉnh sửa tên công việc</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
//
$jobs_name_id = isset($_GET['id']) ? $_GET['id']+0 : $jobs_name_id+0;
$db->table = "jobs_name";
$db->condition = "jobs_name_id = " . $jobs_name_id;
$db->order = "";
$db->limit = 1;
$db->select();
if($db->RowCount==0) loadPageError("Dữ liệu không tồn tại.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][3]);

include_once (_F_TEMPLATES . DS . "general_jobs_name.php");
if(empty($typeFunc)) $typeFunc = "no";

$stringObj = new String();
$OK = false;
$error = '';
if($typeFunc=='edit'){
	if(empty($title)) $error = '<span class="show-error">Vui lòng nhập tên công việc.</span>';
	else {
		$slug = (empty($slug)) ? $title : $slug;
		$slug = $stringObj->getSlug($slug);

		$db->table = "jobs_name";
		$data = array(
			'title'=>$db->clearText($title),
			'slug'=>$db->clearText($slug),
			'is_active'=>$is_active+0,
			'modified_time'=>time(),
			'user_id'=>$_SESSION["user_id"]
		);
		$db->condition = "jobs_name_id = ".$jobs_name_id;
		$db->update($data);
		loadPageSuccess("Đã chỉnh sửa dữ liệu thành công.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][3]);
		$OK = true;
	}
}
else {
	$db->table = "jobs_name";
	$db->condition = "jobs_name_id = ".$jobs_name_id;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$title        		= $row['title'];
		$slug        		= $row['slug'];
		$is_active          = $row['is_active']+0;
	}
}
if(!$OK) jobs_nameGeneral(TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'general_jobs_name_edit', "edit", $jobs_name_id, $title, $slug, $is_active, $error);