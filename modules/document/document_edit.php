<script type="text/javascript">
   closeLoader()
</script>
<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$ol_agency = array();
$ol_agency = getAgencyToCore($corePrivilegeSlug['op'], '/calendar_list;/');
?>
<!-- Menu path -->

<form method="post" enctype="multipart/form-data" action="<?= HOME_URL ?>/uploads/screen/Uploadscreen.php" id="myForm">

    <input type="hidden" name="img_val" class="img_val" />
    <input type="hidden" name="imga" class="imd"/>
   
</form>



<div class="row">
	<div class="col-md-12">
		<!-- <ul class="breadcrumbs-alt">
			<li>
				
			</li>
			
		</ul> -->
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<!-- page start-->
		<section class="panel" id="nhanduc">
			<header class="panel-heading">
				<span class="themdonhang chitietdonhang">Chỉnh sửa đơn hàng</span>
			</header>
			<div class="panel-body">
				<!-- page start-->
				<div class="row" style="padding:10px;">
				Mục này đang cập nhập vui lòng quay lại sau nhé bạn
				</div>
				<!-- page end-->
			</div>
		</section>
		<!-- page end-->
	</div>
	<!-- /.col-lg-12 -->
</div>

<div class="row" >
	<div class="col-md-12" style="padding-top: 10px;">
		<button class="btn btn-round color-1 material-design nuthemmuc" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="chỉnh sửa"><i class="fa fa-wrench" ></i> <span>Chỉnh sửa</span></button>
	
		<button class="btn btn-round color-1 material-design nuthemmuc nutquaylai" onclick="goBack()" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quay lại đơn hàng "><i class="fa fa-reply-all" ></i> <span>Quay lại</span></button>
	</div>	

</div>
<script type="text/javascript">

	function goBack() {
		window.history.back();
    }

	function capture() {

    $('#nhanduc').html2canvas({
        onrendered: function (canvas) {
            $('.img_val').val(canvas.toDataURL("image/png"));

            document.getElementById("myForm").submit(); 
        }
    });
}


</script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/fullcalendar/fullcalendar.min.js"></script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/page-calendar.js"></script>