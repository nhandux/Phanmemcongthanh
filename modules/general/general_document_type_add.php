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
				<a class="current">Thêm địa điểm</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
include_once (_F_TEMPLATES . DS . "general_document_type.php");
if(empty($typeFunc)) $typeFunc = "no";

$stringObj = new String();
$OK = false;
$error = '';
if($typeFunc=='add'){
	if(empty($title)) $error = '<span class="show-error">Vui lòng nhập tên loại văn bản.</span>';
	else {
		$slug = (empty($slug)) ? $title : $slug;
		$slug = $stringObj->getSlug($slug);

		$db->table = "document_type";
		$data = array(
			'title'=>$db->clearText($title),
			'slug'=>$db->clearText($slug),
			'sort'=>sortDocument_type()+1,
			'is_active'=>$is_active+0,
			'created_time'=>time(),
			'modified_time'=>time(),
			'user_id'=>$_SESSION["user_id"]
		);
		$db->insert($data);
		loadPageSuccess("Đã thêm dữ liệu thành công.", TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][5]);
		$OK = true;
	}
}
else {
	$title              = "";
	$slug               = "";
	$is_active		    = 1;
}
if(!$OK) document_typeGeneral(TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'general_document_type_add', "add", 0,  $title, $slug, $is_active, $error);