<?php
@session_start();

// System
define( 'TTH_SYSTEM', true );
require_once(str_replace( DIRECTORY_SEPARATOR, '/', dirname( __file__ ) ) . '/define.php');
include_once(_F_FUNCTIONS . DS . "Function.php");
try {
	$db =  new ActiveRecord(TTH_DB_HOST, TTH_DB_USER, TTH_DB_PASS, TTH_DB_NAME);
}
catch(DatabaseConnException $e) {
	echo $e->getMessage();
}

if(isset($_POST['forgot_user_email'])) {
	$user = $_POST['forgot_user_email'];
	$db->table = "core_user";
	$db->condition = "user_name = '".$db->clearText($user)."' and is_active=1 or email = '".$db->clearText($user)."' and is_active=1";
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	if($db->RowCount>0) {
		$randomString = getRandomString(10);
		$db->table = "core_user";
		$data = array(
			'password'=>$db->clearText(md5($rows[0]['user_name'].$randomString))
		);
		$db->condition = "user_id = ".($rows[0]['user_id']+0);
		$db->update($data);

		$domain = $_SERVER['HTTP_HOST'];
		$emailTo = $rows[0]['email'];
		$nameTo = $rows[0]['full_name'];

		$subject = "[DanaWeb] Thiết lập lại Mật khẩu từ ".$domain;
		$message = 'Chào '.$rows[0]['user_name'].',<br/><br/>'.
		'Bạn đã yêu cầu hệ thống thiết lập mật khẩu cho tài khoản của bạn trên trang Quản trị Website từ <b>'.$domain.'</b>'.
		', với lý do bạn đã quên mật khẩu hiện tại.<br/>'.
		'Quá trình thiết lập mật khẩu mới được hệ thống thực hiện thành công.<br/><br/>Thông tin thiết lập:<br/>'.
		'Tên đăng nhập: <b>'.$rows[0]['user_name'].'</b><br/>'.
		'Mật khẩu: <b>'.$randomString.'</b><br/><br/>'.
		'Bạn nên <b>thay đổi mật khẩu</b> khác ngay sau khi đăng nhập vào hệ thống thành công!<br/>'.
		'Hỗ trợ kỹ thuật (24/7): (+84)97 477 9085 -  Email: info@danaweb.vn<br/><br/>'.
		'-----<br/><font face="arial, helvetica, sans-serif" style="color: #231f20; font-weight: bold;">Dana<span style="color: #f7941e;">Web</span>.vn</font>';
		$send_mail = sendMailFn('no-reply@'.$domain, 'No-reply', $emailTo, $nameTo, $subject, $message, '');
		if($send_mail == TRUE)
			echo 'Mật khẩu mới đã được gửi về E-mail của bạn.';
		else
			echo 'Có lỗi từ hệ thống, không thể thực hiện thao tác.';
	}
	else echo 'Tài khoản bạn nhập không tồn tại trong hệ thống.';
}
else echo 'Nội dung không tồn tại.';
?>
