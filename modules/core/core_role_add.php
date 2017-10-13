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
				<a href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1];?>"><?php echo $menu_ol[3];?></a>
			</li>
			<li>
				<a href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1];?>"><?php echo $menu_op[3][1];?></a>
			</li>
			<li>
				<a class="current">Thêm nhóm</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
include_once (_F_TEMPLATES . DS . "core_role.php");
if(empty($typeFunc)) $typeFunc = "no";

$OK = false;
$error = '';
if($typeFunc=='add'){
	if(empty($name)) $error = '<span class="show-error">Vui lòng nhập tên nhóm.</span>';
	else {
		$db->table = "core_role";
		$data = array(
			'name'=>$db->clearText($name),
			'comment'=>$db->clearText($comment),
			'is_active'=>$is_active+0,
			'is_show'=>$is_show+0,
			'modified_time'=>time(),
			'user_id'=>$_SESSION["user_id"]
		);
		$db->insert($data);
		$id_query = $db->LastInsertID;
		//---- Role-User
		$user = isset($_POST['user']) ? $_POST['user'] : array();
		for($i=0; $i<count($user); $i++) {
			$db->table = "role_user";
			$data = array(
					'role'=>$id_query,
					'user'=>$user[$i],
					'created_time'=>time(),
					'created_user'=>$_SESSION["user_id"]
			);
			$db->insert($data);
		}

		loadPageSuccess("Đã thêm Nhóm thành công.", TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1]);
		$OK = true;
	}
}
else {
	$name			= "";
	$comment        = "";
	$agency         = 0;
	$is_active		= 1;
	$is_show        = 1;
}
if(!$OK) grAdmin(TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . 'core_role_add', "add", 0, $name, $comment, array(),  $is_active, $is_show, $error);
?>