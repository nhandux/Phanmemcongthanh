<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
?>

<!-- Menu path -->
<div class="row">
	<!-- <div class="col-md-12">
		<ul class="breadcrumbs-alt">
			<li>
				<a href="/"><?php echo $menu_ol[0];?></a>
			</li>
			<li>
				<a><?php echo $menu_ol[4];?></a>
			</li>
			<li>
				<a class="current"><?php echo $menu_op[4][0];?></a>
			</li>
		</ul>
	</div> -->
</div>
<!-- /.row -->
<?php
if(isset($_POST['idDel'])){

	$idDel = implode(',',$_POST['idDel']);

	$db->table = "level";
	$db->condition = "level_id IN (".$idDel.")";
	$db->delete();
}
?>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-no-border">
		<div class="tieudehoadondm">
			<!-- <span >Hóa đơn In Công Thành</span> -->
			<div>

				<div class="logoin"><img src="images/logo.png"></div>
				
				<div class="kihieu">
					<ul>
						<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>
						<li> Mobie: 0987 654 321 - 0123 456 689 </li>
						<li> Email: congthanhprint@gmail.com </li>
					</ul>
				</div>

			</div>
			<div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein"><span class="namehoadon">HÓA ĐƠN IN CÔNG THÀNH</span><br>
			<span>Số : ........... </span><br/>
			<!-- <span>Ký hiệu : ..........</span><br/> -->
			<span>Ngày ....... tháng ....... năm 20.......</span></div>

		</div>	
			
		<div class="row buttonin" >
			<div class="col-md-12" style="padding-top: 10px;">
				<button class="btn btn-round color-1 material-design nuthemmuc" onclick="capture()" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="In phiếu"><i class="fa fa-print" ></i> <span>In phiếu</span></button>
			
				<button class="btn btn-round color-1 material-design nuthemmuc nutquaylai" onclick="goBack()" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quay lại đơn hàng "><i class="fa fa-reply-all" ></i> <span>Quay lại</span></button>
			</div>	

		</div>
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-8 -->
</div>
<script>
	$(document).ready(function() {
		$('#dataTablesList').dataTable( {
			"language": {
				"url": "/js/data-tables/de_DE.txt",
				"decimal": ",",
				"thousands": "."
			},
			"aoColumnDefs" : [ {
				"bSortable" : false,
				"aTargets" : [5, "no-sort" ]
			} ],
			"paging":   false,
			"info":     false,
			"order": [[ 0, "asc" ]],
			"columns": [
				{ "orderDataType": "dom-select" },
				null,
				null,
				null,
				null,
				null
			]
		} );
	});
	$(".ol-confirm").click(function() {
		confirm("Tất cả các dữ liệu liên quan sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {
			if(this.data == true) document.getElementById("_ol_delete").submit();
		});
	});
	$(".ol-alert-core").boxes('alert', 'Bạn không được phân quyền với chức năng này.');
</script>