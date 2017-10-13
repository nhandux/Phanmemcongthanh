<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//

$role_id = isset($_GET['id']) ? $_GET['id']+0 : $role_id+0;
?>

<!-- Menu path -->
<div class="row">
	<div class="col-md-12">
		<ul class="breadcrumbs-alt">
			<li>
				<a href="/"><?php echo $menu_ol[0];?></a>
			</li>
			<li>
				<a href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1];?>"><?php echo $menu_ol[3];?></a>
			</li>
			<li>
				<a href="<?php echo TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1];?>"><?php echo $menu_op[3][1];?></a>
			</li>
			<li>
				<a class="current"><?php echo getTableCoreRole($role_id);?></a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
<?php
$db->table = "core_role";
$db->condition = "role_id = ".$role_id;
$db->order = "";
$rows = $db->select();
if($db->RowCount==0) loadPageError("Nhóm quản trị không tồn tại.", TTH_PATH_LK . $link_ol[3] . TTH_PATH_OP_LK . $link_op[3][1]);
include_once(_F_FUNCTIONS . DS . "CoreDashboard.php");
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel">
			<div class="panel-heading">
				<i class="fa fa-dashboard fa-fw"></i> Phân quyền quản trị
				<span class="tools pull-right">
		            <a href="javascript:;" class="fa fa-spinner fa-spin"></a>
		            <a href="javascript:;" class="fa fa-chevron-down"></a>
		            <a href="javascript:;" class="fa fa-eye"></a>
		            <a href="javascript:;" class="fa fa-compress"></a>
		            <a href="javascript:;" class="fa fa-times"></a>
	            </span>
			</div>
			<!-- .panel-heading -->
			<div class="panel-body">
				<div class="panel-group panel-tabs-line">
				<div class="panel panel-info">
							<div class="panel-heading clearfix">
								<h4 class="panel-title pull-left">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapse-0"><img src="images/tich.png"> Đơn hàng</a>
								</h4>
								<div class="pull-right"><?=   showStatusCoreOl($role_id, 'document') ?></div>
							</div>
							<div id="collapse-0" class="panel-collapse collapse">
								<div class="panel-body">
								<?php
									include_once (_F_TEMPLATES . DS . "core" . DS . "document.php");
							    ?>
							 </div>
							</div>
				</div>

					<?php
					for ($i = 2; $i < count($menu_ol); $i++) {
						echo '<div class="panel panel-info">
							<div class="panel-heading clearfix">
								<h4 class="panel-title pull-left">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapse-'.$i.'"><i class="' . $icon_ol[$i] . ' fa-fw"></i> ' . $menu_ol[$i] . '</a>
								</h4>
								<div class="pull-right">' . showStatusCoreOl($role_id, $link_ol[$i]) . '</div>
							</div>
							<div id="collapse-'.$i.'" class="panel-collapse collapse">
								<div class="panel-body">';
									include_once (_F_TEMPLATES . DS . "core" . DS . $link_ol[$i] . ".php");
							echo '</div>
							</div>
						</div>';
					}
					?>
				</div>
			</div>
			<!-- .panel-body -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->