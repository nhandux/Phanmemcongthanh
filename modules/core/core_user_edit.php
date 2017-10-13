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
				<a href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][0];?>"><?php echo $menu_ol[3];?></a>
			</li>
			<li>
				<a href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][0];?>"><?php echo $menu_op[3][0];?></a>
			</li>
			<li>
				<a class="current">Chỉnh sửa thành viên</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
$user_id = isset($_GET['id']) ? $_GET['id']+0 : $userId+0;
$db->table = "core_user";
$db->condition = "user_id = ".$user_id;
$db->order = "";
$db->limit = 1;
$db->select();
if($db->RowCount==0) loadPageError("Thành viên không tồn tại.", TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][0]);

include_once (_F_TEMPLATES . DS . "core_user.php");
if(empty($typeFunc)) $typeFunc = "no";

$date = new DateClass();
$OK = false;
$error = '';
if($typeFunc=='edit'){
	$handleUploadImg = false;
	$file_max_size = FILE_MAX_SIZE;
	$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'user';
	$file_size = $_FILES['img']['size'];
	if($file_size>0) {
		$imgUp = new Upload($_FILES['img']);
		$imgUp->file_max_size = $file_max_size;
		if ($imgUp->uploaded) {
			$handleUploadImg = true;
			$OK = true;
		}
		else {
			$error = '<span class="show-error">Lỗi tải hình: '.$imgUp->error.'</span>';
		}
	}
	else {
		$handleUploadImg = false;
		$OK = true;
	}

	if($OK) {
		$full_name = mb_convert_case($full_name, MB_CASE_TITLE, "UTF-8");
		$array_roles = array();
		$db->table = "role_user";
		$db->condition = "`user` = $user_id";
		$db->limit = '';
		$db->order = '';
		$row3s = $db->select();
		foreach($row3s as $row3) {
			$array_roles[] = $row3['role']+0;
		}
		$current_role = 0;
		$db->table = "core_user";
		$db->condition = "user_id = " . $user_id;
		$db->limit = 1;
		$row4s = $db->select();
		foreach($row4s as $row4) {
			$current_role = $row4['current_agency']+0;
		}
		
		$db->table = "core_user";
		if(in_array($current_role, $array_roles)) {
		if(empty($password)) {
			$data = array(
				'full_name'=>$db->clearText($full_name),
				'gender'=>$gender + 0,
				'birthday'=>strtotime($date->dmYtoYmd($birthday)),
				'identity_card'=>$db->clearText($identity_card),
				'date_of_issue'=>strtotime($date->dmYtoYmd($date_of_issue)),
				'apply'=>$db->clearText($apply),
				'email'=>$db->clearText($email),
				'phone'=>$db->clearText($phone),
				'address'=>$db->clearText($address),
				'city'=>$db->clearText($city),
				'comment'=>$db->clearText($comment),
				'is_show'=>$is_show+0,
				'is_active'=>$is_active+0,
				'vote'=>$vote+0,
				'click_vote'=>1,
				'modified_time'=>time(),
				'user_id_edit'=>$_SESSION["user_id"]
			);
		} else {
			$data = array(
				'password'=>md5($user_name.$password),
				'full_name' =>$db->clearText($full_name),
				'gender'=>$gender+0,
				'birthday'=>strtotime($date->dmYtoYmd($birthday)),
				'identity_card'=>$db->clearText($identity_card),
				'date_of_issue'=>strtotime($date->dmYtoYmd($date_of_issue)),
				'apply'=>$db->clearText($apply),
				'email'=>$db->clearText($email),
				'phone'=>$db->clearText($phone),
				'address'=>$db->clearText($address),
				'city'=>$db->clearText($city),
				'comment'=>$db->clearText($comment),				
				'is_show'=>$is_show+0,
				'is_active'=>$is_active+0,
				'vote'=>$vote+0,
				'click_vote'=>1,
				'modified_time'=>time(),
				'user_id_edit'=>$_SESSION["user_id"]
			);
		}
		}
		else {
		if(empty($password)) {
			$data = array(
				'full_name'=>$db->clearText($full_name),
				'gender'=>$gender + 0,
				'birthday'=>strtotime($date->dmYtoYmd($birthday)),
				'identity_card'=>$db->clearText($identity_card),
				'date_of_issue'=>strtotime($date->dmYtoYmd($date_of_issue)),
				'apply'=>$db->clearText($apply),
				'email'=>$db->clearText($email),
				'phone'=>$db->clearText($phone),
				'address'=>$db->clearText($address),
				'city'=>$db->clearText($city),
				'comment'=>$db->clearText($comment),
				'current_agency'=> 0,
				'is_show'=>$is_show+0,
				'is_active'=>$is_active+0,
				'vote'=>$vote+0,
				'click_vote'=>1,
				'modified_time'=>time(),
				'user_id_edit'=>$_SESSION["user_id"]
			);
		} else {
			$data = array(
				'password'=>md5($user_name.$password),
				'full_name' =>$db->clearText($full_name),
				'gender'=>$gender+0,
				'birthday'=>strtotime($date->dmYtoYmd($birthday)),
				'identity_card'=>$db->clearText($identity_card),
				'date_of_issue'=>strtotime($date->dmYtoYmd($date_of_issue)),
				'apply'=>$db->clearText($apply),
				'email'=>$db->clearText($email),
				'phone'=>$db->clearText($phone),
				'address'=>$db->clearText($address),
				'city'=>$db->clearText($city),
				'comment'=>$db->clearText($comment),
				'current_agency'=> 0,
				'is_show'=>$is_show+0,
				'is_active'=>$is_active+0,
				'vote'=>$vote+0,
				'click_vote'=>1,
				'modified_time'=>time(),
				'user_id_edit'=>$_SESSION["user_id"]
			);
		}	
			
		}
		$db->condition = "user_id = " . $user_id;
		$db->update($data);
		//---- Role-User
		$db->table = "role_user";
		$db->condition = "`user` = $user_id";
		$db->delete();
		$role_arr = $role_id;
		for($i=0; $i<count($role_arr); $i++) {
			$db->table = "role_user";
			$data = array(
					'role'=>$role_arr[$i],
					'user'=>$user_id,
					'created_time'=>time(),
					'created_user'=>$_SESSION["user_id"]
			);
			$db->insert($data);
		}

		if($handleUploadImg) {
			$stringObj = new String();
			if(glob($dir_dest . DS .'*'.$img)) array_map("unlink", glob($dir_dest . DS .'*'.$img));

			$img_name_file = 'u_' . time() . "_" . md5(uniqid());
			$imgUp->file_new_name_body      = $img_name_file;
			$imgUp->image_resize            = true;
			$imgUp->image_ratio_crop        = true;
			$imgUp->image_y                 = 200;
			$imgUp->image_x                 = 200;
			$imgUp->Process($dir_dest);
			if($imgUp->processed) {
				$name_img = $imgUp->file_dst_name;
				$db->table = "core_user";
				$data = array(
					'img' => $db->clearText($name_img)
				);
				$db->condition = "user_id = " . $user_id;
				$db->update($data);
			}
			else {
				loadPageError("Lỗi tải hình: ".$imgUp->error, TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[3][0]);
			}
			$imgUp->file_new_name_body      = 'sm_' . $img_name_file;
			$imgUp->image_resize            = true;
			$imgUp->image_ratio_crop        = true;
			$imgUp->image_y                 = 90;
			$imgUp->image_x                 = 90;
			$imgUp->Process($dir_dest);
			$imgUp-> Clean();
		}
		loadPageSuccess("Đã chỉnh sửa Thành viên thành công.", TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][0] );
		$OK = true;
	}
}
else {
	$db->table = "core_user";
	$db->condition = "user_id = ".$user_id;
	$db->limit = 1;
	$db->order = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		$user_name      = $row['user_name'];
		$full_name      = $row['full_name'];
		$gender         = $row['gender']+0;
		$birthday       = $date->vnDate($row['birthday']);
		$identity_card  = $row['identity_card'];
		if($row['date_of_issue']==0) $date_of_issue  = '';
		else $date_of_issue  = $date->vnDate($row['date_of_issue']);
		$apply          = $row['apply'];
		$email          = $row['email'];
		$phone          = $row['phone'];
		$address        = $row['address'];
		$city           = $row['city'];
		$comment        = $row['comment'];
		$img            = $row['img'];
		$is_show        = $row['is_show']+0;
		$is_active		= $row['is_active']+0;
		$vote           = round($row['vote']/$row['click_vote']);
	}

	$role_id = array();
	$db->table = "role_user";
	$db->condition = "`user` = ".$user_id;
	$db->limit = "";
	$db->order = "";
	$rows = $db->select();
	foreach ($rows as $row) {
		array_push($role_id, $row['role']+0);
	}

}
if(!$OK)memberUser(TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . 'core_user_edit', "edit", $user_id,  $role_id, $user_name, $full_name, $gender, $birthday, $identity_card, $date_of_issue, $apply, $email, $phone, $address, $city, $comment, $is_show, $img, $is_active, $vote, $error);