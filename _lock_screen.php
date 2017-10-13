<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$lock_screen = false;
$time_now = time();
$time_action = empty($_SESSION["time_action"]) ? $time_now : $_SESSION["time_action"];
if($time_now > ($time_action + 1790)) {
	$lock_screen = true;
}

$get_lock =  isset($_GET['lock']) ? $_GET['lock'] : 'NOT';
$session_lock = empty($_SESSION["lock_screen"]) ? '' : $_SESSION["lock_screen"];
$login_failed_extant = 10;
//-----------------------------------------------------------------------------

if($get_lock == 'OK' || $session_lock == 'OK' || $lock_screen == true) {
	$login_failed_extant = (isset($_SESSION["login_failed_lock_screen"]) && $_SESSION["login_failed_lock_screen"]>0) ? $_SESSION["login_failed_lock_screen"]+0 : 10;
	$lock_screen = true;
	$_SESSION["lock_screen"] = 'OK';
} else {
	$lock_screen = false;
	$_SESSION["lock_screen"] = '';
	$_SESSION["login_failed_lock_screen"] = '';
}

if(isset($_POST['unlock_screen'])) {
	if (isset($_POST["ol_lock_password"])) {
		if(check_login_admin($_SESSION["admin_user"], $_POST["ol_lock_password"])) {
			$lock_screen = false;
			$_SESSION["lock_screen"] = '';
			$_SESSION["login_failed_lock_screen"] = '';
		} else {
			$lock_screen = true;
			$_SESSION["lock_screen"] = 'OK';
			$_SESSION["login_failed_lock_screen"] = $login_failed_extant - 1;
			if(lock_admin($_SESSION["admin_user"], $login_failed_extant)) {
				header("Location: /?lock=OK");
			}
		}
	}
}

$_SESSION["time_action"] = $time_now;
