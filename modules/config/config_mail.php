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
				<a><?php echo $menu_ol[4];?></a>
			</li>
			<li>
				<a class="current"><?php echo $menu_op[4][2];?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
if(isset($_POST['update'])) {

	function updateConstant ($constant, $value) {
		global $db;
		$db->table = "constant";
		$data =array(
			'value'=>$db->clearText($value)
		);
		$db->condition = "constant = '".$constant."'";
		$db->update($data);
	}

	updateConstant("SMTP_host",$_POST['SMTP_host']);
	updateConstant("SMTP_port",$_POST['SMTP_port']);
	updateConstant("SMTP_secure",$_POST['SMTP_secure']);
	updateConstant("SMTP_username",$_POST['SMTP_username']);
	updateConstant("SMTP_mailname",$_POST['SMTP_mailname']);
	updateConstant("SMTP_password",$_POST['SMTP_password']);
}
?>
<div class="row">
	<div class="col-lg-12 col-md-12">
		<div class="panel">
			<div class="panel-heading">
				<i class="<?php echo $icon_ol[4];?> fa-fw"></i> <?php echo $menu_op[4][2];?>
				<span class="tools pull-right">
		            <a href="javascript:;" class="fa fa-spinner fa-spin"></a>
		            <a href="javascript:;" class="fa fa-chevron-down"></a>
		            <a href="javascript:;" class="fa fa-eye"></a>
		            <a href="javascript:;" class="fa fa-compress"></a>
		            <a href="javascript:;" class="fa fa-times"></a>
	            </span>
			</div>
			<div class="panel-body">
				<div class="form-responsive row  chucnangsaoluu label_normal">
					<form action="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][2]?>" method="post" class="form-ol-3w">
						<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Máy chủ (SMTP) Thư gửi đi:</label></div>
						<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="SMTP_host" value="<?=getConstant("SMTP_host")?>" required="required" ></div>
						<div class="col-md-3 col-sm-4 col-xs-12">
						<label class="form-lb-tp">Cổng gửi mail:</label></div>
						<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="SMTP_port" value="<?=getConstant("SMTP_port")?>" required="required" ></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Sử dụng xác thực:</label></div>
						<div class="col-md-9 col-sm-8 col-xs-12">
									<select name="SMTP_secure" class="form-control">
										<option value="none" <?=(getConstant("SMTP_secure")=="none")? "selected" : "" ?> >None</option>
										<option value="ssl" <?=(getConstant("SMTP_secure")=="ssl")? "selected" : "" ?> >SSL</option>
										<option value="tsl" <?=(getConstant("SMTP_secure")=="tsl")? "selected" : "" ?> >TSL</option>
									</select>
						</div>			
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Tài khoản Email:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<input class="form-control" type="email" maxlength="200" name="SMTP_username" value="<?=getConstant("SMTP_username")?>" required="required" >
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Mật khẩu Email:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<input class="form-control" type="password" maxlength="200" name="SMTP_password" value="<?=getConstant("SMTP_password")?>" required="required" ></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Tên tài khoản Email:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<input class="form-control" type="text" maxlength="200" name="SMTP_mailname" value="<?=getConstant("SMTP_mailname")?>" required="required" >
							</div>

							<div class="col-md-12 col-sm-12 col-xs-12 chuanutconfig"> 

							<button class="btn btn-round color-1 material-design nuthemmuc"  type="submit" name="update"  style="margin-top: 0px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Lưu thiết lập"><i class="fa fa-save" ></i> <span>Lưu lại</span></button>

							<button class="btn btn-round color-1 material-design nuthemmuc nutlammoi"  type="reset"  style="margin-top: 0px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Làm mới "><i class="fa fa-recycle" ></i> <span>Nhập lại</span></button>

							<button class="btn btn-round color-1 material-design nuthemmuc saoluudulieu"  onclick="location.href='/'"  style="margin-top: 0px;" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thoát khỏi cấu hình"><i class="fa fa-reply" ></i> <span>Thoát</span></button>

							</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>