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
<div class="row">
	<div class="col-lg-12">
		<div class="panel">
			<div class="panel-heading" style="padding-top: 0; padding-bottom: 0;">
				<!-- Nav tabs -->
				<ul class="nav nav-pills">
					<li class="active">
						<a href="#hosting_domain" data-toggle="tab">
							<i class="fa fa-book fa-fw"></i> Hosting & Domain
						</a>
					</li>
				</ul>
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="form-responsive">
					<!-- Tab panes -->
					<div class="tab-content">
						<div id="hosting_domain" class="tab-pane fade in active">
							<?php echo getConstant('hosting_domain');?>
						</div>
					</div>
				</div>
			</div>
			<!-- /.panel-body -->
		</div>
	</div>
</div>