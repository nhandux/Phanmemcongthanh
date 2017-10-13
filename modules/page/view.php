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
				<a>Bài viết</a>
			</li>
			<li>
				<a class="current">Quy định chung & Hướng dẫn sử dụng</a>
			</li>
		</ul>
	</div>
</div>
<!-- /.row -->
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
					<li class="<?=($active=="regulation")? "active" : "" ?>">
						<a href="#regulation" data-toggle="tab">
							<i class="fa fa-book fa-fw"></i> Quy định chung
						</a>
					</li>
					<li class="<?=($active=='tutorial')? 'active' : '' ?>">
						<a href="#tutorial" data-toggle="tab">
							<i class="fa fa-question-circle fa-fw"></i>  Hướng dẫn sử dụng
						</a>
					</li>
				</ul>
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="form-responsive">
					<!-- Tab panes -->
					<div class="tab-content">
						<div id="regulation" class="tab-pane fade <?php if($active=="regulation") echo "in active";?>">
							<?php echo getConstant('regulation');?>
						</div>
						<div id="tutorial" class="tab-pane fade <?php if($active=="tutorial") echo "in active";?>">
							<?php echo getConstant('tutorial');?>
						</div>
					</div>
				</div>
			</div>
			<!-- /.panel-body -->
		</div>
	</div>
</div>