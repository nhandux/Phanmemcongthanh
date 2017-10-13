<?php

if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

//

//Function __autoload()

function __autoload($classname) {

	if (file_exists(_F_CLASSES . DS . $classname . ".class.php")) {

		include(_F_CLASSES . DS . $classname . ".class.php");

	}

	else if (file_exists(_F_CLASSES . DS . $classname . ".php")) {

		include(_F_CLASSES . DS . $classname . ".php");

	}

	else if (file_exists(_F_CLASSES . DS . "class." . $classname . ".php")) {

		include(_F_CLASSES . DS . "class." . $classname . ".php");

	}

	else if (file_exists(_F_CLASSES . DS . str_replace('_', DS, $classname) . ".php")) {

		include(_F_CLASSES . DS . str_replace('_', DS, $classname) . ".php");

	}

    else {

    }

}



//----------------------------------------------------------------------------------------------------------------------

/* Set Reporting Error */

function setReporting() {

	if (DEVELOPMENT_ENVIRONMENT == true) {

		error_reporting(E_ALL);

		ini_set('display_errors', 'On');

	}

	else {

		error_reporting(E_ALL);

		ini_set('display_errors', 'Off');

		ini_set('log_errors', 'On');

        ini_set('error_log', ERROR_LOG_DIR);

    }

}

setReporting();



//----------------------------------------------------------------------------------------------------------------------

// Get site_url()

function site_url(){

	$url = HOME_URL_LANG . $_SERVER['REQUEST_URI'];

	return $url;

}



//----------------------------------------------------------------------------------------------------------------------

/** Hàm lấy giá trị bảng page

 * @param $alias

 * @param string $col

 * @return string

 */

function getPage($alias, $col = "content") {

	global $db;

	$alias = $db->clearText($alias);



	$content = '';

	$db->table = "page";

	$db->condition = "alias = '".$alias."'";

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	if($db->RowCount==0) {

		$content="Unknown alias '".$alias."'";

	} else {

		foreach($rows as $row){

			$content = ($row['is_active']+0==1)? $row[$col] : '' ;

		}

	}



	return stripslashes($content);

}



//----------------------------------------------------------------------------------------------------------------------

/** Hàm lấy giá trị bảng constant

 * @param $const

 * @return string

 */

function getConstant($const, $column = 'value') {

	global $db;

	$const = $db->clearText($const);



	$value = '';

	$db->table = "constant";

	$db->condition = "constant = '".$const."'";

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row){

		$value = $row[$column];

	}



	return stripslashes($value);

}





//----------------------------------------------------------------------------------------------------------------------

/**

 * @param $str

 * @param $url

 */

function loadPageError($str, $url) {

	?>

	<div align="center">

		<div id="spinningSquaresG">

			<div id="spinningSquaresG_1" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_2" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_3" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_4" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_5" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_6" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_7" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_8" class="spinningSquaresG">

			</div>

		</div>

		<span class="show-error"><?php echo $str?></span>

		<br>Vui lòng đợi giây lát hoặc bấm <a style="font-weight:  bold;" href="<?php echo $url?>">vào đây</a> để tiếp tục...

	</div>

	<head>

		<meta http-equiv="Refresh" content="5; URL=<?php echo $url?>">

	</head>

	<?php

	die();

}



/**

 * @param $str

 * @param $url

 */

function loadPageSuccess($str, $url) {

	?>

	<div align="center">

		<div id="spinningSquaresG">

			<div id="spinningSquaresG_1" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_2" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_3" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_4" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_5" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_6" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_7" class="spinningSquaresG">

			</div>

			<div id="spinningSquaresG_8" class="spinningSquaresG">

			</div>

		</div>

		<span class="show-ok"><?php echo $str?></span>

		<br>Vui lòng đợi giây lát hoặc bấm <a style="font-weight:  bold;" href="<?php echo $url?>">vào đây</a> để tiếp tục...

	</div>

	<head>

		<meta http-equiv="Refresh" content="1; URL=<?php echo $url?>">

	</head>

	<?php

	die();

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @param $num

 * @return string

 */

function formatNumberVN($num) {

	return number_format(($num+0),0,"",".");

}

/**

 * @param $text

 * @return mixed

 */

function formatNumberToInt($text) {

	$text = str_replace(".", "", $text);

	return $text+0;

}



function formatNumberToFloat($text) {

	$text = str_replace(".", "", $text);

	$text = str_replace(",", ".", $text);

	return $text+0;

}



$arr_number = array('không', 'một', 'hai', 'ba', 'bốn', 'năm', 'sáu', 'bảy', 'tám', 'chín');

function dozens($so, $daydu) {

	global $arr_number;

	$chuoi = "";

	$chuc = floor($so/10);

	$donvi = $so%10;

	if ($chuc>1) {

		$chuoi = " " . $arr_number[$chuc] . " mươi";

		if ($donvi==1) {

			$chuoi .= " mốt";

		}

	}

	else if ($chuc==1) {

		$chuoi = " mười";

		if ($donvi==1) {

			$chuoi .= " một";

		}

	}

	else if ($daydu && $donvi>0) {

		$chuoi = " lẻ";

	}

	if ($donvi==5 && $chuc>=1) {

		$chuoi .= " lăm";

	} else if ($donvi>1||($donvi==1&&$chuc==0)) {

		$chuoi .= " " . $arr_number[$donvi];

	}

	return $chuoi;

}

function hundred($so, $daydu) {

	global $arr_number;

	$chuoi = "";

	$tram = floor($so/100);

	$so = $so%100;

	if ($daydu || $tram>0) {

		$chuoi = " " . $arr_number[$tram] . " trăm";

		$chuoi .= dozens($so, true);

	} else {

		$chuoi = dozens($so, false);

	}

	return $chuoi;

}

function the_millions($so, $daydu) {

	$chuoi = "";

	$trieu = floor($so/1000000);

	$so = $so%1000000;

	if ($trieu>0) {

		$chuoi = hundred($trieu, $daydu) . " triệu";

		$daydu = true;

	}

	$nghin = floor($so/1000);

	$so = $so%1000;

	if ($nghin>0) {

		$chuoi .= hundred($nghin, $daydu) . " nghìn";

		$daydu = true;

	}

	if ($so>0) {

		$chuoi .= hundred($so, $daydu);

	}

	return $chuoi;

}

function convert_number_to_words($so) {

	global $arr_number;

	if ($so==0) return $arr_number[0];

	$chuoi = "";

	$hauto = "";

	do {

		$ty = $so%1000000000;

		$so = floor($so/1000000000);

		if ($so>0) {

			$chuoi = the_millions($ty,true) . $hauto . $chuoi;

		} else {

			$chuoi = the_millions($ty,false) . $hauto . $chuoi;

		}

		$hauto = " tỷ";

	} while ($so>0);



	$chuoi = trim($chuoi);

	$chuoi = mb_convert_case(substr($chuoi, 0, 1), MB_CASE_UPPER, "UTF-8") .  substr($chuoi, 1);

	return $chuoi. ' đồng chẵn.';

}



//----------------------------------------------------------------------------------------------------------------------

function getCurrentDir($path=".") {

	$dirarr = array();

	if ($dir = opendir($path)) {

		while (false !== ($entry = @readdir($dir))) {

			if (($entry!=".")&&($entry!="..")) {

				if ($path!=".") $newpath = $entry;

				else $newpath = $entry;

				$newpath = str_replace("//","/",$newpath);

				$dirarr[] = $newpath;

			}

		}

	}

	return $dirarr;

}// end func



//----------------------------------------------------------------------------------------------------------------------

function size_format($bytes="") {

	$retval = "";

	if ($bytes >=  pow(1024,5)) {

		$retval = round($bytes / pow(1024,5) * 100 ) / 100 . " PB";

	} else if ($bytes >=  pow(1024,4)) {

		$retval = round($bytes / pow(1024,4) * 100 ) / 100 . " TB";

	} else if ($bytes >=  pow(1024,3)) {

		$retval = round($bytes / pow(1024,3) * 100 ) / 100 . " GB";

	} else if ($bytes >=  pow(1024,2)) {

		$retval = round($bytes / pow(1024,2) * 100 ) / 100 . " MB";

	} else if ($bytes  >= 1024) {

		$retval = round($bytes / 1024 * 100 ) / 100 . " KB";

	} else {

		$retval = $bytes . " bytes";

	}

	return $retval;

}



function convert_to_bytes( $string ) {

	if(preg_match( '/^([0-9\.]+)[ ]*([b|k|m|g|t|p|e|z|y]*)/i', $string, $matches)) {

		if( empty( $matches[2] ) ) return $matches[1];

		$suffixes = array(

			'B' => 0,

			'K' => 1,

			'M' => 2,

			'G' => 3,

			'T' => 4,

			'P' => 5,

			'E' => 6,

			'Z' => 7,

			'Y' => 8

		);

		if(isset($suffixes[strtoupper( $matches[2])])) return round($matches[1] * pow(1024, $suffixes[strtoupper( $matches[2])]));

	}

	return false;

}



function convert_from_bytes($size){

	if($size <= 0) return '0 bytes';

	if($size == 1) return '1 byte';

	if($size < 1024) return $size . ' bytes';

	$i = 0;

	$iec = array( 'bytes', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB' );

	while(($size / 1024) >= 1){

		$size = $size / 1024;

		++$i;

	}

	return number_format( $size, 2 ) . ' ' . $iec[$i];

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @param $id

 * @return string

 */

function getUserName($id){

	global $db;

	$str = "";

	$db->table = "core_user";

	$db->condition = "user_id = ".($id+0);

	$db->order = "user_id ASC";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$str = $row['user_name'];

	}

	return stripslashes($str);

}



function getUserFullName($id){

	global $db;

	$str = "";

	$db->table = "core_user";

	$db->condition = "user_id = ".($id+0);

	$db->order = "user_id ASC";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$str = $row['full_name'];

	}

	return stripslashes($str);

}



/**

 * @param $id

 * @return string

 */

function getRoleName($id){

	global $db;

	$str = "";

	$db->table = "core_role";

	$db->condition = "role_id = ".($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$str = $row['name'];

	}

	return stripslashes($str);

}

function getRoleId($id) {

	global $db;

	$str = array();

	$db->table = "role_user";

	$db->condition = "user = ".($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$str[] = $row['role']+0;

	}

	return ($str);

}

/**

 * @param $name

 * @param $sum

 * @param $idno

 * @param $id

 * @param $type

 */

function showSortUser($name, $sum, $select, $id, $type, $core=1)

{

	if($core==1) {

		?>

		<select onchange="performSortCore(<?php echo $id?>, this.value, '<?php echo $type?>')" name="<?php echo $name?>" class="form-control select-manager" style="width:90%;">

			<?php

			for ($i = 1; $i <= $sum; $i++) {

				echo "<option value=" . $i;

				if ($select == $i) echo " selected ";

				echo ">" . $i . "</option>";

			}

			?>

		</select>

	<?php

	} else {

		?>

		<select name="<?php echo $name?>" class="form-control select-manager ol-alert-core" style="width:90%;">

			<?php

			for ($i = 1; $i <= $sum; $i++) {

				echo "<option value=" . $i;

				if ($select == $i) echo " selected ";

				echo ">" . $i . "</option>";

			}

			?>

		</select>

	<?php

	}

}





//----------------------------------------------------------------------------------------------------------------------

/**

 * @param $name

 * @param $sum

 * @param $idno

 * @param $width

 * @param int $style

 * @param $id

 * @param $type

 */

function showSort($name, $sum, $idno, $width, $style=1, $id, $type, $core=1)

{

	if($core==1){

		?>

		<select onchange="performSort(<?php echo $id?>, this.value, '<?php echo $type?>')" name="<?php echo $name?>" class="form-control select-manager" style="width:<?php echo $width?>; <?php echo $style==1?"font-weight:bold; color: #1d92af;":""?>" >

			<?php

			for ($i = 1; $i <= $sum; $i++) {

				echo "<option value=".$i;

				if ($idno == $i) echo " selected ";

				echo ">".$i."</option>";

			}

			?>

		</select>

	<?php

	}

	else {

		?>

		<select name="<?php echo $name?>" class="form-control select-manager ol-alert-core" style="width:<?php echo $width?>;<?php echo $style==1?"font-weight:bold; color: #1d92af;":""?>" >

			<?php

			for ($i = 1; $i <= $sum; $i++) {

				echo "<option value=".$i;

				if ($idno == $i) echo " selected ";

				echo ">".$i."</option>";

			}

			?>

		</select>

	<?php

	}

}



//----------------------------------------------------------------------------------------------------------------------

/** Hàm đếm số truy cập hiện tại

 * @return int

 */

function getCountOnline() {

	global $db;



	$db->table = "online";

	$db->condition = 1;

	$db->order = "";

	$db->limit = "";

	$db->select();

	return formatNumberVN($db->RowCount+7);

}



/** Đếm tổng số truy cập

 * @return int

 */

function getTotalHits() {

	global $db;

	$data = 0;



	$db->table = "online_daily";

	$db->condition = 1;

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$data += $row['count']+0;

	}

	$data = $data+100000;

	/*

	$item = 8 - strlen($data);

	for ($i = 1; $i <= $item; $i++) {

		$data = "0" . $data;

	}

	$str = '';

	for ($i = 0; $i < strlen($data); $i++) {

		$str = $str.'<li>'.$data[$i].'</li>';

	}

	$str = '<ul class="countHits">'.$str.'</ul>';

	*/



	return formatNumberVN($data);

}



/** Đếm số truy cập trong ngày hiện tại

 * @return int

 */

function getDayHits() {

	global $db;

	$date = new DateClass();

	$data = 0;

	$month = "";



	$month = $date->vnOther(time(),'Y-m-d');

	$db->table = "online_daily";

	$db->condition = "date LIKE  '".$month."'";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$data += $row['count']+0;

	}

	return formatNumberVN($data+100);

}



/** Đếm số truy cập trong tháng hiện tại

 * @return int

 */

function getMonthHits() {

	global $db;

	$date = new DateClass();

	$data = 0;

	$month = "";



	$month = $date->vnOther(time(),'Y-m');

	$db->table = "online_daily";

	$db->condition = "date LIKE  '%".$month."%'";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$data += $row['count']+0;

	}

	return formatNumberVN($data+5000);

}



/** Đếm số truy cập lớn nhất theo ngày

 * @return int

 */

function getMaxHits() {

	global $db;

	$db->table = "online_daily";

	$db->condition = "";

	$db->order = "count DESC";

	$db->limit = 1;

	$rows = $db->select();

	$data = $rows[0]['count']+0;

	return formatNumberVN($data+150);

}



/** Lấy ngày có số truy cập lớn nhất

 * @return int

 */

function getDayMaxHits() {

	global $db;

	$date = new DateClass();

	$db->table = "online_daily";

	$db->condition = "";

	$db->order = "count DESC";

	$db->limit = 1;

	$rows = $db->select();

	$data = $rows[0]['date'];

	return $date->vnDate(strtotime($data));

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @return string

 */

function getTitle() {

	global $db, $slug_cat, $id_menu, $id_article;

	$slug = $slug_cat;

	$txtTitle = getConstant('title');

	$txt = "";



	if ($slug == "home") {

		$txt = $txtTitle;

	}



	if (!empty($slug)) {

		$tb = array(

			1 => 'article',

			2 => 'gallery',

			6 => 'product',

			9 => 'tour',

			10 => 'gift',

			11 => 'car',

			17 => 'project',

			18 => 'product',

		);

		$type_id = 0;



		$db->table = "category";

		$db->condition = "slug = '".$slug."'";

		$db->order = "";

		$db->limit = 1;

		$rows = $db->select();

		if($db->RowCount>0) {

			foreach($rows as $row) {

				$txt = (!empty($row['title']))? $row['title'] : $row['name'];

				$type_id = $row['type_id']+0;

			}

			$tb_name = $tb[$type_id];



			if (!empty($id_menu) && $id_menu != 0) {

				$db->table = $tb_name . "_menu";

				$db->condition = $tb_name . "_menu_id = ".$id_menu;

				$db->order = "";

				$db->limit = 1;

				$rows = $db->select();

				foreach($rows as $row) {

					$txt = (!empty($row['title']))? $row['title'] : $row['name'];

				}

			}

			if (!empty($id_article) && $id_article != 0) {

				$article_id = $id_article;

				$db->table = $tb_name;

				$db->condition = $tb_name . "_id = ".$article_id;

				$db->order = "";

				$db->limit = 1;

				$rows = $db->select();

				foreach($rows as $row) {

					if($slug=='du-an-dau-tu' || $slug=='gioi-thieu-du-an') $txt = (!empty($row['title']))? $row['title'] : $row['name'] . ' - ' . $txt;

					else $txt = (!empty($row['title']))? $row['title'] : $row['name'];

				}

			}

		}

	}



	if ($slug == "error-404") {

		$txt = "Error pages 404! - ".$txtTitle;

	}

	if ($slug == "lien-he") {

		$txt = "Liên hệ - ".$txtTitle;

	}

	if ($slug == "contact") {

		$txt = "Contact - ".$txtTitle;

	}

	if ($slug == "gio-hang") {

		$txt = "Giỏ hàng - ".$txtTitle;

	}

	if ($slug == "tim-kiem") {

		$txt = "Tìm kiếm - ".$txtTitle;

	}



	return stripslashes($txt);

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @return string

 */

function getDescription() {

	global $db, $slug_cat, $id_menu, $id_article;

	$stringObj = new String();

	$slug = $slug_cat;

	$txtDescription = getConstant('description');

	$txt = "";



	if ($slug == "home") {

		$txt = $txtDescription;

	}



	if (!empty($slug)) {

		$tb = array(

			1 => 'article',

			2 => 'gallery',

			6 => 'product',

			9 => 'tour',

			10 => 'gift',

			11 => 'car',

			17 => 'project',

			18 => 'product',

		);

		$type_id = 0;



		$db->table = "category";

		$db->condition = "slug = '".$slug."'";

		$db->order = "";

		$db->limit = 1;

		$rows = $db->select();

		if($db->RowCount>0) {

			foreach($rows as $row) {

				$txt = (!empty($row['description']))? $row['description'] : $row['name'];

				$type_id = $row['type_id']+0;

			}

			$tb_name = $tb[$type_id];



			if (!empty($id_menu) && $id_menu != 0) {

				$db->table = $tb_name . "_menu";

				$db->condition = $tb_name . "_menu_id = ".$id_menu;

				$db->order = "";

				$db->limit = 1;

				$rows = $db->select();

				foreach($rows as $row) {

					$comment = (!empty($row['comment'])) ? $row['comment'] : $row['name'];

					$txt = (!empty($row['description']))? $row['description'] : $comment;

				}

			}

			if (!empty($id_article) && $id_article != 0) {

				$article_id = $id_article;

				$db->table = $tb_name;

				$db->condition = $tb_name . "_id = ".$article_id;

				$db->order = "";

				$db->limit = 1;

				$rows = $db->select();

				foreach($rows as $row) {

					$comment = '';

					if($slug=='nha-dat-don-le' || $slug=='san-giao-dich') {

						$comment = (!empty($row['parallel_price'])) ? $row['parallel_price'] : $row['name'];

					} else {

						$comment = (!empty($row['comment'])) ? $row['comment'] : $row['name'];

					}

					

					if($slug=='du-an-dau-tu' || $slug=='gioi-thieu-du-an') $txt = (!empty($row['description'])) ? $row['description'] : $txt;

					else $txt = (!empty($row['description']))? $row['description'] : $comment;

				}

			}

		}

	}



	if ($slug == "error-404") {

		$txt = "Error pages 404!, ".$txtDescription;

	}

	if ($slug == "lien-he") {

		$txt = "Liên hệ, ".$txtDescription;

	}

	if ($slug == "contact") {

		$txt = "Contact, ".$txtDescription;

	}

	if ($slug == "gio-hang") {

		$txt = "Giỏ hàng, ".$txtDescription;

	}

	if ($slug == "tim-kiem") {

		$txt = "Tìm kiếm, ".$txtDescription;

	}



	return stripslashes($stringObj->crop($txt, 60));

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @return string

 */

function getKeywords() {

	global $db, $slug_cat, $id_menu, $id_article;

	$slug = $slug_cat;

	$txtKeywords = getConstant('keywords');

	$txt = "";



	if ($slug == "home") {

		$txt = $txtKeywords;

	}



	if (!empty($slug)) {

		$tb = array(

			1 => 'article',

			2 => 'gallery',

			6 => 'product',

			9 => 'tour',

			10 => 'gift',

			11 => 'car',

			17 => 'project',

			18 => 'product',

		);

		$type_id = 0;



		$db->table = "category";

		$db->condition = "slug = '".$slug."'";

		$db->order = "";

		$db->limit = 1;

		$rows = $db->select();

		if($db->RowCount>0) {

			foreach($rows as $row) {

				$txt = (!empty($row['keywords']))? $row['keywords'] : $row['name'];

				$type_id = $row['type_id']+0;

			}

			$tb_name = $tb[$type_id];



			if (!empty($id_menu) && $id_menu != 0) {

				$db->table = $tb_name . "_menu";

				$db->condition = $tb_name . "_menu_id = ".$id_menu;

				$db->order = "";

				$db->limit = 1;

				$rows = $db->select();

				foreach($rows as $row) {

					$txt = (!empty($row['keywords']))? $row['keywords'] : $row['name'];

				}

			}

			if (!empty($id_article) && $id_article != 0) {

				$article_id = $id_article;

				$db->table = $tb_name;

				$db->condition = $tb_name . "_id = ".$article_id;

				$db->order = "";

				$db->limit = 1;

				$rows = $db->select();

				foreach($rows as $row) {

					if($slug=='du-an-dau-tu' || $slug=='gioi-thieu-du-an') $txt = (!empty($row['keywords']))? $row['keywords'] : $row['name'] . ', ' . $txt;

					else $txt = (!empty($row['keywords']))? $row['keywords'] : $row['name'];

				}

			}

		}

	}



	if ($slug == "error-404") {

		$txt = "Error pages 404!, ".$txtKeywords;

	}

	if ($slug == "lien-he") {

		$txt = 'Liên hệ, '.$txtKeywords;

	}

	if ($slug == "contact") {

		$txt = "Contact, ".$txtKeywords;

	}

	if ($slug == "gio-hang") {

		$txt = "Giỏ hàng, ".$txtKeywords;

	}

	if ($slug == "tim-kiem") {

		$txt = "Tìm kiếm, ".$txtKeywords;

	}



	return stripslashes($txt);

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @param int $length

 * @return string

 */

function getRandomString($length = 15) {

	$validCharacters = "abcdefghijklmnopqrstuxyvwz0123456789";

	$validCharNumber = strlen($validCharacters);



	$result = "";



	for ($i = 0; $i < $length; $i++) {

		$index = mt_rand(0, $validCharNumber - 1);

		$result .= $validCharacters[$index];

	}



	return $result;

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @param $emailReply

 * @param $nameReply

 * @param $emailTo

 * @param $nameTo

 * @param $subject

 * @param $content

 * @param string $file

 * @return bool

 */

function sendMailFn($emailReply, $nameReply, $emailTo, $nameTo, $subject, $content, $file = '') {

	$content =	str_replace("\n"	, "<br>"	, $content);

	$content =	str_replace("  "	, "&nbsp; "	, $content);

	$content =	str_replace("<script>","&lt;script&gt;", $content);



	$mail = new PHPMailer();

	$mail->IsSMTP();



	$mail->Host = getConstant("SMTP_host");

	$mail->Port = getConstant("SMTP_port");

	$mail->SMTPDebug = 0;

	// 1 = errors and messages

	// 2 = messages only

	$mail->SMTPAuth = true;

	(getConstant("SMTP_secure")!="none") ? $mail->SMTPSecure = getConstant("SMTP_secure") : "";

	$mail->Username = getConstant("SMTP_username");

	$mail->Password = getConstant("SMTP_password");



	$mail->SetFrom($mail->Username,getConstant("SMTP_mailname"));



	$mail->AddAddress($emailTo, $nameTo);

	$mail->AddReplyTo($emailReply, $nameReply);



	$mail->Subject = $subject;

	$mail->CharSet = "utf-8";

	$body = $content;

	$mail->Body = $body;

	($file!='') ? $mail->AddAttachment($file) : "";

	$mail->IsHTML(true);



	if(!$mail->Send()) {

		return FALSE;

	} else {

		return TRUE;

	}

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @param $currentPage

 * @param $maxPage

 * @param string $path

 */

function showPageNavigation($currentPage, $maxPage, $path = '') {

	if ($maxPage <= 1) {

		return;

	}

	$suffix = '';



	$nav = array(

		'left'	=>	3,

		'right'	=>	3,

	);

	if ($maxPage < $currentPage) {

		$currentPage = $maxPage;

	}

	$max = $nav['left'] + $nav['right'];



	if ($max >= $maxPage) {

		$start = 1;

		$end = $maxPage;

	}

	elseif ($currentPage - $nav['left'] <= 0) {

		$start = 1;

		$end = $max + 1;

	}

	elseif (($right = $maxPage - ($currentPage + $nav['right'])) <= 0) {

		$start = $maxPage - $max;

		$end = $maxPage;

	}

	else {

		$start = $currentPage - $nav['left'];

		if ($start == 2) {

			$start = 1;

		}



		$end = $start + $max;

		if ($end == $maxPage - 1) {

			++$end;

		}

	}



	$navig = '<div class="page-navigation"><ul class="pagination pagination-sm">';

	if ($currentPage >= 2) {

		if ($currentPage >= $nav['left']) {

			if ($currentPage - $nav['left'] > 2 && $max < $maxPage) {

				$navig .= '<li class="paginate_button"><a href="'.$path.'1'.$suffix.'">1</a></li>';

				$navig .= '<li class="paginate_button"><a>...</a></li>';

			}

		}

		$navig .= '<li class="paginate_button"><a href="'.$path.($currentPage - 1).$suffix.'"><i class="fa fa-step-backward"></i></a></li>';

	}



	for ($i=$start;$i<=$end;$i++) {

		if ($i == $currentPage) {

			$navig .= '<li class="paginate_button active"><a>'.$i.'</a></li>';

		}

		else {

			$pg_link = $path.$i;

			$navig .= '<li class="paginate_button"><a href="'.$pg_link.$suffix.'">'.$i.'</a></li>';

		}

	}



	if ($currentPage <= $maxPage - 1) {

		$navig .= '<li class="paginate_button"><a href="'.$path.($currentPage + 1).$suffix.'"><i class="fa fa-step-forward"></i></a></li>';



		if ($currentPage + $nav['right'] < $maxPage - 1 && $max + 1 < $maxPage) {

			$navig .= '<li class="paginate_button"><a>...</a></li>';

			$navig .= '<li class="paginate_button"><a href="'.$path.$maxPage.$suffix.'">'.$maxPage.'</a></li>';

		}

	}

	$navig .= '</ul></div>';



	echo $navig;

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @param $id

 */

function show_img_uploader ($id) {

	global $db;

	$list_img = "";

	$db->table = "uploads_tmp";

	$db->condition = "upload_id = ".$id;

	$db->order = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$list_img = $row['list_img'];

	}



	$img = explode(";",$list_img);

	if(count($img)>0) {

		for($i=0;$i<count($img);$i++) {

			if($img[$i] != ""){

				echo '<div class="show_img_upload">

					<a class="fancybox" data-fancybox-group="imagesupload" title="'.$img[$i].'" href="/uploads/photos/'.$img[$i].'">

						<img width="40%" data-toggle="tooltip" data-placement="top" title="Xem hình" src="/uploads/photos/'.$img[$i].'">

					</a>

					<a onClick="delete_img_upload(\''.$id.'\',\''.$img[$i].'\');" class="icon_delete_img"></a>

				</div>';



			}

		}

	}

}



//----------------------------------------------------------------------------------------------------------------------

/** Lấy thông tin User

 * @param int $id

 * @return array

 * @throws DatabaseConnException

 */
function getCustom($id = 0) {

	global $db;

	$info = array();

	$db->table = "exhibition_history";

	$db->condition = "id_exhibition = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();
	foreach ($rows as $row) {
		return $row['creator_id'];
	}
}
function getInfoUser($id = 0) {

	global $db;

	$info = array();

	$db->table = "core_user";

	$db->condition = "user_id = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row) {

		$info[0] = stripslashes($row['full_name']);

		$info[1] = stripslashes($row['apply']);

		$info[2] = stripslashes($row['phone']);

		$info[3] = stripslashes($row['email']);

		if($row['img']=='no' || $row['img']=='' ) {

			$info[4] = '/uploads/user/no-avatar-' .  ($row['gender']+0) . '.png';

			$info[4] = '<img src="' . $info[4] . '" title="' . stripslashes($row['full_name']) . '" >';

		} else {

			$info[4] = '/uploads/user/sm_' . $row['img'];

			$info[4] = '<img src="' . $info[4] . '" title="' . stripslashes($row['full_name']) . '" >';

		}

		$info[5] = $row['vote']+0;

		$info[6] = stripslashes($row['user_name']);

		$info[7] = $row['current_agency']+0;

		$info[8] = $row['user_id']+0;

		if($row['img']=='no' || $row['img']=='' ) {

			$info[9] = '/uploads/user/lg-no-avatar-' .  ($row['gender']+0) . '.png';

			$info[9] = '<img src="' . $info[9] . '" title="' . stripslashes($row['full_name']) . '" >';

		} else {

			$info[9] = '/uploads/user/' . $row['img'];

			$info[9] = '<img src="' . $info[9] . '" title="' . stripslashes($row['full_name']) . '" >';

		}

		$info[10] = stripslashes($row['address']);

		if($row['img']=='no' || $row['img']=='' ) {

			$info[11] = HOME_URL . '/images/logo.jpg';

		} else {

			$info[11] = HOME_URL . '/uploads/user/sm_' . $row['img'];

		}

		$info[12] = $row['btn_notify1']+0;

		$info[13] = $row['btn_notify2']+0;

		$info[14] = stripslashes($row['city']);

	}

	return $info;

}

//Lấy tên của nhân viên 

function getNameUser($id = 0) {

	global $db;

	$split= "";

	$name = "";

	$db->table = "core_user";

	$db->condition = "user_id = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row) {

		$name =  stripslashes($row['full_name']);

	}

	

	$split = explode(" ", $name);

	$split = array_pop($split);

	return $split;

}

//Lấy tên phòng 

/*function getRoleName($id = array()) {

	$str = array();

	global $db;

	$db->table = "core_role";

	$db->condition = "role_id IN (".$id.")";

	$db->limit = "";

	$rows = $db->select();

	foreach($rows as $row) {

		$str[] = stripslashes($row['name']);

	}

	return $str;

}

*/

function getStatusToAgency($id) {

	global $db;

	$str = '';

	$db->table = "status";

	$db->condition = "status_id = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row) {

		$str = stripslashes($row['agency']);

	}

	

	return $str;

}

//Lấy trạng thái khi chuyển 



function getStatusAsMove($id) {

	global $db;

	$str = 0;

	$db->table = "status";

	$db->condition = "status_id = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row) {

		$str = $row['child']+0;

	}

	

	return $str;

	

}



//Lấy role khi di chuyển 



function getRoleToStatus($id= 0) {

	global $db;

	$role = 0;

	$db->table = "status_role";

	$db->condition = "status = " . ($id+0).  " AND is_key = 1";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach($rows as $row) {

	if(($row['role']+0)!= 1 && ($row['role']+0)!= 2) $role = ($row['role']+0);	

	}

	return $role;	

}

// Lấy cột trong history dựa vào role 



function getHistoryCol($id) {

	$str = array();

	switch($id) {

		case 1 : $str = array('sales_date_end', 'sales_id');

				break;

		case 2 : $str = array('design_date_end', 'design_id');

				break;		

		case 3 : $str = array('offset_date_end', 'offset_id');

				break;

		case 4 : $str = array('printing_date_end', 'printing_id');

				break;

		case 5 : $str = array('packaging_date_end', 'packaging_id');

				break;

		case 6 : $str = array('delivery_date_end', 'delivery_id');

				break;

		default: break;

	}

	return $str;

}

function getHistoryColToRole($id) {

	$str = array();

	switch($id) {

                case 1 : $str = array('sales_date_end', 'sales_id');

				break;

		case 3 : $str = array('sales_date_end', 'sales_id');

				break;

		case 4 : $str = array('design_date_end', 'design_id');

				break;		

		case 5 : $str = array('offset_date_end', 'offset_id');

				break;

		case 6 : $str = array('printing_date_end', 'printing_id');

				break;

		case 7 : $str = array('packaging_date_end', 'packaging_id');

				break;

		case 8 : $str = array('delivery_date_end', 'delivery_id');

				break;

		default: break;

	}

	return $str;

}

//Lấy thông tin khách hàng

function getInfoCustomer($id = 0) {

	global $db;

	$info = array();

	$db->table = "customer";

	$db->condition = "customer_id = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row) {

		$info[0] = stripslashes($row['company_name']);

		$info[1] = stripslashes($row['tax_code']);

		$info[2] = stripslashes($row['full_name']);

		$info[3] = stripslashes($row['phone']);

		

		$info[4] =  stripslashes($row['email']);

		$info[5] = stripslashes($row['address']);

		$info[6] =  stripslashes($row['skype']);

		

	}

	return $info;

}



//Lấy thông tin các mặt hàng trong 1 đơn hàng



function getInfoItems($id = 0) {

	global $db;

	$info = array();

	$db->table = "itemproduct";

	$db->condition = "exhibition_id = " . ($id+0);

	$db->limit = "";

	$db->order = "itemproduct_id  ASC";

	

	$rows = $db->select();

	foreach($rows as $row) {

		$info[] = stripslashes($row['product_name']);		

	}

	return $info;

}

//Lấy thông tin các vật liệu đề xuất

function getInfoProposalItems($id = 0) {

	global $db;

	$info = array();

	$db->table = "commodity";

	$db->condition = "proposal_id = " . ($id+0);

	$db->limit = "";

	$db->order = "commodity_id  ASC";

	

	$rows = $db->select();

	foreach($rows as $row) {

		$info[] = array(

				 'name' => stripslashes($row['material_name']),

				 'size' => stripslashes($row['size']),

				 'unit' => stripslashes($row['unit']),

				 'number' => stripslashes($row['number']),

				 );

	}

	return $info;

}

//Lấy thông tin người tạo đơn hàng

function getCreatorId($id) {
	global $db;
	$info =0;
	$db->table = "exhibition_history";
	$db->condition = "id_exhibition = " . ($id+0);
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$info = ($row['sales_id']+0 > 0)?$row['sales_id']+0 : $row['creator_id']+0 ;		
	}
	return $info;
}

//Lấy  trạng thái  tương ứng của người dùng

function getKeyStatus($id= 0) {

	global $db;

	$status = '';

	$db->table = "status_role";

	$db->condition = "role = " . ($id+0).  " AND is_key = 1";

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row) {

	$status = stripslashes($row['status']);	

	}

	return $status;

}



//Lấy trạng thái user có quyền chuyển 



function getStatusToRole($id=0) {

	global $db;

	$status = array();

	$db->table = "status_role";

	$db->condition = "role = " . ($id+0).  " AND is_key = 0";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	

	foreach($rows as $row) {

	$status[] = stripslashes($row['status']);	

	}

	return $status;

	

}

// Lấy tên của trạng thái

function getStatusName($id=0) {

	global $db;

	$status = '';

	$db->table = "status";

	$db->condition = "status_id = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row) {

	$status = stripslashes($row['description']);	

	}

	return $status;



}
//Lay role hien tai
function getCurrentAgency($id = 0) {
	$str = 0;
	global $db;
	$db->table = "core_user";
	$db->condition = "user_id = " . $id;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		$str = $row['current_agency'];
	}
	return $str;
}

/** Lấy quyền quản trị

 * @return array

 */
 
 /* Lấy những user tham gia vào thực hiện 1 đơn hàng có exhibition_id = x*/
 
 function getListUsersOfOrder($id=0) {
	 $result = array();
	global $db;
		$db->table = "exhibition_history";
		$db->condition = "id_exhibition = ". $id;
		$db->order = "";
		$db->limit = 1;
		$rows = $db->select();
	   foreach($rows as $row) {
			if($row['sales_id']!="" || ($row['sales_id']+0) != 0) $result[] = $row['sales_id']+0;
			if($row['design_id']!="" || ($row['design_id']+0) != 0) $result[] = $row['design_id']+0;
			if($row['offset_id']!="" || ($row['offset_id']+0) != 0) $result[] = $row['offset_id']+0;
			if($row['printing_id']!="" || ($row['printing_id']+0) != 0) $result[] = $row['printing_id']+0;
			if($row['packaging_id']!="" || ($row['packaging_id']+0) != 0) $result[] = $row['packaging_id']+0;
			if($row['delivery_id']!="" || ($row['delivery_id']+0) != 0) $result[] = $row['delivery_id']+0;
	   }	   
	 return $result;
 }

function corePrivilegeSlug($id) {

	global $db;

	$role_id = array();

	$db->table = "role_user";

	$db->condition = "`user` = $id";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach($rows as $row) {

		array_push($role_id, $row['role']+0);

	}

	if(count($role_id)>0) $role_id = implode(',', $role_id);

	else $role_id = 0;



	$corePrivilegeSlug = array();

	$db->table = "core_privilege";

	$db->condition = "`type` = 'ol' AND `role_id` IN ($role_id)";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	$stt = 0;

	foreach ($rows as $row) {

		$corePrivilegeSlug['ol'][$stt] = $row['privilege_slug'];

		$stt++;

	}

	$corePrivilegeSlug['ol'][$stt] = 'home';

	$corePrivilegeSlug['ol'][$stt+1] = 'user';

	$corePrivilegeSlug['ol'][$stt+2] = 'page';



	$db->table = "core_privilege";

	$db->condition = "`type` != 'ol' and `role_id` IN ($role_id)";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	$stt = 0;

	foreach ($rows as $row) {

		$corePrivilegeSlug['op'][$stt] = $row['privilege_slug'];

		$stt++;

	}

	$corePrivilegeSlug['op'][$stt] = 'main';

	$corePrivilegeSlug['op'][$stt+1] = 'user_profile';

	$corePrivilegeSlug['op'][$stt+2] = 'view';

	$corePrivilegeSlug['op'][$stt+3] = 'notify';

	// Quyền riêng dành cho Developer

	if($id==1) {

		$corePrivilegeSlug['op'][$stt+4] = 'hosting_domain';

	}

	if($id==2) {

		$corePrivilegeSlug['op'][$stt+4] = 'plugin_dnw';

	}



	return $corePrivilegeSlug;

}



//----------------------------------------------------------------------------------------------------------------------

function getSlugCategory($id) {

	global $db;

	$slug = "";



	$db->table = "category";

	$db->condition = "category_id = ".($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select('slug');



	foreach($rows as $row) {

		$slug = $row['slug'];

	}



	return stripslashes($slug);

}

function getNameCategory($id) {

	global $db;

	$name = "";



	$db->table = "category";

	$db->condition = "category_id = ".($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select('name');



	foreach($rows as $row) {

		$name = $row['name'];

	}



	return stripslashes($name);

}

function getIdCategory($slug) {

	global $db;

	$id = "";



	$db->table = "category";

	$db->condition = "slug = '".$slug."'";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select('category_id');



	foreach($rows as $row) {

		$id = $row['category_id']+0;

	}



	return $id;

}



function getCommentCategory($id) {

	global $db;

	$str = "";



	$db->table = "category";

	$db->condition = "category_id = ".($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select('comment');



	foreach($rows as $row) {

		$str = $row['comment'];

	}



	return stripslashes($str);

}



//----------------------------------------------------------------------------------------------------------------------

function getIdArticle($slug, $position = 'last') {

	$item = array();

	$id = 0;



	$item = explode('-',$slug);

	if($position=='first') {

		$id = $item[0];

	} else {

		$item = explode('.',$item[count($item)-1]);

		$id = $item[0];

	}

	return $id+0;

}

//----------------------------------------------------------------------------------------------------------------------

function getIdMenu($slug_cat, $menu_sub) {

	global $db;

	$tb = array(

		1 => 'article_menu',

		2 => 'gallery_menu',

		6 => 'product_menu',

		9 => 'tour_menu',

		10 => 'gift_menu',

		11 => 'car_menu',

		17 => 'project_menu',

		18 => 'product_menu'

	);



	$db->table = "category";

	$db->condition = "slug = '".$slug_cat."'";

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select('type_id');



	$id = 0;



	if($db->RowCount>0) {

		$tb_name = $tb[($rows[0]['type_id']+0)];



		$db->table = $tb_name;

		$db->condition = "slug = '".$menu_sub."'";

		$db->order = "";

		$db->limit = 1;

		$rows = $db->select($tb_name.'_id');

		if($db->RowCount>0) {

			$id = $rows[0][$tb_name.'_id']+0;

		}

	}

	return $id;

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * @param $id

 * @return string

 */

function getNameMenuPro($id){

	global $db;

	$str = "";

	$db->table = "product_menu";

	$db->condition = "product_menu_id = ".($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$str = $row['name'];

	}

	return stripslashes($str);

}



function getNameMenuArt($id){

	global $db;

	$str = "";

	$db->table = "article_menu";

	$db->condition = "article_menu_id = ".($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$str = $row['name'];

	}

	return stripslashes($str);

}



function getSlugMenu($id, $tb) {

	global $db;

	$str = "";

	$db->table = $tb."_menu";

	$db->condition = $tb."_menu_id = ".($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$str = $row['slug'];

	}

	return stripslashes($str);

}



function getNameMenu($id, $tb){

	global $db;

	$str = "";

	$db->table = $tb."_menu";

	$db->condition = $tb."_menu_id = ".($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row){

		$str = $row['name'];

	}

	return stripslashes($str);

}



//----------------------------------------------------------------------------------------------------------------------

function getOgImage($slug_cat = '', $id_menu = 0, $id_article = 0) {

	global $db;

	$tb_i = 0;

	$dir_dest = ROOT_DIR . DS . 'uploads' . DS;

	$image = HOME_URL . '/images/logo.jpg';

	$tb = array(

		1 => 'article',

		2 => 'gallery',

		6 => 'product',

		9 => 'tour',

		10 => 'gift',

		11 => 'car',

		17 => 'project',

		18 => 'product'

	);



	$db->table = "category";

	$db->condition = "slug = '".$slug_cat."'";

	$db->order = "";

	$db->limit = 1;

	$rows_cat = $db->select();

	if($db->RowCount>0) {

		foreach($rows_cat as $row_cat) {

			$tb_i = $row_cat['type_id']+0;

			if(($row_cat['img']!='no') && glob($dir_dest . 'category' . DS . '*' . $row_cat['img'])) {

				$image = HOME_URL . '/uploads/category/' . $row_cat['img'];

			}

		}

		$tb_name = $tb[$tb_i];
		$db->table = $tb_name . "_menu";

		$db->condition = $tb_name . "_menu_id = " . $id_menu;

		$db->order = "";

		$db->limit = 1;

		$rows_menu = $db->select();

		if($db->RowCount>0) {

			foreach($rows_menu as $row_menu) {

				if(($row_menu['img']!='no') && glob($dir_dest . $tb_name . '_menu' . DS . '*' . $row_menu['img'])) {

					$image = HOME_URL . '/uploads/' . $tb_name . '_menu/' . $row_menu['img'];

				}

			}
			$db->table = $tb_name;

			$db->condition = $tb_name . "_id = " . $id_article;

			$db->order = "";

			$db->limit = 1;

			$rows_art = $db->select();

			if($db->RowCount>0) {

				foreach($rows_art as $row_art) {

					if($tb_i == 6 || $tb_i == 17 || $tb_i == 18) {

						$img = array();

						$list_img = "";

						$db->table = "uploads_tmp";

						$db->condition = "upload_id = " . ($row_art['upload_id']+0);

						$db->order = "";

						$db->limit = 1;

						$rows_pr = $db->select();

						foreach ($rows_pr as $row_pr){

							$list_img = $row_pr['list_img'];
						}

						$img = explode(";", $list_img);

						if(!empty($img[0]) && glob($dir_dest .'photos' . DS . '*' . $img[0])) {

							$image = HOME_URL . '/uploads/photos/' . $img[0];
						}
					} else {

						if(($row_art['img']!='no') && glob($dir_dest . $tb_name . DS . '*' . $row_art['img'])) {

							$image = HOME_URL . '/uploads/' . $tb_name . '/' . $row_art['img'];
						}
					}
				}
			}
		}
	}
	return $image;

}



function showRatings($qty = 0) {

	$star = $star_half = $star_o = 0;

	$string = '';

	$qty = $qty+0;

	$r_qty = round($qty,2);

	$s_qty = strstr($r_qty, '.');

	$s_qty = $s_qty+0;

	if($s_qty>0.25 && $s_qty<0.75) {

		$star_half = 1;

	}

	if($s_qty<0.5) {

		$star = round($qty);

		$star_o = 5 - ($star + $star_half);

	} elseif($s_qty>=0.5 && $s_qty<0.75) {

		$star = round($qty)-1;

		$star_o = 5 - ($star + $star_half);

	} else {

		$star = round($qty);

		$star_o = 5 - ($star + $star_half);

	}

	for($i=5; $i>0; $i--) {

		if($star_o > 0) {

			$string .='<i class="c-ratings fa fa-star-o" rel="' . $i . '"></i>';

			$star_o--;

		} elseif($star_half > 0) {

			$string .='<i class="c-ratings fa fa-star-half-o" rel="' . $i . '"></i>';

			$star_half--;

		} elseif($star > 0) {

			$string .='<i class="c-ratings fa fa-star" rel="' . $i . '"></i>';

			$star--;

		} else {}

	}

	return $string;

}



function showFileBackupData(array $currentdir, $dir_dest) {

	?>

	<table class="table table-manager table-striped table-bordered table-hover">

		<thead>

		<tr>

			<th>STT</th>

			<th>Tên file</th>

			<th>Dung lương</th>

			<th>Thời gian</th>

			<th>Chức năng</th>

		</tr>

		</thead>

		<tbody>

		<?php

		$date = new DateClass();

		$string = array();

		$timefile = time();

		for ($i=0;$i<count($currentdir);$i++) {

			$entry = $currentdir[$i];

			if (!is_dir($entry)) {

				$name = $entry;

				$string = explode("_",$name);

				$filesize = @filesize($dir_dest."/".$name);

				$timefile = str_replace(".sql.gz","",$string[1]);

				$timefile = str_replace(".gz","",$timefile);

				$timefile = str_replace(".sql","",$timefile);

				?>

				<tr>

					<td align="center"><?php echo $i+1?></td>

					<td><?php echo $string[1]?></td>

					<td align="right"><?php echo size_format($filesize)?></td>

					<td align="center"><?php echo $date->vnFull($timefile)?></td>

					<td align="center">

						<a  data-toggle="tooltip" data-placement="left" title="Tải xuống" target="_blank" href="<?php echo HOME_URL . '/cronjobs/' . $name;?>"><img src="images/download.png"></a>&nbsp;&nbsp;

						<a  data-toggle="tooltip" data-placement="right" title="Xóa file" class="ol-3w-confirm" style="cursor: pointer;" id="/?ol=backup&op=backup_process&filename=<?php echo $name?>" ><img src="images/remove.png"></a>

					</td>

				</tr>

			<?

			}

		} ?>

		</tbody>

	</table>

	<script>

		$(".ol-3w-confirm").click(function() {

			var element = $(this);

			var action = element.attr("id");

			confirm("File sao lưu cơ sở dữ liệu này sẽ được xóa và không thể phục hồi lại nó.\nBạn có muốn thực hiện không?", function() {

				if(this.data == true) window.location.href = action;

			});

		});

	</script>

<?

}



//----------------------------------------------------------------------------------------------------------------------

/**

 * Hiển thị thay đổi thông tin cá nhân

 */

function showInformation($id = 0) {

	?>

	<input type="hidden" name="url" value="change_profile">

	<input type="hidden" name="type" value="update_info">

		<?php

		$date = new DateClass();

		global $db;

		$db->table = "core_user";

		$db->condition = "user_id = " . $id;

		$db->order = "";

		$rows = $db->select();

		foreach($rows as $row) {

			$gender = $row['gender'];

			$birthday = $date->vnDate($row['birthday']);

			$img = $row['img'];

			?>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Tên đăng nhập:</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="user_name" id="user_name" readonly value="<?php echo stripslashes($row['user_name'])?>" ></div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Nhóm nhân viên:</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="role_id" id="role_id" readonly value="<?php echo groupAdmin($row['user_id'])?>" ></div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Họ và tên:</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="full_name" id="full_name" value="<?php echo stripslashes($row['full_name'])?>" maxlength="150" ></div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Giới tính:</label></div>

				<div class="col-md-9 col-sm-8 col-xs-12">
					<select class="form-control" name="gender" id="gender" style="width: 120px;">

						<option value="0" <?php echo $gender==0?"selected":""?>>Khác...</option>

						<option value="1" <?php echo $gender==1?"selected":""?>>Nam</option>

						<option value="2" <?php echo $gender==2?"selected":""?>>Nữ</option>

					</select>
					</div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Ngày sinh:</label></div>

				<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control input-datetime" type="text" name="birthday" style="width: 120px;" value="<?php echo $birthday?>"></div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Email:</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="email" name="email" id="email" value="<?php echo stripslashes($row['email'])?>" maxlength="200" ></div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Số điện thoại:</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="phone" id="phone" value="<?php echo $row['phone']?>" maxlength="20"></div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Địa chỉ:</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="address" id="address" value="<?php echo stripslashes($row['address'])?>" maxlength="255"></div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Vị trí (công ty):</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="apply" id="apply" value="<?php echo stripslashes($row['apply'])?>" maxlength="255"></div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Hình đại diện:</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12">
					<input type="hidden" name="img" value="<?php echo $img?>" />

					<input class="form-control file file-img" type="file" name="img" data-show-upload="false" data-max-file-count="1" accept="image/*">

			</div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Trạng thái:</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12">

					<span style="line-height: 40px;"><?php echo $row['is_active']+0==0?"Đóng":"Mở"?></span>
            </div>

			<div class="col-md-3 col-sm-4 col-xs-12"><label>Cập nhật gần nhất:</label></div>
<div class="col-md-9 col-sm-8 col-xs-12" style="line-height: 40px;"><?php echo $date->vnDateTime($row['modified_time'])?>&nbsp;&nbsp; - &nbsp;&nbsp;<b>Thực hiện:</b> <?php echo getUserName($row['user_id_edit']);?></div>
		<?

		}

		?>

		<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Mật khẩu hiện tại:</label></div>

		<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="password" name="passwordold" id="passwordold" autocomplete="off" maxlength="16"></div>

		

	
		<div class="col-md-12 col-sm-12 col-xs-12 chuanutconfig"> 

			<button class="btn btn-round color-1 material-design nuthemmuc" id="btn_change_info"  type="submit" name="update_info"  style="margin-top: 10px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Lưu thiết lập"><i class="fa fa-save" ></i> <span>Lưu lại</span></button>

			<button class="btn btn-round color-1 material-design nuthemmuc nutlammoi"  type="reset"  style="margin-top: 10px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Làm mới "><i class="fa fa-recycle" ></i> <span>Nhập lại</span></button>

			<button class="btn btn-round color-1 material-design nuthemmuc saoluudulieu"  onclick="location.href='/'"  style="margin-top: 10px;" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thoát khỏi cấu hình"><i class="fa fa-reply" ></i> <span>Thoát</span></button>
			</div>


	<script>

		window.onload=use_change_profile();

		$('.input-datetime').datetimepicker({

			mask:'39/19/9999',

			lang:'vi',

			timepicker: false,

			format:'<?php echo TTH_DATE_FORMAT?>'

		});

		$('.file-img').fileinput({

			<?php if($img!='no' && $img!='') { ?>

			initialPreview: [

				"<img src='../uploads/user/<?php echo $img?>' class='file-preview-image' title='<?php echo $img?>' alt='<?php echo $img?>'>"

			],

			<?php } ?>

			allowedFileExtensions : ['jpg', 'png','gif']

		});

	</script>

<?

}




function groupAdmin($id) {

	global $db;

	$str = $role_id = array();

	$db->table = "role_user";

	$db->condition = "`user` = $id";

	$db->limit = "";

	$db->order = "";

	$rows = $db->select();

	foreach ($rows as $row) {

		array_push($role_id, $row['role']+0);

	}

	if(count($role_id)>0) $role_id = implode(',', $role_id);

	else $role_id = 0;

	$db->table = "core_role";

	$db->condition = "role_id IN ($role_id)";

	$db->order = "";

	$rows = $db->select();

	foreach($rows as $row) {

		array_push($str, stripslashes($row["name"]));

	}

	return implode('; ', $str);

}



/**

 * Đổi mật khẩu cá nhân

 */

function showChangePassword (){

	?>

	<input type="hidden" name="url" value="change_profile">

	<input type="hidden" name="type" value="update_pass">

	<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Mật khẩu hiện tại:</label></div>

		<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="password" name="password2old" id="password2old" autocomplete="off" maxlength="16"></div>

		<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Mật khẩu mới:</label></div>

			<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="password" name="password" id="password" autocomplete="off" maxlength="16"></div>

		<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Nhập lại mật khẩu:</label></div>
<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="password" name="rePassword" id="rePassword" autocomplete="off" maxlength="16"></div>

				<div class="col-md-12 col-sm-12 col-xs-12 chuanutconfig"> 

			<button class="btn btn-round color-1 material-design nuthemmuc"  id="btn_change_pass"  type="submit" name="update_pass"  style="margin-top: 10px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Lưu thiết lập"><i class="fa fa-save" ></i> <span>Lưu lại</span></button>

			<button class="btn btn-round color-1 material-design nuthemmuc nutlammoi"  type="reset"  style="margin-top: 10px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Làm mới "><i class="fa fa-recycle" ></i> <span>Nhập lại</span></button>

			<button class="btn btn-round color-1 material-design nuthemmuc saoluudulieu"  onclick="location.href='/'"  style="margin-top: 10px;" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thoát khỏi cấu hình"><i class="fa fa-reply" ></i> <span>Thoát</span></button>
			</div>

	<script>

		window.onload=use_change_password();

	</script>

<?

}

/*  NDN ................ */

/* Lấy bảng chọn thuộc Đơn vị  */

function loadSelectAgencyFx($id) {

	global $db;

	$selected = $result = '';

	if($id==0) $selected = 'selected';



	$result .= '<select class="form-control" name="agency" required>';

	$result .= '<option value="0" ' . $selected . '>[Corp.] - TỔNG CÔNG TY</option>';

	$result .= loadItemAgencyFx($db, 0, 0, $id);

	$result .= '</select>';

	return $result;

}

function loadItemAgencyFx($db, $level, $parent, $par){

	$result = '';

	$db->table = "agency";

	$db->condition = "`is_active` = 1 and `parent` = ".$parent;

	$db->order = "`sort` ASC";

	$db->limit = "";

	$rows = $db->select();

	foreach($rows as $row) {

		$space = '--';

		for($i=0; $i<$level; $i++) {

			$space = $space . '--';

		}

		$selected = '';

		if($row['agency_id']==$par) $selected = 'selected';

		$result .= '<option value="' . $row['agency_id'] . '" ' . $selected . '>' . $space . '| ' . stripslashes($row['name']) . '</option>';

		$result .= loadItemAgencyFx($db, $level+1, $row['agency_id']+0, $par);

	}

	return $result;

}

/*-------------------------------*/

function loadSelectAgencySelect($onchange, $id, $ol_agency = array()) {

	global $db;

	$selected = $disabled = $result = '';

	if($id==0) $selected = 'selected';

	if(!in_array(0, $ol_agency)) $disabled = ' disabled';



	$result .= '<select id="_agency" onchange="' . $onchange . '" class="form-control" name="agency">';

	$result .= '<option value="0" ' . $selected . $disabled . '>[Corp.] - TỔNG CÔNG TY</option>';

	$result .= loadItemAgencySelect($db, 0, 0, $id, $ol_agency);

	$result .= '</select>';

	return $result;

}

function loadItemAgencySelect($db, $level, $parent, $par, $ol_agency){

	$result = '';

	$db->table = "agency";

	$db->condition = "`is_active` = 1 AND `parent` = $parent";

	$db->order = "`sort` ASC";

	$db->limit = "";

	$rows = $db->select();

	foreach($rows as $row) {

		$space = '--';

		for($i=0; $i<$level; $i++) {

			$space = $space . '--';

		}

		$selected = $disabled = '';

		if($row['agency_id']==$par) $selected = 'selected';

		if(!in_array($row['agency_id'], $ol_agency)) $disabled = ' disabled';

		$result .= '<option value="' . $row['agency_id'] . '" ' . $selected . $disabled . '>' . $space . '| ' . stripslashes($row['name']) . '</option>';

		$result .= loadItemAgencySelect($db, $level+1, $row['agency_id']+0, $par, $ol_agency);

	}

	return $result;

}



/* Danh sách chọn đơn vị nhận trong phần thêm lịch  */

function loadCalendarAgencySelect($db, $level, $parent, array $choice, $ol_agency = array()){

	$result = '';

	$db->table = "agency";

	$db->condition = "`is_active` = 1 and `parent` = ".$parent;

	$db->order = "`sort` ASC";

	$db->limit = "";

	$rows = $db->select();

	foreach($rows as $row) {

		$space = '--';

		for($i=0; $i<$level; $i++) {

			$space = $space . '--';

		}

		$selected = $disabled = '';

		if(in_array($row['agency_id'], $choice)) $selected = 'selected';

		if(!in_array($row['agency_id'], $ol_agency)) $disabled = ' disabled';

		$result .= '<option value="a;' . $row['agency_id'] . '" ' . $selected  . $disabled . '>' . $space . '| ' . stripslashes($row['name']) . '</option>';

		$result .= loadCalendarAgencySelect($db, $level+1, $row['agency_id']+0, $choice, $ol_agency);

	}

	return $result;

}



/* Danh sách chọn đơn vị nhận trong phần phân quyền  */

function loadSelectAgencyCore($db, $level, $parent, $par, $pre) {

	$result = '';

	$db->table = "agency";

	$db->condition = "`is_active` = 1 and `parent` = ".$parent;

	$db->order = "`sort` ASC";

	$db->limit = "";

	$rows = $db->select();

	foreach($rows as $row) {

		$space = '--';

		for($i=0; $i<$level; $i++) {

			$space = $space . '--';

		}

		$selected = '';

		if($row['agency_id']==$par) $selected = 'selected';

		$result .= '<option value="' . $pre . ';' . $row['agency_id'] . '" ' . $selected . '>' . $space . '| ' . stripslashes($row['name']) . '</option>';

		$result .= loadSelectAgencyCore($db, $level+1, $row['agency_id']+0, $par, $pre);

	}

	return $result;

}



/* Lấy Đơn vị chi nhánh chính Parent = 0  */

function getAgencyParent0($id) {

	global $db;

	$agency_id  = 0;

	$parent     = 999;

	$result     = 0;

	$db->table = "core_user";

	$db->condition = "`user_id` =" . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select("agency");

	foreach ($rows as $row) {

		$agency_id = $row['agency'] + 0;

	}

	$parent = $agency_id;



	while($parent != 0) {

		$db->table = "agency";

		$db->condition = "agency_id = " . ($parent);

		$db->order = "";

		$db->limit = 1;

		$rows = $db->select();

		if ($db->RowCount > 0) {

			foreach ($rows as $row) {

				$parent = ($row['parent'] + 0);

				$result = ($row['agency_id'] + 0);

			}

		} else $parent = 0;

	}

	return $result;

}



/* Lấy dãy ID Đơn vị của chính nó và các đơn vị con từ USER. */

function getAgencyElement($id) {

	global $db;

	$agency_id  = 0;

	$element    = TRUE;

	$result     = 0;

	$db->table = "core_user";

	$db->condition = "`user_id` =" . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select("agency");

	foreach ($rows as $row) {

		$agency_id = $row['agency'] + 0;

	}

	$result = $agency_id;



	while($element == TRUE) {

		$db->table = "agency";

		$db->condition = "`parent` IN (" . $agency_id . ")";

		$db->order = "";

		$db->limit = "";

		$rows = $db->select();

		if($db->RowCount>0) {

			$agency_id = '';

			$i = 0;

			foreach ($rows as $row) {

				if($i==0) $agency_id = ($row['agency_id']+0);

				else $agency_id .= ',' . ($row['agency_id']+0);

				$result .= ',' . ($row['agency_id']+0);

				$i++;

			}

		} else $element = FALSE;

	}

	return $result;

}



/* Lấy dẫy ID Đơn vị của chính nó và các đơn vị con từ AGENCY. */

function getAgencyElementPlus($id) {

	global $db;

	$agency_id  = $id;

	$element    = TRUE;

	$result     = 0;

	$result = $agency_id;

	while($element == TRUE) {

		$db->table = "agency";

		$db->condition = "`parent` IN (" . $agency_id . ")";

		$db->order = "";

		$db->limit = "";

		$rows = $db->select();

		if($db->RowCount>0) {

			$agency_id = '';

			$i = 0;

			foreach ($rows as $row) {

				if($i==0) $agency_id = ($row['agency_id']+0);

				else $agency_id .= ',' . ($row['agency_id']+0);

				$result .= ',' . ($row['agency_id']+0);

				$i++;

			}

		} else $element = FALSE;

	}

	return $result;

}



/* Lấy dẫy ID Đơn vị được phân quyền quản lý. */

function getAgencyToCore(array $core, $type = '/calendar_list;/') {

	$id = $result = array();

	$core = preg_grep($type, $core);

	$core = array_keys(array_flip($core));

	foreach ($core as $value) {

		$item = intval(substr(stristr($value, ';'), 1));

		array_push($id, $item);

	}



	foreach ($id as $value) {

		$item = getAgencyElementPlus($value);

		$item = explode(',', $item);

		$result = array_merge($item, $result);

	}

	$result = array_keys(array_flip($result));

	return $result;

}



/* Lấy dữ liệu table olala3w_agency */

function getTableAgency($id, $type='symbol') {

	global $db;

	$db->table = "agency";

	$db->condition = "`agency_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		return stripslashes($row[$type]);

	}

	if($type=='symbol' && $id==0) {

		return '[Corp.]';

	} elseif($type=='name' && $id==0) {

		return 'TỔNG CÔNG TY';

	} else return '(không rõ)';

}



/* Lấy dữ liệu table olala3w_core_role */

function getTableCoreRole($id, $type='name') {

	global $db;

	$db->table = "core_role";

	$db->condition = "`role_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		return stripslashes($row[$type]);

	}

	return '(không rõ)';

}



function loadSelectRoleSelect($onchange, $id, $ol_agency = array()) {

	global $db;

	$result = $query = '';

	if(count($ol_agency)>0) {

		$list_core = implode(',', $ol_agency);

		$query = " AND `agency` IN ($list_core)";

	}

	$result .= '<select id="_role" onchange="' . $onchange . '" class="form-control" name="role">';

	$result .= '<option value="0">Danh sách nhóm...</option>';

	$db->table = "core_role";

	$db->condition = "`is_active` = 1 AND `is_show` = 1" . $query;

	$db->order = "`role_id` ASC";

	$db->limit = "";

	$rows = $db->select();

	if($db->RowCount > 0) {

		foreach ($rows as $row) {

			$selected = '';

			if ($id == $row['role_id']) $selected = 'selected';

			$result .= '<option value="' . $row['role_id'] . '" ' . $selected . '>' . stripslashes($row['name']) . '</option>';

		}

	}

	$result .= '</select>';

	return $result;

}

function loadSelectMember($onchange, $id, $ol_agency = array()) {

	global $db;

	$result = $query = '';

	$list_agency = getAgencyElementPlus($id);

	if(count($ol_agency)>0) {

		$list_core = implode(',', $ol_agency);

		$query = " AND `agency` IN ($list_core)";

	}

	$result .= '<select id="_member" onchange="' . $onchange . '" class="form-control" name="member">';

	$result .= '<option value="0">Danh sách nhân viên...</option>';

	$db->table = "core_user";

	$db->condition = "`is_active` = 1 AND `is_show` = 1 AND `agency` IN ($list_agency)" . $query;

	$db->order = "`sort` ASC";

	$db->limit = "";

	$rows = $db->select();

	if($db->RowCount > 0) {

		foreach($rows as $row) {

			$result .= '<option value="' . ($row['user_id'] + 0) . '">' . stripslashes($row['full_name']) . '</option>';

		}

	}

	$result .= '</select>';

	return $result;

}



function getListUserNotify() {

	global $db;

	$result = array();



	$db->table = "core_privilege";

	$db->condition = "`privilege_slug` LIKE 'calendar_notify'";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach($rows as $row) {

		$db->table = "role_user";

		$db->condition = "`role` = " . ($row['role_id']+0);

		$db->order = "";

		$db->limit = "";

		$rows2 = $db->select();

		foreach ($rows2 as $row2) {

			array_push($result, $row2['user']+0);

		}

	}



	$result = array_keys(array_flip($result));

	return $result;

}

function getListUserNotify2($id = 0) {

	global $db;

	$result = array();



	$db->table = "role_user";

	$db->condition = "`role` = " . $id;

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach($rows as $row) {

		

			$result[] = $row['user']+0;

		

	}

	return $result;

}

function getListUserNotify3($id = 0) {

	global $db;

	$result = array();



	$db->table = "exhibition_history";

	$db->condition = "`id_exhibition` = " . $id;

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row) {

		
			if($row['creator_id']+0 > 0 )$result[] = $row['creator_id']+0;
			if($row['sales_id']+0 > 0 ) $result[] = $row['sales_id']+0;
			if($row['design_id']+0 > 0 )$result[] = $row['design_id']+0;
			if($row['offset_id']+0 > 0 )$result[] = $row['offset_id']+0;
			if($row['printing_id']+0 > 0 )$result[] = $row['printing_id']+0;
			if($row['packaging_id']+0 > 0 )$result[] = $row['packaging_id']+0;
			
	}

	return $result;

}

function insertNotify($id, array $personnel, $user, $type = 1) {

	date_default_timezone_set(TTH_TIMEZONE);

	global $db;

	$current_time = time();



	$db->table = "notify";

	$data = array(

			'calendar' => $id,

			'type' => $type,

			'created_time' => $current_time,

			'user_id' => $user

	);

	$db->insert($data);

	$notify_id = $db->LastInsertID;



	$list_notify = array();

	$list_notify = array_merge($personnel, getListUserNotify());

	array_push($list_notify, $user);

	$list_notify = array_keys(array_flip($list_notify));

	foreach ($list_notify as $value) {

		if($value>0) {

			$onoff = 0;

			$db->table = "core_user";

			$db->condition = "`user_id` = $value";

			$db->order = "";

			$db->limit = 1;

			$rows_onoff = $db->select();

			foreach($rows_onoff as $row_onoff) {

				$onoff = $row_onoff['btn_notify1']+0;

			}



			if ($value == $user) {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'status' => 1,

					'modified_time' => $current_time

				);

				$db->insert($data);

			} elseif($onoff==1) {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'modified_time' => $current_time

				);

				$db->insert($data);

			} else {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'status' => 1,

					'modified_time' => $current_time

				);

				$db->insert($data);

			}

		}

	}

	return true;

}

function insertNotify2($id, array $personnel, $user, $type = 1) {

	date_default_timezone_set(TTH_TIMEZONE);

	global $db;

	$current_time = time();

	$db->table = "notify";

	$data = array(

			'calendar' => $id,

			'type' => $type,

			'created_time' => $current_time,

			'user_id' => $user

	);

	$db->insert($data);

	$notify_id = $db->LastInsertID;



	$list_notify = array();

	$list_notify = array_merge($personnel, getListUserNotify());

	array_push($list_notify, $user);

	$list_notify = array_keys(array_flip($list_notify));

	foreach ($list_notify as $value) {

		if($value>0) {

			$onoff = 0;

			$db->table = "core_user";

			$db->condition = "`user_id` = $value";

			$db->order = "";

			$db->limit = 1;

			$rows_onoff = $db->select();

			foreach($rows_onoff as $row_onoff) {

				$onoff = $row_onoff['btn_notify1']+0;

			}



			if ($value == $user) {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'status' => 0,

					'modified_time' => $current_time

				);

				$db->insert($data);

			} elseif($onoff==1) {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'modified_time' => $current_time

				);

				$db->insert($data);

			} else {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'status' => 0,

					'modified_time' => $current_time

				);

				$db->insert($data);

			}

		}

	}

	return true;

}



function insertNotify3($id, array $personnel, $user, $type = 1, $msg) {

	date_default_timezone_set(TTH_TIMEZONE);

	global $db;

	$current_time = time();

	$db->table = "notify";

	$data = array(

			'calendar' => $id,

			'type' => $type,

			'msg' => $msg,

			'created_time' => $current_time,

			'user_id' => $user

	);

	$db->insert($data);

	$notify_id = $db->LastInsertID;

	$list_notify = array();

	$list_notify = array_merge($personnel, getListUserNotify());

	array_push($list_notify, $user);

	$list_notify = array_keys(array_flip($list_notify));

	foreach ($list_notify as $value) {

		if($value>0) {

			$onoff = 0;

			$db->table = "core_user";

			$db->condition = "`user_id` = $value";

			$db->order = "";

			$db->limit = 1;

			$rows_onoff = $db->select();

			foreach($rows_onoff as $row_onoff) {

				$onoff = $row_onoff['btn_notify1']+0;

			}



			if ($value == $user) {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'status' => 1,

					'modified_time' => $current_time

				);

				$db->insert($data);

			} elseif($onoff==1) {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'modified_time' => $current_time

				);

				$db->insert($data);

			} else {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'status' => 0,

					'modified_time' => $current_time

				);

				$db->insert($data);

			}

		}

	}

	return true;

}

	

function insertNotify4($id, array $personnel, $user, $type, $msg) {

	date_default_timezone_set(TTH_TIMEZONE);

	global $db;

	$current_time = time();

	$list_notify = array();

	$db->table = "notify";

	$data = array(

			'calendar' => $id,

			'type' => $type,

			'msg' => $msg,

			'created_time' => $current_time,

			'user_id' => $user

	);

	$db->insert($data);

	$notify_id = $db->LastInsertID;



	$list_notify = $personnel;

	

	$list_notify[] = $user;

	

	foreach ($list_notify as $value) {

		if($value>0) {

			$onoff = 0;

			$db->table = "core_user";

			$db->condition = "`user_id` = $value";

			$db->order = "";

			$db->limit = 1;

			$rows_onoff = $db->select();

			foreach($rows_onoff as $row_onoff) {

				$onoff = $row_onoff['btn_notify1']+0;

			}



			if ($value == $user) {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'status' => 1,

					'modified_time' => $current_time

				);

				$db->insert($data);

			} elseif($onoff==1) {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'modified_time' => $current_time

				);

				$db->insert($data);

			} else {

				$db->table = "notify_user";

				$data = array(

					'notify' => $notify_id,

					'user_id' => $value,

					'status' => 0,

					'modified_time' => $current_time

				);

				$db->insert($data);

			}

		}

	}

	return true;

}

function getStatusColor($id) {

	global $db;
        $str = '';

	$db->table = "status";

	$db->condition = "`status_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		$str =  stripslashes($row['color']);

	}

	return $str;

}


/* Truy vấn với bảng level */

function getColorLevel($id) {

	global $db;

	$db->table = "level";

	$db->condition = "`level_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		return stripslashes($row['color']);

	}

	return '#0092dd';

}

function getTableLevel($id, $type='class') {

	global $db;

	$db->table = "level";

	$db->condition = "`level_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		return stripslashes($row[$type]);

	}

	return '#0092dd';

}



/* Truy vấn với bảng calendar */

function getTableCalendar($id, $type='title') {

	global $db;

	$db->table = "calendar";

	$db->condition = "`calendar_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		return stripslashes($row[$type]);

	}

	return '-no-';

}

//Lấy giá trị nội dung bảng calendar2

function getContentCalendar($id, $type='title') {

	global $db;

	$db->table = "calendar";

	$db->condition = "`calendar_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		return stripslashes($row[$type]);

	}

	return '-no-';

}

/* Truy vấn với bảng document_type */

function getTableDocumentType($id, $type='title') {

	global $db;

	$db->table = "document_type";

	$db->condition = "`document_type_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		return stripslashes($row[$type]);

	}

	return '';

}



function convertTimeAgo($time) {

	date_default_timezone_set(TTH_TIMEZONE);

	$result = '';

	$time = time() - $time;

	if($time>0) {

		if($time<60) $result = $time . ' giây trước';

		elseif($time<3600) $result = round($time/60) . ' phút trước';

		elseif($time<86400) $result = round($time/3600) . ' giờ trước';

		elseif($time<604800) $result = round($time/86400) . ' ngày trước';

		elseif($time<2592000) $result = round($time/604800) . ' tuần trước';

		elseif($time<31536000) $result = round($time/2592000) . ' tháng trước';

		else $result = round($time/31536000) . ' năm trước';

	} else {

		$result = 'mới xong';

	}



	return $result;

}





function countLogWeek($user) {

	global $db;

	date_default_timezone_set(TTH_TIMEZONE);

	$week_start = date("Y-m-d", strtotime('monday this week'));

	$week_end = date("Y-m-d", strtotime('sunday this week'));

	$sum = 0;

	$db->table = "log";

	$db->condition = "`user_id` = '$user' AND `date` >= '$week_start' AND `date` <= '$week_end'";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	if($db->RowCount > 0) {

		foreach($rows as $row) {

			$sum = $sum + $row['count'];

		}

	}

	return formatNumberVN($sum);

}

function getOrderCode($id= 0) {

	$str = '';

	global $db;

	$db->table = "exhibition";

	$db->condition = "`exhibition_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		$str = stripslashes($row['code']);

	}

	return $str;

}

function getTimeCreated($id= 0) {

	$str = 0;

	global $db;

	$db->table = "exhibition";

	$db->condition = "`exhibition_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		$str = ($row['created_time']+0);

	}

	return $str;

}



function getTimeEnd($id= 0) {

	$str = 0;

	global $db;

	$db->table = "exhibition";

	$db->condition = "`exhibition_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {

		$str = ($row['date_end']+0);

	}

	return $str;

}
//L&#7845;y th&#7901;i gian &#273;&#7873; xu&#7845;t 
function getTimeProposal($id= 0) {
	$date = new DateClass;
	$str = '';
	global $db;
	$info = array();
	$db->table = "proposal";
	$db->condition = "proposal_id = " . ($id+0);
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
	$str = $date->vnDateTime($row["created_time"]+0);
	}
	return $str;
}

function getOrderItems($id = 0) {

	$str = '<table class="table table-no-border table-ol-3w table-hover" >

			<tr class="panel-heading thantran" >

			<th><label class="form-lb-tp">Thứ tự</label></th>

			<th><label class="form-lb-tp">Tên sản phẩm</label></th>

			<th width="150px;"><label class="form-lb-tp">Kích thước</label></th>

			<th><label class="form-lb-tp">Số lượng</label></th>

			<th width="110px;"><label class="form-lb-tp">&nbsp;</label></th>

			</tr>';

	global $db;

	$stt = 1;

	$db->table = "itemproduct";

	$db->condition = "`exhibition_id` = " . ($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	foreach ($rows as $row) {

		$str .= '<tr class="listds">

					<td>

					<label class="form-lb-tp stt">'.$stt++.'</label>

					</td>

					<td><label class="form-lb-tp">'.stripcslashes($row['product_name']).'</label></td>

					<td><label class="form-lb-tp">

					<input type="text" class="form-control fixsize" readonly value="'.stripcslashes($row['size']).'" />

					</label>

					</td>			

					<td>

					<label class="form-lb-tp orderqty">

					<input type="text"  class="form-control fixsoluong" readonly data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'.number_format(stripcslashes($row['count_number']),0,',','.').'" />

					</label>

					</td>

					<td>

					</td>			 

				</tr>';

	}

	$str .= '</table>';

	return $str;

}
function getOrderItemsToStock($id = 0) {
?>
	<table class="table table-no-border table-ol-3w table-hover" id="orderlist" >

			<tr class="panel-heading thantran" >

			<th><label class="form-lb-tp">Thứ tự</label></th>

			<th><label class="form-lb-tp">Tên sản phẩm</label></th>

			<th width="150px;"><label class="form-lb-tp">Kích thước</label></th>

			<th><label class="form-lb-tp">Số lượng đơn hàng</label></th>
			
			<th><label class="form-lb-tp">Số lượng thực tế in</label></th>
			
			<th><label class="form-lb-tp">Hình ảnh sản phẩm</label></th>

			<th><label class="form-lb-tp">&nbsp;</label></th>

			</tr>
<?php
	global $db;

	$stt = 1;

	$db->table = "itemproduct";

	$db->condition = "`exhibition_id` = " . ($id+0);

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();
	
	foreach ($rows as $row) {
		
				?>				
		<tr class="listds">

					<td>

					<label class="form-lb-tp stt"><?=$stt++ ?></label>
					
					<input class="itemNo" type="hidden" value="<?=$row['itemproduct_id']?>" name="itemproduct_id" />

					</td>

					<td><label class="form-lb-tp"><?=stripcslashes($row['product_name'])?></label></td>

					<td><label class="form-lb-tp">

					<input type="text" class="form-control fixsize" readonly value="<?=stripcslashes($row['size'])?>" />

					</label>

					</td>			

					<td>

					<label class="form-lb-tp orderqty">

					<input type="text"  class="form-control fixsoluong" readonly data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="<?=number_format(stripcslashes($row['count_number']),0,',','.')?>" />

					</label>

					</td>

					<td>
					
					<label class="form-lb-tp orderqty">

					<input type="text"  class="form-control fixsoluongin"  data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="<?=number_format(stripcslashes($row['real_produced_number']),0,',','.')?>" />

					</label>
					
					</td>

					<td>
						<div>
						<div class="col-md-9 col-sm-8 col-xs-12">
								<input class="form-control file file-img" id="image<?=$row['itemproduct_id']?>" onchange="send_image(<?=$row['itemproduct_id']?>)" type="file" name="img" data-show-upload="false" data-max-file-count="1" accept="image/*">
						</div>
						<div class="col-md-3 col-sm-4 col-xs-12" style="position: relative;">
								<?php if($row['img']!='') { ?><div class="photo-show"><div class="img"><img src="/uploads/order_items/thumb_<?=$row['img']?>" title="<?=$row['product_name']?>" /></div></div> <?php } ?>
						</div>
						</div>
						<div style="height: 10px">
						</div>						
					</td>
					<td>
					</td>

				</tr>

	<?php
	
		
	} ?>

	</table>
	<script>
		
	</script>
	<?

}
function getCurrentStatus($id) {
	global $db;
	$db->table = "exhibition";

	$db->condition = "`exhibition_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();
	foreach ($rows as $row) {
       return $row['status'];
	}
	
}
function getCurrentUser($id) {
	global $db;
	$db->table = "exhibition";

	$db->condition = "`exhibition_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();
	foreach ($rows as $row) {
       return $row['user_id'];
	}
	
}

function getListSubProducts($id=0) {
	$info = array();
	$result = '[';
	global $db;
	$db->table = "product";

	$db->condition = "parent = ".$id ;

	$db->order = "";

	$db->limit = "";
	

	$rows = $db->select();
	foreach ($rows as $row) {
       $info[] = array("sp"=> stripslashes($row['name']),
					   "size"=> stripslashes($row['size']),
					   "chonsubmit"=> stripslashes($row['unit_price']),
					   "unit"=>stripslashes($row['type']),
					   "soluongmathang"=> 0,
					   "thanhtien"=> 0);
	   

				/* '{'.'"sp"' .':'. '"'.stripslashes($row['name']) .'",'.

				 '"size"' .':'. '"'.stripslashes($row['size']) .'",'.

				 '"chonsubmit"'.':"'. stripslashes($row['unit_price']).'",'.

				 '"unit"' .':"'. stripslashes($row['type']).'",'.
				 '"soluongmathang"'. ':0'.','.
				 '"thanhtien"'.':'.'0}';
*/
				
	}
	//$info = implode(',',$info);
	//$result .= $info;
	//$result .= ']';
	return json_encode($info);
}

function getListOfProducts(){
	
	global $db;
	$db->table = "product";

	$db->condition = "parent = 0";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();
	foreach ($rows as $row) {
		if($row['is_parent'] == 0) {
      ?>
	   <li><a href="javascript:{0}" value="<?=stripslashes($row['name'])?>"  data-collection="0" data-product='<?$row['product_id']+0 ?>'><?=stripslashes($row['name'])?></a></li>
	  <?php
		} else { ?>
		<li><a href="javascript:{0}" value="<?=stripslashes($row['name'])?>" data-collection="1" data-product='<?=getListSubProducts($row['product_id']+0)?>'><?=stripslashes($row['name'])?></a></li>
		<?php }
		
	}
}

function getListOfProducts2(){
	$str='';
	global $db;
	$db->table = "product";

	$db->condition = "parent = 0 and is_parent = 0";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();
	foreach ($rows as $row) {		

	  $str .='<li><a href="javascript:{0}" value="'.stripslashes($row['name']).'">'.stripslashes($row['name']).'</a></li>';
	  
	}
	return $str;
}
function getListOfUnit(){
	$results = array();
	
	global $db;
	$db->table = "product";

	$db->condition = "";

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();
	foreach ($rows as $row ) {
		if (!in_array($row['type'], $results)) 
			$results[] = stripslashes($row['type']);
		
	}
	foreach($results as $result) { ?>
		<li><a href="javascript:{0}" <?php if($result=="Cái")echo 'class="activeslect"';?> data-value="<?=$result?>"><?=$result?></a></li>
		<?php
	}
}
function getVaStatus($id){
	global $db;

	$db->table = "status";

	$db->condition = "`status_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {
       return $row['description'];
	}
  }

  function getNameRow($id){
	global $db;

	$db->table = "core_user";

	$db->condition = "`user_id` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {
       return $row['full_name'];
	}
  }

   function getLevelRow($id){
	global $db;

	$db->table = "exhibition_history";

	$db->condition = "`id_exhibition` = " . ($id+0);

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach ($rows as $row) {
       return $row['creator_id'];
	}
  }

  function getSales($value,$id,$query)
  {
  	global $db;

	$db->table = "exhibition_history";
   
    if($id == 0)

   	$db->condition = $query;
   
    else

	$db->condition = "$value = " . ($id+0). ' AND ' . $query;

	$db->order = "";

	$db->limit = "";

	$rows = $db->select();

	$con =$db->RowCount;

	return $con;

  }

 //    function getDesign($id,$query)
 //  {
 //  	global $db;

	// $db->table = "exhibition_history";
   
 //    if($id == 0)

 //   	$db->condition = $query;
   
 //    else

	// $db->condition = "`design_id` = " . ($id+0). ' AND ' . $query;

	// $db->order = "";

	// $db->limit = "";

	// $rows = $db->select();

	// $con =$db->RowCount;

	// return $con;

 //  }

 //  function getOffset($id,$query)
 //  {
 //  	global $db;

	// $db->table = "exhibition_history";
   
 //    if($id == 0)

 //   	$db->condition = $query;
   
 //    else

	// $db->condition = "`offset_id` = " . ($id+0). ' AND ' . $query;

	// $db->order = "";

	// $db->limit = "";

	// $rows = $db->select();

	// $con =$db->RowCount;

	// return $con;

 //  }

 //   function getPrint($id,$query)
 //  {
 //  	global $db;

	// $db->table = "exhibition_history";
   
 //    if($id == 0)

 //   	$db->condition = $query;
   
 //    else

	// $db->condition = "`printing_id` = " . ($id+0). ' AND ' . $query;

	// $db->order = "";

	// $db->limit = "";

	// $rows = $db->select();

	// $con =$db->RowCount;

	// return $con;

 //  }

 // function getPacket($id,$query)
 //  {
 //  	global $db;

	// $db->table = "exhibition_history";
   
 //    if($id == 0)

 //   	$db->condition = $query;
   
 //    else

	// $db->condition = "`packaging_id` = " . ($id+0). ' AND ' . $query;

	// $db->order = "";

	// $db->limit = "";

	// $rows = $db->select();

	// $con =$db->RowCount;

	// return $con;

 //  }

