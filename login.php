<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//--
?>
<!DOCTYPE html>
<html lang="<?php echo TTH_LANGUAGE;?>">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="language" content="<?php echo TTH_LANGUAGE;?>">
	<meta http-equiv="Refresh" content="600">
	<title><?php echo getConstant('title'); ?></title>
	<meta name="description" content="<?php echo getConstant('description'); ?>" />
	<meta name="keywords" content="<?php echo getConstant('keywords'); ?>" />
	<meta name="copyright" content="<?php echo getConstant('copyright'); ?>" />
	<meta name="author" content="DanaWeb.vn">
	<link rel="shortcut icon" href="<?php echo HOME_URL; ?>/favicon.ico" type="image/x-icon">
	<link rel="icon" href="<?php echo HOME_URL; ?>/favicon.ico" type="image/x-icon">

	
	<!--Core CSS -->
	

	<link rel="stylesheet" type="text/css" href="<?php echo HOME_URL; ?>/bs3/css/bootstrap.min.css" charset="utf-8" media="all">
	<link rel="stylesheet" type="text/css" href="<?php echo HOME_URL; ?>/css/bootstrap-reset.css">

   <link rel="stylesheet" type="text/css" href="<?php echo HOME_URL; ?>/css/animate.css" media="all">

	<!-- Custom styles for this template -->
	<link rel="stylesheet" type="text/css" href="<?php echo HOME_URL; ?>/css/style.css">
	<link rel="stylesheet" type="text/css" href="<?php echo HOME_URL; ?>/css/style-responsive.css" media="all">

	<link rel="stylesheet" type="text/css" href="<?php echo HOME_URL; ?>/css/materialize.css">

	<link rel="stylesheet" type="text/css" href="<?php echo HOME_URL; ?>/css/style1.css">
	<!--[if lt IE 9]>
	<script src="<?php echo HOME_URL; ?>/js/ie8-responsive-file-warning.js"></script>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body class="login-body">
	<section id="container">
		<header class="login-header clearfix">
			<!--logo start-->
			<a href="<?php echo HOME_URL_LANG;?>" class="logo box-wrap">
				<img src="<?php echo HOME_URL;?>/images/logo.png" alt="<?php echo getConstant('title'); ?>">
			</a>
			<h1 class="tenphanmem"> PHẦN MỀM QUẢN LÝ ĐƠN HÀNG </h1>
			<!--logo end-->
		</header>
		<section class="login-wrap">
			<div class="row box-wrap">
				<div class="login-form">
					<?php
					$notification = isset($_GET['active']) ? $_GET['active'] : "";

					?>

					<form id="sign-in-form" <?php if($notification == "change-password-success") echo 'action="/"';?> method="post">
						
						<div class="login-input">
							<p class="field">
							    <label class="lbdulieu">Tài Khoản</label>
								<input type="text" name="ol_login_username" maxlength="30" placeholder="" required="required" title="Hãy nhập tên đăng nhập." autocomplete="off">
								
							</p>
							<p class="field">
							    <label class="lbdulieu">Mật khẩu</label>
								<input type="password" name="ol_login_password" maxlength="50" placeholder="" required="required" title="Hãy nhập mật khẩu." autocomplete="off">
							
							</p>
							<?php
							if($notification == "change-password-success") {
								echo $notify_account['change_password_success'];
							} else {
								echo $login_failed;
							}
							?>
							
						</div>
						<div class="login-submit">
						<!-- 	<input type="submit"  class="btn btn-round color-1 material-design" data-color="#ffffff" name="login_admin" value="Đăng nhập"> -->
							 <button class="btn btn-round color-1 material-design" type="submit" name="login_admin" data-color="#ffffff"><i class="fa fa-lock keyfram" ></i> <span>Đăng nhập</span></button>
						</div>
						<p class="click-js"><a href="javascript:void(0)" id="click-forgot-password">Quên mật khẩu?</a></p>
					</form>
					<form id="forgot-password-form" method="post" style="display: none;" onsubmit="return send_lost_forgot('forgot-password-form');">
						<div class="login-input">
							<p class="field">
							   <label class="lbdulieu">Tên đăng nhập / E-mail</label>
								<input type="text" name="forgot_user_email" maxlength="50" placeholder="" required="required" title="Hãy nhập tên đăng nhập hoặc e-mail." autocomplete="off">
								
							</p>
							<?php echo $notify_account['reset_password'];?>
						</div>
						<div class="login-submit">
							<button class="btn btn-round color-1 material-design" type="submit" name="login_admin" data-color="#ffffff"><i class="fa fa-key keyfram" ></i> <span>Xác nhận</span></button>
						</div>
						<p class="click-js"><a href="javascript:void(0)" id="click-sign-in">Đăng nhập quản trị.</a></p>
					</form>
				</div>
			</div>
		</section>
		<?php
		include (_F_INCLUDES . DS . 'tth_footer.php');
		?>
	</section>
	<!-- Modal -->
	<div class="modal fade" id="_pages" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
	<!-- /.Modal -->
	<div id="_loading"></div>
<!--Core js-->
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/bs3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/login.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.boxes.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/materialize.js"></script>
</body>
</html>