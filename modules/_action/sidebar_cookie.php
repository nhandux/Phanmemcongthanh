<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['name'])) {
	$name       = $_POST['name'];
	$value      = $_POST['value'];
	$ex_days    = $_POST['ex_days'];
	setcookie($name, $value, time() + $ex_days*86400, "/");
}