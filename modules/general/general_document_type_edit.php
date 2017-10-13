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
				<a href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][5];?>"><?php echo $menu_ol[4];?></a>
			</li>
			<li>
				<a href="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][5];?>"><?php echo $menu_op[4][5];?></a>
			</li>
			<li>
				<a class="current">Chỉnh sửa loại văn bản</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
//
$document_type_id = isset($_GET['id']) ? $_GET['id']+0 : $document_type_id+0;
$db->table = "document_type";
$db->condition = "document_type_id = " . $document_type_id;
$db->order = "";
$db->limit = 1;
$db->select();
if($db->RowCount==0) loadPageError("Dữ liệu không tồn tại.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][5]);

include_once (_F_TEMPLATES . DS . "general_document_type.php");
if(empty($typeFunc)) $typeFunc = "no";

$stringObj = new String();
$OK = false;
$error = '';
if($typeFunc=='edit'){
	if(empty($title)) $error = '<span class="show-error">Vui lòng nhập tên loại văn bản.</span>';
	else {
		$slug = (empty($slug)) ? $title : $slug;
		$slug = $stringObj->getSlug($slug);

		$db->table = "document_type";
		$data = array(
			'title'=>$db->clearText($title),
			'slug'=>$db->clearText($slug),
			'is_active'=>$is_active+0,
			'modified_time'=>time(),
			'user_id'=>$_SESSION["user_id"]
		);
		$db->condition = "document_type_id = ".$document_type_id;
		$db->update($data);
		loadPageSuccess("Đã chỉnh sửa dữ liệu thành công.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][5]);
		$OK = true;
	}
}
else {
	$db->table = "document_type";
	$db->condition = "document_type_id = ".$document_type_id;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$title        		= $row['title'];
		$slug        		= $row['slug'];
		$is_active          = $row['is_active']+0;
	}
}
if(!$OK) document_typeGeneral(TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'general_document_type_edit', "edit", $document_type_id, $title, $slug, $is_active, $error);