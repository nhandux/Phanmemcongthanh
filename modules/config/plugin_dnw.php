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
				<a class="current">Hosting & Domain</a>
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
		$db->condition = "`constant` = '".$constant."'";
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
	<div class="col-lg-12">
		<div class="panel">
			<div class="panel-heading">
				<i class="fa fa-puzzle-piece fa-fw"></i> Hosting & Domain
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
					<form class="form-ol-3w" action="<?php echo TTH_PATH_LK . $link_ol[4] . TTH_PATH_OP_LK . 'plugin_dnw'?>" method="post">
						<table class="table table-no-border table-hover">
							<?php
							$db->table = "constant";
							$db->condition = "`type` = 8";
							$db->order = "`sort` ASC";
							$db->limit = "";
							$rows = $db->select();

							foreach($rows as $row) {
							?>
							<tr>
								<td>
									<label><?=$row['name']?>:</label>
									<input type="hidden" name="name_constant[]" value="<?=$row['constant']?>" >
									<textarea class="form-control ckeditor" rows="6" style="resize: none;" name="value_constant[]" ><?=stripslashes($row['value'])?></textarea>
								</td>
							</tr>
							<?php
							}
							?>
							<tr>
								<td class="form-ol-btn-tzc">
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