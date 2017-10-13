<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$date = new DateClass();
$stringObj = new String();

?>

<div class="row">
	<div class="col-md-12">
		<ul class="breadcrumbs-alt">
			<li>
				<a href="/"><?php echo $menu_ol[0];?></a>
			</li>
			<li>
				<a><?php echo $menu_ol[6];?></a>
			</li>
			<li>
				<a class="current"><?php echo $menu_op[6][2];?></a>
			</li>
		</ul>
	</div>
</div>


<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading no_ani">
				<i class="fa fa-bar-chart-o fa-fw"></i> Biểu đồ thống kê tháng
				<?php
				$t_month = strtotime(date('Y-m', time()));
				$monthStatic = "";
				$monthStatic = isset($_GET['month']) ? $_GET['month'] : date('Y-m', $t_month);
				?>
				<select onchange="return onChangeForward()" id="monthStatistic" class="selectpicker sm-select show-tick showtk" data-container="body">
					<?php
					for($i=0; $i<=10; $i++) {
						?>
						<option value="<?=date('Y-m', strtotime('-'.$i.' month' , $t_month))?>" <?=($monthStatic==date('Y-m', strtotime('-'.$i.' month' , $t_month))) ? "selected" : ""?> ><?=date('m/Y', strtotime('-'.$i.' month' , $t_month))?></option>
					<?php
					}
					?>
				</select>
			
				<div class="box-icon-right clearfix">
					<a href="#" class="btn btn-minimize btn-round" data-toggle="tooltip" data-placement="top" title="Mở rộng/Thu gọn"><i class="fa fa-chevron-up"></i></a>
					<a href="#" style="margin-left: 5px;" class="btn btn-close btn-round" data-toggle="tooltip" data-placement="top" title="Đóng"><i class="fa fa-remove"></i></a>
				</div>
			</div>
			</div>
		<div class="panel-body">
				<script type="text/javascript">
					var domain = location.hostname;
					$(function () {
						$.getJSON('<?= HOME_URL  ?>/data_charts_statistic.php?month=<?=$monthStatic?>&callback=?', function (csv,csv1) {
							$('#container1').highcharts({
								data: {
									csv: csv

								},
								title: {
									text: 'Thống kê doanh thu công ty In Công Thành'
								},
								subtitle: {
									text: '(theo tháng)'
								},
								xAxis: {
									tickInterval: 5 * 24 * 3600 * 1000, // 5 day
									tickWidth: 0,
									gridLineWidth: 1,
									labels: {
										align: 'left',
										x: 3,
										y: -3
									}
								},
								yAxis: [{
									title: {
										text: null
									},
									labels: {
										align: 'left',
										x: 3,
										y: 16,
										format: '{value:.,0f}'
									},
									showFirstLabel: false
								}, { // right y axis
									linkedTo: 0,
									gridLineWidth: 0,
									opposite: true,
									title: {
										text: null
									},
									labels: {
										align: 'right',
										x: -3,
										y: 16,
										format: '{value:.,0f}'
									},
									showFirstLabel: false
								}],
								legend: {
									align: 'left',
									verticalAlign: 'top',
									y: 20,
									floating: true,
									borderWidth: 0
								},
								tooltip: {
									shared: true,
									crosshairs: true
								},
								plotOptions: {
									series: {
										cursor: 'pointer',
										point: {
											events: {
												click: function (e) {
													hs.htmlExpand(null, {
														pageOrigin: {
															x: e.pageX,
															y: e.pageY
														},
														headingText: this.series.name,
														maincontentText: Highcharts.dateFormat('%A, %e %B, %Y', this.x) + ':<br/> ' +
															this.y + ' ',
														width: 260
													});
												}
											}
										},
										marker: {
											lineWidth: 1
										}
									}
								},
								series: [{
									name: 'Tất cả truy cập',
									lineWidth: 4,
									marker: {
										radius: 4
									}
								}]
							});
						});
					});
				</script>
				<script type="text/javascript" src="./js/highcharts/highcharts.js"></script>
				<script src="./js/highcharts/modules/data.js"></script>
				<script src="./js/highcharts/modules/exporting.js"></script>

				<!-- Additional files for the Highslide popup effect -->
				<script type="text/javascript" src="./js/highcharts/highslide-full.min.js"></script>
				<script type="text/javascript" src="./js/highcharts/highslide.config.js" charset="utf-8"></script>
				<script type="text/javascript" src="./js/highcharts/themes/tth-v2.js" charset="utf-8"></script>
				<link rel="stylesheet" type="text/css" href="./js/highcharts/highslide.css" />

				<div id="container1" style="height: 400px; margin: 0 auto;"></div>
			</div>
		</div>
	</div>
<!-- /.row -->
<?php
if(getConstant('google_calendar')!='') {
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-calendar fa-fw"></i> Lịch Google
				<div class="box-icon-right clearfix">
					<a href="#" class="btn btn-minimize btn-round" data-toggle="tooltip" data-placement="top" title="Mở rộng/Thu gọn"><i class="fa fa-chevron-up"></i></a>
					<a href="#" class="btn btn-close btn-round" data-toggle="tooltip" data-placement="top" title="Đóng"><i class="fa fa-remove"></i></a>
				</div>
			</div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<iframe src="https://www.google.com/calendar/embed?src=<?=getConstant('google_calendar')?>&ctz=Asia/Saigon" style="border: 0" width="100%" height="600" frameborder="0" scrolling="no"></iframe>
			</div>
		</div>
	</div>
</div>
<?php } ?>

<script>
	function onChangeForward() {
		var url = '<?=  TTH_PATH_LK . $link_ol[6] . TTH_PATH_OP_LK . $link_op[6][2] ?>&month=' + document.getElementById("monthStatistic").value;
		return Forward(url);
	}
</script>