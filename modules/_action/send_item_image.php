<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$stringObj = new String();
$date = new DateClass();
$id = isset($_POST['id']) ? $_POST['id']+0 : 0;


$error = '';

if(!empty($_FILES)) {
		$handleUploadImg = false;
		$file_max_size = FILE_MAX_SIZE;
		$dir_dest = ROOT_DIR . DS . 'uploads' . DS . 'order_items';
		$file_size = $_FILES["file"]['size'];

		if($file_size>0) {
			$imgUp = new Upload($_FILES["file"]);

			$imgUp->file_max_size = $file_max_size;
			if ($imgUp->uploaded) {
				$handleUploadImg = true;
			}	
			else {
				$error = '<span class="show-error">Lỗi tải hình: '.$imgUp->error.'</span>';
			}
		}
	
		else {
			$handleUploadImg = false;
			
		}			

			if($handleUploadImg) {
				

				$img_name_file = 'sp_' . time() . "_" . md5(uniqid());

				$imgUp->file_new_name_body      = $img_name_file;
				$imgUp->image_resize            = true;
				$imgUp->image_ratio_crop        = true;
				$imgUp->image_y                 = 450;
				$imgUp->image_x                 = 450;
				$imgUp->Process($dir_dest);

				if ($imgUp->processed) {
					$name_img = $imgUp->file_dst_name;
					$db->table = "itemproduct";
					$data = array(
						'img' => $db->clearText($name_img)
					);
					$db->condition = "itemproduct_id = " .$id;
					$db->update($data);
				} 
				$imgUp->file_new_name_body      = 'thumb_' . $img_name_file;
				$imgUp->image_resize            = true;
				$imgUp->image_ratio_crop        = true;
				$imgUp->image_y                 = 50;
				$imgUp->image_x                 = 50;
				$imgUp->Process($dir_dest);
				$imgUp->Clean();
			}
			if($error == '') {}
			else echo 'Lỗi khi tải ảnh.';
}
else 'fuck you bitch';
