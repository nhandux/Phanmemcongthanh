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
				<a href="<?php echo TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][2];?>"><?php echo $menu_ol[5];?></a>
			</li>
			<li>
				<a href="<?php echo TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][2];?>"><?php echo $menu_op[5][2];?></a>
			</li>
			<li>
				<a class="current">Thêm đơn vị</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
include_once (_F_TEMPLATES . DS . "core_agency.php");
if(empty($typeFunc)) $typeFunc = "no";
$parent = isset($_GET['parent']) ? $_GET['parent']+0 : $parent;
$db->table = "agency";
$db->condition = "agency_id = " . $parent;
$rows = $db->select();
$db->order = "";
$db->limit = "";
if($db->RowCount==0 && $parent!=0) loadPageError("Mục không tồn tại.", TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][2]);

$OK = false;
$error = '';
if($typeFunc=='add'){
	if(empty($code)) $error = '<span class="show-error">Vui lòng nhập Mã đơn vị.</span>';
	elseif(empty($symbol)) $error = '<span class="show-error">Vui lòng nhập Kí hiệu.</span>';
	elseif(empty($name)) $error = '<span class="show-error">Vui lòng nhập Tên đơn vị.</span>';
	else {
		$handleUploadImg = false;
		$file_max_size = FILE_MAX_SIZE;
		$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'agency';
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
			$id_query = 0;
			$db->table = "agency";
			$data = array(
				'code' => $db->clearText($code),
				'symbol' => $db->clearText($symbol),
				'name' => $db->clearText($name),
				'address' => $db->clearText($address),
				'phone' => $db->clearText($phone),
				'email' => $db->clearText($email),
				'parent' => ($parent + 0),
				'sort' => (sortAcs($parent + 0) + 1),
				'is_active' => ($is_active + 0),
				'created_time' => time(),
				'modified_time' => time(),
				'user_id' => $_SESSION["user_id"]
			);
			$db->insert($data);
			$id_query = $db->LastInsertID;

			if ($handleUploadImg) {
				$stringObj = new String();

				$img_name_file = $symbol . '_' . md5(uniqid());

				$imgUp->file_new_name_body = $img_name_file;
				$imgUp->image_resize = true;
				$imgUp->image_ratio_crop = true;
				$imgUp->image_y = 200;
				$imgUp->image_x = 200;
				$imgUp->Process($dir_dest);

				if ($imgUp->processed) {
					$name_img = $imgUp->file_dst_name;
					$db->table = "agency";
					$data = array(
							'img' => $db->clearText($name_img)
					);
					$db->condition = "`agency_id` = " . $id_query;
					$db->update($data);
				} else {
					loadPageError("Lỗi tải hình: " . $imgUp->error, TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][2]);
				}

				$imgUp->Clean();
			}

			loadPageSuccess("Đã thêm Đơn vị thành công.", TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][2]);
			$OK = true;
		}
	}
}
else {
	$code			= "-no-";
	$symbol			= "";
	$name			= "";
	$address		= "";
	$phone			= "";
	$email			= "";
	$img            = "";
	$is_active		= 1;
}
if(!$OK) agencyCore(TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . 'core_agency_add', "add", 0, $code, $symbol, $name, $address, $phone, $email, $parent, $img, $is_active, $error);
?>
