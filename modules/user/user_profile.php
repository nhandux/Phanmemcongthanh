<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
?>

<!-- Menu path -->
<div class="row">
	<div class="col-md-12">
		<ul class="breadcrumbs-alt">
			<li>
				<a href="/"><?php echo $menu_ol[0];?></a>
			</li>
			<li>
				<a class="current">Thông tin cá nhân</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/members.js"></script>
<div class="row">
	<div class="col-lg-12">
		<div class="panel">
			<div class="panel-heading" style="padding-top: 0; padding-bottom: 0;">
				<!-- Nav tabs -->
				<ul class="nav nav-pills">
					<?php
						$active = "";
						$active = isset($_GET['active']) ? $_GET['active'] : "";
					?>
					<li class="<?=($active=="profile")? "active" : "" ?>">
						<a href="#info" data-toggle="tab">
							<i class="fa fa-user fa-fw"></i> Thông tin cá nhân
						</a>
					</li>
					<li class="<?=($active=='password')? 'active' : '' ?>">
						<a href="#pass" data-toggle="tab">
							<i class="fa fa-key fa-fw"></i> Đổi mật khẩu
						</a>
					</li>
				</ul>
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="">
					<!-- Tab panes -->
					<div class="tab-content">
						<div id="info" class="tab-pane fade <?php if($active=="profile") echo "in active";?> row chucnangsaoluu">
							<form id="change_info" class="form-ol-3w" name="change_info" method="post" enctype="multipart/form-data" onsubmit="return change_profile('change_info');">
								<?php echo showInformation($_SESSION["user_id"]+0);?>
							</form>
						</div>
						<div id="pass" class="tab-pane fade <?php if($active=="password") echo "in active";?>  row chucnangsaoluu">
							<form id="change_pass" class="form-ol-3w" name="change_pass" method="post" onsubmit="return change_profile('change_pass');">
								<?php echo showChangePassword();?>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- /.panel-body -->
		</div>
	</div>
</div>