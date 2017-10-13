<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$logout =  isset($_GET['logout']) ? $_GET['logout'] : 'NOT';
$login_failed_extant = 10;

if ($logout == 'OK') {
    $_SESSION["admin_user"] = "";
    $_SESSION["admin_pass"] = "";
    $_SESSION["user_id"] = "";
	$_SESSION["time_action"] = "";
	$_SESSION['upload_id'] = 0;
    session_destroy();
	header("Location: /");
} else {

	// Tồn tại đăng nhập
	$_SESSION["user_id"] = 0;
	if(empty($_SESSION["admin_user"]))
	    $admin_user = "";
	else
	    $admin_user = $_SESSION["admin_user"];

	if(empty($_SESSION["admin_pass"]))
	    $admin_pass = "";
	else
	    $admin_pass = $_SESSION["admin_pass"];

	// Lấy giá trị form
	if(isset($_POST['login_admin'])) {
	    if (isset($_POST["ol_login_username"])) {
	        $admin_user	= $_POST["ol_login_username"];
	    }

	    if (isset($_POST["ol_login_password"])) {
	        $admin_pass	= $_POST["ol_login_password"];
	    }

		$login_failed_extant = isset($_SESSION["login_failed".$admin_user]) ? $_SESSION["login_failed".$admin_user]+0 : 10;
	}

// Biến kiểm tra đăng nhập
    $login_true = false;
    $login_failed = "";
    if($login_failed_extant < 0) $login_failed_extant = 0;
    $notify_account['login_failed'] = '<div class="alert alert-danger fade in"><button data-dismiss="alert" class="close close-sm" type="button"><i class="fa fa-times"></i></button>Đăng nhập thất bại, hệ thống không tìm thấy tài khoản nào phù hợp với thông tin mà bạn khai báo. Bạn vui lòng thử lại (nhớ kiểm tra phím Caps Lock). Số lần còn lại: ' . ($login_failed_extant - 1) . '.</div>';

    $notify_account['change_password_success'] = '<div class="alert alert-success fade in"><button data-dismiss="alert" class="close close-sm" type="button"><i class="fa fa-times"></i></button>Bạn đã đổi mật khẩu mới thành công, yêu cầu thực hiện lại đăng nhập để tiếp tục các thao tác quản trị hệ thống.</div>';

    $notify_account['reset_password'] = '<div class="alert alert-info fade in"><button data-dismiss="alert" class="close close-sm" type="button"><i class="fa fa-times"></i></button>Vui lòng nhập Tên đăng nhập hoặc Địa chỉ E-mail vào ô nhập liệu phía trên. Sau khi gửi đi hệ thống sẽ kiểm tra dữ liệu để tạo một mật khẩu mới và gửi thông tin về email cho bạn.</div>';

    if ($admin_user == "" || $admin_pass == "") {
	    $login_true = false;
	    $login_failed = "";

	} else {
	    if(!check_login_admin($admin_user, $admin_pass)) {
            $login_true = false;
            $_SESSION["login_failed".$admin_user] = $login_failed_extant - 1;
            if(lock_admin($admin_user, $login_failed_extant)) {
                $notify_account['login_failed'] = '<div class="alert alert-danger fade in"><button data-dismiss="alert" class="close close-sm" type="button"><i class="fa fa-times"></i></button>Đăng nhập thất bại.<br>Tài khoản "<b>' . $admin_user . '</b>" đã bị khóa sau nhiều lần đăng nhập thất bại, vui lòng liên hệ với Quản trị hệ thống.</div>';
            }
	        $login_failed = $notify_account['login_failed'];
	    } else {
            $login_true = true;
            $_SESSION["login_failed".$admin_user] = "";
        }
	}
}

function check_login_admin($user, $pass) {
    global $db;
    $db->table = "core_user";
    $db->condition = "`user_name` = '".$db->clearText($user)."' AND `password` = '".$db->clearText(md5($user.$pass))."' AND `is_active`=1";
	$db->order = "";
	$db->limit = 1;
    $rows = $db->select();
    if($db->RowCount>0) {
	    foreach($rows as $row){
		    $_SESSION["admin_user"] = $user;
		    $_SESSION["admin_pass"] = $pass;
		    $_SESSION["user_id"] = $row["user_id"]+0;
		    $user = $row["user_id"]+0;
	    }
	    return true;
    }
    else return false;
}

function lock_admin($user, $count=1) {
    global $db;
    if($count<2) {
        $db->table = "core_user";
        $data = array(
            'is_active'=>0
        );
        $db->condition = "`user_name` = '".$db->clearText($user)."' and `is_active`=1";
        $db->update($data);
        if($db->AffectedRows > 0) return true;
        else  return false;
    }
    return false;
}












