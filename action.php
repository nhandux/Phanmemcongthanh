<?php
@session_start();

// System
define( 'TTH_SYSTEM', true );

require_once(str_replace( DIRECTORY_SEPARATOR, '/', dirname( __file__ ) ) . '/define.php');
require_once(ROOT_DIR . DS ."lang" . DS . TTH_LANGUAGE . ".lang");
include_once(_F_FUNCTIONS . DS . "Function.php");
try {
	$db =  new ActiveRecord(TTH_DB_HOST, TTH_DB_USER, TTH_DB_PASS, TTH_DB_NAME);
}
catch(DatabaseConnException $e) {
	echo $e->getMessage();
}

$url =  isset($_REQUEST['url']) ? $_REQUEST['url'] : 'notfound';

require_once(ROOT_DIR . DS . '_ck_login.php');
$account["id"] = empty($_SESSION["user_id"]) ? 0 : $_SESSION["user_id"]+0;
//---------------------------------------------------
include_once(_F_INCLUDES . DS . "_tth_constants.php");
if($login_true) {
	if (file_exists(_F_ACTIONS . DS . $url . ".php")) {
		//require_once(ROOT_DIR . DS . '_lock_screen.php');
		include(_F_ACTIONS . DS . $url . ".php");
	} else die();
} else die("<script>window.location.href = '/';</script>");


