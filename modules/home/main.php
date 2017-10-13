
<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//--

$view_home = isset($_GET['cal']) ? $_GET['cal'] : 'home';
//$ol_agency = getAgencyToCore($corePrivilegeSlug['op'], '/calendar_list;/');
//---
if($view_home=='personal') {
	include(_F_MODULES . DS . $tth[TTH_PATH] . DS . "main2.php");
} 

?>
<!-- Menu path -->

<!-- /.row -->
<?php

if($role == 3 || $role == 1) {
include_once (_F_MODULES . DS ."document".DS. "document_add.php");
} else { if($role == 9) include_once (_F_MODULES . DS . "document". DS . "document_list_accountant.php");
	else include_once (_F_MODULES . DS . "document". DS . "document_list.php");
}
