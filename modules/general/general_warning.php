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
				<a class="current"><?php echo $menu_op[4][1];?></a>
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

	$nameConstant = $_POST["name_constant"];
	$countConstant = count($nameConstant);
	$valueConstant = $_POST["value_constant"];
	for($i = 0; $i < $countConstant; $i++) {
		updateConstant($nameConstant[$i],$valueConstant[$i]);
	}
}
?>
<div class="row">
	<div class="col-lg-5 col-md-8">
		<div class="panel">
			<div class="panel-heading">
				<i class="fa fa-gear fa-fw"></i> <?php echo $menu_op[4][1];?>
				<span class="tools pull-right">
		            <a href="javascript:;" class="fa fa-spinner fa-spin"></a>
		            <a href="javascript:;" class="fa fa-chevron-down"></a>
		            <a href="javascript:;" class="fa fa-eye"></a>
		            <a href="javascript:;" class="fa fa-compress"></a>
		            <a href="javascript:;" class="fa fa-times"></a>
	            </span>
			</div>
			<div class="panel-body">
				<div class="form-responsive">
					<form action="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . $link_op[4][1]?>" method="post">
						<table class="table table-no-border table-hover">
							<tr>
								<td width="150px"><label class="form-lb-tp">Báo cận giờ: (phút)</label></td>
								<td>
									<input type="hidden" name="name_constant[]" value="calendar_warning_time">
									<input class="form-control auto-number" type="text" name="value_constant[]" value="<?php echo getConstant('calendar_warning_time');?>" maxlength="5" data-a-sep="" data-a-dec="," data-v-max="99999" data-v-min="0">
								</td>
							</tr>
							<tr>
								<td><label class="form-lb-tp">Sắp đến hạn: (phút)</label></td>
								<td>
									<input type="hidden" name="name_constant[]" value="calendar_warning_endtime">
									<input class="form-control auto-number" type="text" name="value_constant[]" value="<?php echo getConstant('calendar_warning_endtime');?>" maxlength="5" data-a-sep="" data-a-dec="," data-v-max="99999" data-v-min="0">
								</td>
							</tr>
							<tr>
								<td width="150px"><label class="form-lb-tp">Cận giờ báo SMS:</label></td>
								<td>
									<input type="hidden" name="name_constant[]" value="calendar_warning_sms">
									<select class="form-control" name="value_constant[]">
										<option value="1" <?php echo (getConstant('calendar_warning_sms')==1) ? 'selected' : '';?> >Có</option>
										<option value="0" <?php echo (getConstant('calendar_warning_sms')==0) ? 'selected' : '';?> >Không</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="form-ol-btn-tzc">
									<button type="submit" name="update" class="btn btn-primary">Lưu lại</button> &nbsp;
									<button type="reset" class="btn btn-warning">Nhập lại</button> &nbsp;
									<button type="button" class="btn btn-danger" onclick="location.href='/'">Thoát</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>