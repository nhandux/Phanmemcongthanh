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
	<!-- Custom styles for this template -->
	<link rel="stylesheet" type="text/css" href="<?php echo HOME_URL; ?>/css/style.css">
	<link rel="stylesheet" type="text/css" href="<?php echo HOME_URL; ?>/css/style-responsive.css" media="all">

	<!-- Core js-->
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.min.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery-ui/jquery-ui-1.10.1.custom.min.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/bs3/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.dcjqaccordion.2.7.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.scrollTo.min.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jQuery-slimScroll-1.3.0/jquery.slimscroll.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.nicescroll.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.scrollTo/jquery.scrollTo.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.easing.1.3.min.js"></script>
	<!-- DataTables JavaScript -->
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/data-tables/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/data-tables/dataTables.bootstrap.min.js"></script>
	<!-- Bootstrap-select JavaScript -->
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/bootstrap-select/js/bootstrap-select.min.js"></script>
	<!-- Bootstrap-colorpicker JavaScript -->
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
	<!-- Bootstrap-typeahead JavaScript -->
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/bootstrap-typeahead/bootstrap-typeahead.min.js"></script>
	<!-- Common script init for all pages-->
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/fileinput/fileinput.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/auto-numeric.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.calendar/jquery.datetimepicker.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/scripts.js"></script>
	<script type="text/javascript" src="<?php echo HOME_URL;?>/js/jquery.boxes.js"></script>
	<?php echo getConstant('google_analytics')?>
	<!-- CKEditor -->
	<script type="text/javascript" src="<?php echo HOME_URL;?>/editor/ckeditor/ckeditor.js"></script>
	<!-- CKFinder -->
	<script type="text/javascript" src="<?php echo HOME_URL;?>/editor/ckfinder/ckfinder.js"></script>
	<!--[if lt IE 9]>
	<script src="<?php echo HOME_URL; ?>/js/ie8-responsive-file-warning.js"></script>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body class="lock-screen" onload="startTime()">
<div class="lock-panel"></div>
<div class="lock-wrapper">
	<div id="time"></div>
	<div class="lock-box text-center">
		<?php
		$info_user = array();
		$info_user = getInfoUser($account["id"]);
		?>
		<div class="lock-name"><a title="Đăng xuất" href="javascript:void(0);" onclick="window.location.href = '?logout=OK'"><i class="fa fa-sign-out"></i></a> <span><?php echo $info_user[0];?></span></div>
		<?php echo $info_user[9];?>
		<div class="lock-pwd">
			<form role="lock-screen" action="/" method="post">
				<div class="form-group">
					<input type="password" class="form-control lock-input" name="ol_lock_password" placeholder="Mật khẩu..." autocomplete="off" maxlength="30" required>
					<button class="btn btn-lock" type="submit" name="unlock_screen">
						<i class="fa fa-unlock"></i>
					</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!--Core js-->
<script>
	function startTime() {
		var today=new Date();
		var h=today.getHours();
		var m=today.getMinutes();
		var s=today.getSeconds();
		m=checkTime(m);
		s=checkTime(s);
		document.getElementById('time').innerHTML=h+":"+m+":"+s;
		t=setTimeout(function(){startTime()},500);
	}

	function checkTime(i) {
		if (i<10)
		{
			i="0" + i;
		}
		return i;
	}
</script>
</body>
</html>