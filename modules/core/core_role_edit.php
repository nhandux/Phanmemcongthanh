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
				<a class="current">Chỉnh sửa nhóm</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
//
$role_id = isset($_GET['id']) ? $_GET['id']+0 : $role_id+0;
$db->table = "core_role";
$db->condition = "role_id = ".$role_id;
$db->order = "";
$db->limit = 1;
$db->select();
if($db->RowCount==0) loadPageError("Nhóm không tồn tại.", TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1]);


include_once (_F_TEMPLATES . DS . "core_role.php");
if(empty($typeFunc)) $typeFunc = "no";

$OK = false;
$error = '';
if($typeFunc=='edit'){
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
		$db->condition = "role_id = ".$role_id;
		$db->update($data);
		//---- Role-User
		$user = isset($_POST['user']) ? $_POST['user'] : array();
		$db->table = "role_user";
		$db->condition = "`role` = $role_id";
		$db->delete();
		for($i=0; $i<count($user); $i++) {
			$db->table = "role_user";
			$data = array(
					'role'=>$role_id,
					'user'=>$user[$i],
					'created_time'=>time(),
					'created_user'=>$_SESSION["user_id"]
			);
			$db->insert($data);
		}

		loadPageSuccess("Đã chỉnh sửa Nhóm thành công.", TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1]);
		$OK = true;

	}
}
else {
	$db->table = "core_role";
	$db->condition = "role_id = ".$role_id;
	$rows = $db->select();
	foreach($rows as $row) {
		$name			    = $row['name'];
		$comment            = $row['comment'];
		$is_active 		    = $row['is_active']+0;
		$is_show            = $row['is_show']+0;
	}

	$user = array();
	$db->table = "role_user";
	$db->condition = "`role` = ".$role_id;
	$db->limit = "";
	$db->order = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		array_push($user, $row['user']+0);
	}
}
if(!$OK) grAdmin(TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . 'core_role_edit', "edit", $role_id, $name, $comment, $user, $is_active, $is_show, $error);
?>