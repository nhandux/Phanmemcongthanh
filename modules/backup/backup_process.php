<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
@set_time_limit(0);
$dir_dest = ROOT_DIR . DS . "cronjobs";
//--------------------------------------------
?>

<!-- Menu path -->
<div class="row">
	<div class="col-md-8 col-sm-7 col-xs-12">
		<ul class="breadcrumbs-alt">
			<li>
				<a href="/"><?php echo $menu_ol[0];?></a>
			</li>
			<li>
				<a><?php echo $menu_ol[5];?></a>
			</li>
			<li>
				<a class="current"><?php echo $menu_op[5][0];?></a>
			</li>
		</ul>
	</div>
	<div class="col-md-4 col-5 col-xs-12">
		<div style=" text-align: right;">

		<button class="btn btn-round color-1 material-design nuthemmuc saoluudulieu" onclick="return backup_database('list_file_backup');" name="backup-database" style="float: right !important;margin-top: 0px;" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Tiến hành thêm mới"><i class="fa fa-save" ></i> <span>Tiến hành sao lưu</span></button>

		</div>
	</div>
</div>
<!-- /.row -->
<?php
if(isset($_GET['filename'])) {
	@unlink($dir_dest . DS . $_GET['filename']);
	loadPageSuccess("Đã xóa file sao lưu thành công.", TTH_PATH_LK . $link_ol[5] . TTH_PATH_OP_LK . $link_op[5][0]);
}

$currentdir = getCurrentDir($dir_dest);
rsort($currentdir);
?>
<div class="row">
	<div class="col-lg-12">
		
		<div class="panel panel-default panel-no-border">
			<div class="table-responsive" id="list_file_backup">
				<?php echo showFileBackupData($currentdir, $dir_dest)?>
			</div>
		</div>
		<!-- /.panel -->
		<div class="panel panel-default panel-no-border borderconfig">
			<div class="table-responsive">
				<table class="table table-manager table-striped table-hover tablecauhinh">
					<caption>
						<i class="fa fa-database fa-fw"></i> Thông tin chung về CSDL
						<span class="tools pull-right">
				            <a href="javascript:;" class="fa fa-spinner fa-spin"></a>
				            <a href="javascript:;" class="fa fa-eye"></a>
				            <a href="javascript:;" class="fa fa-compress"></a>
			            </span>
					</caption>
					<tbody>
						<tr>
							<td>Máy chủ MySQL</td>
							<td><?php echo $db->hostInfo();?></td>
						</tr>
						<tr>
							<td>Phiên bản máy chủ MySQL</td>
							<td><?php echo $db->serverInfo();?></td>
						</tr>
						<tr>
							<td>Phiên bản giao thức MySQL</td>
							<td><?php echo $db->protoInfo();?></td>
						</tr>
						<tr>
							<td>Tên máy chủ MySQL</td>
							<td><?php echo TTH_DB_HOST?></td>
						</tr>
						<tr>
							<td>Tên CSDL</td>
							<td><?php echo TTH_DB_NAME?></td>
						</tr>
						<tr>
							<td>Tài khoản truy cập CSDL</td>
							<td><?php echo TTH_DB_USER?></td>
						</tr>
						<tr>
							<td>Số Table trong CSDL</td>
							<td>
								<?php
								$db->table = "%";
								$db->showtablestatus();
								echo $db->RowCount;
								?>
							</td>
						</tr>
						<tr>
							<td>Bảng mã CSDL</td>
							<td>
								<?php
								$info = array();
								$rows = $db->showDbInfo();
								foreach($rows as $row) {
									$info['db_info']['db_charset'] = $row['db_charset'];
									$info['db_info']['db_collation'] = $row['db_collation'];
									$info['db_info']['db_time_zone'] = $row['db_time_zone'];
								}
								echo $info['db_info']['db_charset'];
								?>
							</td>
						</tr>
						<tr>
							<td>Mã so sánh CSDL</td>
							<td><?php echo $info['db_info']['db_collation']?></td>
						</tr>
						<tr>
							<td>Múi giờ của CSDL</td>
							<td><?php echo $info['db_info']['db_time_zone']?></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- /.panel -->
		<div class="panel panel-default panel-no-border">
			<div class="table-responsive">
				<table class="table table-manager table-striped table-bordered table-hover">
					<caption class="no-borderbottom">
						<i class="fa fa-table fa-fw"></i> Các Table thuộc CSDL &ldquo;<?php echo TTH_DB_NAME?>&rdquo;
						<span class="tools pull-right">
				            <a href="javascript:;" class="fa fa-spinner fa-spin"></a>
				            <a href="javascript:;" class="fa fa-eye"></a>
				            <a href="javascript:;" class="fa fa-compress"></a>
			            </span>
					</caption>
					<thead>
					<tr>
						<th>No.</th>
						<th>Name</th>
						<th>Data length</th>
						<th>Max data length</th>
						<th>Rows</th>
						<th>Collation</th>
						<th>Engine</th>
						<th>Auto increment</th>
						<th>Create time</th>
						<th>Update time</th>
					</tr>
					</thead>
					<tbody>
					<?php
					$tablestatus = "";
					$db->table = "%";
					$rows = $db->showtablestatus();
					$stt = 0;
					foreach($rows as $row) {
						$stt++;
					?>
					<tr>
						<td align="center"><?php echo $stt?></td>
						<td><?php echo $row['Name']?></td>
						<td align="right"><?php echo size_format($row['Data_length'])?></td>
						<td align="right"><?php echo size_format($row['Max_data_length'])?></td>
						<td align="right"><?php echo $row['Rows']?></td>
						<td align="center"><?php echo $row['Collation']?></td>
						<td align="center"><?php echo $row['Engine']?></td>
						<td align="right"><?php echo $row['Auto_increment']?></td>
						<td align="center"><?php echo $row['Create_time']?></td>
						<td align="center"><?php echo $row['Update_time']?></td>
					</tr>
					<?php
					}
					?>
					</tbody>
				</table>
			</div>
		</div>
		<!-- /.panel -->
	</div>
</div>