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
	<div class="col-lg-12 col-md-12">
		<div class="panel">
			<div class="panel-heading">
				<i class="<?php echo $icon_ol[4];?> fa-fw"></i> <?php echo $menu_op[4][1];?>
				<span class="tools pull-right">
		            <a href="javascript:;" class="fa fa-spinner fa-spin"></a>
		            <a href="javascript:;" class="fa fa-chevron-down"></a>
		            <a href="javascript:;" class="fa fa-eye"></a>
		            <a href="javascript:;" class="fa fa-compress"></a>
		            <a href="javascript:;" class="fa fa-times"></a>
	            </span>
			</div>
			<div class="panel-body">
				<div class="form-responsive row  chucnangsaoluu">
					<form action="<?php echo TTH_PATH_LK . $link_ol[6] . TTH_PATH_OP_LK . $link_op[6][1]?>" method="post" class="form-ol-3w">
						
							<?php
							$timezone = array(
								'(UTC-11:00) Midway Island' => 'Pacific/Midway',
								'(UTC-11:00) Samoa' => 'Pacific/Samoa',
								'(UTC-10:00) Hawaii' => 'Pacific/Honolulu',
								'(UTC-09:00) Alaska' => 'US/Alaska',
								'(UTC-08:00) Pacific Time (US &amp; Canada)' => 'America/Los_Angeles',
								'(UTC-08:00) Tijuana' => 'America/Tijuana',
								'(UTC-07:00) Arizona' => 'US/Arizona',
								'(UTC-07:00) Chihuahua / La Paz' => 'America/Chihuahua',
								'(UTC-07:00) Mazatlan' => 'America/Mazatlan',
								'(UTC-07:00) Mountain Time (US &amp; Canada)' => 'US/Mountain',
								'(UTC-06:00) Central America' => 'America/Managua',
								'(UTC-06:00) Central Time (US &amp; Canada)' => 'US/Central',
								'(UTC-06:00) Guadalajara / Mexico City' => 'America/Mexico_City',
								'(UTC-06:00) Monterrey' => 'America/Monterrey',
								'(UTC-06:00) Saskatchewan' => 'Canada/Saskatchewan',
								'(UTC-05:00) Bogota' => 'America/Bogota',
								'(UTC-05:00) Eastern Time (US &amp; Canada)' => 'US/Eastern',
								'(UTC-05:00) Indiana (East)' => 'US/East-Indiana',
								'(UTC-05:00) Lima' => 'America/Lima',
								'(UTC-05:00) Quito' => 'America/Bogota',
								'(UTC-04:00) Atlantic Time (Canada)' => 'Canada/Atlantic',
								'(UTC-04:30) Caracas' => 'America/Caracas',
								'(UTC-04:00) La Paz' => 'America/La_Paz',
								'(UTC-04:00) Santiago' => 'America/Santiago',
								'(UTC-03:30) Newfoundland' => 'Canada/Newfoundland',
								'(UTC-03:00) Brasilia' => 'America/Sao_Paulo',
								'(UTC-03:00) Buenos Aires / Georgetown' => 'America/Argentina/Buenos_Aires',
								'(UTC-03:00) Greenland' => 'America/Godthab',
								'(UTC-02:00) Mid-Atlantic' => 'America/Noronha',
								'(UTC-01:00) Azores' => 'Atlantic/Azores',
								'(UTC-01:00) Cape Verde Is.' => 'Atlantic/Cape_Verde',
								'(UTC+00:00) Casablanca' => 'Africa/Casablanca',
								'(UTC+00:00) Edinburgh' => 'Europe/London',
								'(UTC+00:00) Greenwich Mean Time : Dublin' => 'Etc/Greenwich',
								'(UTC+00:00) Lisbon' => 'Europe/Lisbon',
								'(UTC+00:00) London' => 'Europe/London',
								'(UTC+00:00) Monrovia' => 'Africa/Monrovia',
								'(UTC+00:00) UTC' => 'UTC',
								'(UTC+01:00) Amsterdam' => 'Europe/Amsterdam',
								'(UTC+01:00) Belgrade' => 'Europe/Belgrade',
								'(UTC+01:00) Berlin / Bern' => 'Europe/Berlin',
								'(UTC+01:00) Bratislava' => 'Europe/Bratislava',
								'(UTC+01:00) Brussels' => 'Europe/Brussels',
								'(UTC+01:00) Budapest' => 'Europe/Budapest',
								'(UTC+01:00) Copenhagen' => 'Europe/Copenhagen',
								'(UTC+01:00) Ljubljana' => 'Europe/Ljubljana',
								'(UTC+01:00) Madrid' => 'Europe/Madrid',
								'(UTC+01:00) Paris' => 'Europe/Paris',
								'(UTC+01:00) Prague' => 'Europe/Prague',
								'(UTC+01:00) Rome' => 'Europe/Rome',
								'(UTC+01:00) Sarajevo' => 'Europe/Sarajevo',
								'(UTC+01:00) Skopje' => 'Europe/Skopje',
								'(UTC+01:00) Stockholm' => 'Europe/Stockholm',
								'(UTC+01:00) Vienna' => 'Europe/Vienna',
								'(UTC+01:00) Warsaw' => 'Europe/Warsaw',
								'(UTC+01:00) West Central Africa' => 'Africa/Lagos',
								'(UTC+01:00) Zagreb' => 'Europe/Zagreb',
								'(UTC+02:00) Athens' => 'Europe/Athens',
								'(UTC+02:00) Bucharest' => 'Europe/Bucharest',
								'(UTC+02:00) Cairo' => 'Africa/Cairo',
								'(UTC+02:00) Harare' => 'Africa/Harare',
								'(UTC+02:00) Helsinki' => 'Europe/Helsinki',
								'(UTC+02:00) Istanbul' => 'Europe/Istanbul',
								'(UTC+02:00) Jerusalem' => 'Asia/Jerusalem',
								'(UTC+02:00) Kyiv' => 'Europe/Helsinki',
								'(UTC+02:00) Pretoria' => 'Africa/Johannesburg',
								'(UTC+02:00) Riga' => 'Europe/Riga',
								'(UTC+02:00) Sofia' => 'Europe/Sofia',
								'(UTC+02:00) Tallinn' => 'Europe/Tallinn',
								'(UTC+02:00) Vilnius' => 'Europe/Vilnius',
								'(UTC+03:00) Baghdad' => 'Asia/Baghdad',
								'(UTC+03:00) Kuwait' => 'Asia/Kuwait',
								'(UTC+03:00) Minsk' => 'Europe/Minsk',
								'(UTC+03:00) Nairobi' => 'Africa/Nairobi',
								'(UTC+03:00) Riyadh' => 'Asia/Riyadh',
								'(UTC+03:00) Volgograd' => 'Europe/Volgograd',
								'(UTC+03:30) Tehran' => 'Asia/Tehran',
								'(UTC+04:00) Abu Dhabi' => 'Asia/Muscat',
								'(UTC+04:00) Baku' => 'Asia/Baku',
								'(UTC+04:00) Moscow / St. Petersburg' => 'Europe/Moscow',
								'(UTC+04:00) Muscat' => 'Asia/Muscat',
								'(UTC+04:00) Tbilisi' => 'Asia/Tbilisi',
								'(UTC+04:00) Yerevan' => 'Asia/Yerevan',
								'(UTC+04:30) Kabul' => 'Asia/Kabul',
								'(UTC+05:00) Islamabad / Karachi' => 'Asia/Karachi',
								'(UTC+05:00) Tashkent' => 'Asia/Tashkent',
								'(UTC+05:30) Chennai' => 'Asia/Calcutta',
								'(UTC+05:30) Kolkata' => 'Asia/Kolkata',
								'(UTC+05:30) Mumbai / New Delhi' => 'Asia/Calcutta',
								'(UTC+05:30) Sri Jayawardenepura' => 'Asia/Calcutta',
								'(UTC+05:45) Kathmandu' => 'Asia/Katmandu',
								'(UTC+06:00) Almaty' => 'Asia/Almaty',
								'(UTC+06:00) Astana / Dhaka' => 'Asia/Dhaka',
								'(UTC+06:00) Ekaterinburg' => 'Asia/Yekaterinburg',
								'(UTC+06:30) Rangoon' => 'Asia/Rangoon',
								'(UTC+07:00) Bangkok / Hanoi' => 'Asia/Bangkok',
								'(UTC+07:00) Jakarta' => 'Asia/Jakarta',
								'(UTC+07:00) Novosibirsk' => 'Asia/Novosibirsk',
								'(UTC+08:00) Beijing / Hong Kong' => 'Asia/Hong_Kong',
								'(UTC+08:00) Chongqing' => 'Asia/Chongqing',
								'(UTC+08:00) Krasnoyarsk' => 'Asia/Krasnoyarsk',
								'(UTC+08:00) Kuala Lumpur' => 'Asia/Kuala_Lumpur',
								'(UTC+08:00) Perth' => 'Australia/Perth',
								'(UTC+08:00) Singapore' => 'Asia/Singapore',
								'(UTC+08:00) Taipei' => 'Asia/Taipei',
								'(UTC+08:00) Ulaan Bataar' => 'Asia/Ulan_Bator',
								'(UTC+08:00) Urumqi' => 'Asia/Urumqi',
								'(UTC+09:00) Irkutsk' => 'Asia/Irkutsk',
								'(UTC+09:00) Tokyo / Osaka / Sapporo' => 'Asia/Tokyo',
								'(UTC+09:00) Seoul' => 'Asia/Seoul',
								'(UTC+09:30) Adelaide' => 'Australia/Adelaide',
								'(UTC+09:30) Darwin' => 'Australia/Darwin',
								'(UTC+10:00) Brisbane' => 'Australia/Brisbane',
								'(UTC+10:00) Canberra' => 'Australia/Canberra',
								'(UTC+10:00) Guam' => 'Pacific/Guam',
								'(UTC+10:00) Hobart' => 'Australia/Hobart',
								'(UTC+10:00) Melbourne' => 'Australia/Melbourne',
								'(UTC+10:00) Port Moresby' => 'Pacific/Port_Moresby',
								'(UTC+10:00) Sydney' => 'Australia/Sydney',
								'(UTC+10:00) Yakutsk' => 'Asia/Yakutsk',
								'(UTC+11:00) Vladivostok' => 'Asia/Vladivostok',
								'(UTC+12:00) Auckland' => 'Pacific/Auckland',
								'(UTC+12:00) Fiji' => 'Pacific/Fiji',
								'(UTC+12:00) International Date Line West' => 'Pacific/Kwajalein',
								'(UTC+12:00) Kamchatka' => 'Asia/Kamchatka',
								'(UTC+12:00) Magadan / New Caledonia / Solomon Is.' => 'Asia/Magadan',
								'(UTC+12:00) Marshall Is.' => 'Pacific/Fiji',
								'(UTC+12:00) Wellington' => 'Pacific/Auckland',
								'(UTC+13:00) Nuku\'alofa' => 'Pacific/Tongatapu'
							);

							$db->table = "constant";
							$db->condition = "type = 3";
							$db->order = "sort ASC";
							$db->limit = "";
							$rows = $db->select();

							foreach($rows as $row) {
							?>
							<div class="col-md-3 col-sm-4 col-xs-12"><?=$row['name']?>:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<input type="hidden" name="name_constant[]" value="<?=$row['constant']?>" >
									<?php
									if($row['constant']=='timezone') {
										echo '<select name="value_constant[]" class="form-control ">';
										foreach ($timezone as $key => $value) {
											$select = '';
											if($row['value']==$value) $select = 'selected="selected"';
											echo '<option value="'.$value.'" '.$select.' >'.$key.'</option>';
										}
										echo '</select>'
									?>
									<?php
									}
									else {
									?>
										<input class="form-control" type="text" name="value_constant[]"  value="<?=stripslashes($row['value'])?>" >
									<?php
									}
									?>
								</div>
							<?php
							}
							?>
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
