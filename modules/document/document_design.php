<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$s = isset($_GET['s']) ? $_GET['s'] : "";
$i = isset($_GET['id']) ? $_GET['id'] : "";
 
 if($s != ""){
 	?>

  <script type="text/javascript">
  	$("div.alert").delay(2000).slideUp();
  </script>
 	<?php
 }

if(isset($_GET['id'])) {	

	$id = $_GET['id']+0;

	$db->table = "exhibition";

	$db->condition = "`exhibition_id` = " .$id;

	$db->order = "";

	$db->limit = 1;

	$rows = $db->select();

	foreach($rows as $row) {

		$db->table = "customer";

		$db->condition = "`customer_id` = " .($row['customer_id']+0);

		$db->order = "";

		$db->limit = "";

		$row2s = $db->select();

		foreach($row2s as $row2) {

		//lấy ra upload_id

        //kiểm tra giá trị

        $db->table = "uploads_tmp";
        $db->condition = "id_exhibition = ".$id;
		$db->order = "";
		$db->limit = 1;
		$upls  = $db->select();
		$cons = $db->RowCount;
        

		//end kiểm tra giá trị
        if($cons == 0){
	        
	        $upload_img_id  = 0;

		    if($upload_img_id==0) {
			
			$db->table = "uploads_tmp";
			
			$data = array(
				'created_time'=>time(),
				'id_exhibition'=>$id
			);

			$db->insert($data);

			$upload_img_id = $db->LastInsertID;
	     }
        }else{
          $numupload = $upls[0]['upload_id'];

          $upload_img_id =  $numupload ;
        }
        


		?>
		<form method="post" enctype="multipart/form-data" action="" >

	    <input type="hidden" name="value_id" value="<?= $id ?>" class="value_id"/>
	    
	    <input type="hidden" name="upload_img_id" value="<?=$upload_img_id?>">


<div class="row">
	<div class="col-md-12">
		<!-- <ul class="breadcrumbs-alt">
			<li>
				
			</li>
			
		</ul> -->
	</div>
</div>
<style type="text/css">
			@media print
			   {
			      table{
			      	border: 0px !important;
			      	overflow: hidden;
			      }
			   }
</style>

<div class="row">
	<div class="col-lg-12">
		<!-- page start-->
		<section class="panel" id="nhanduc">
			<!-- <header class="panel-heading">
				<span class="themdonhang chitietdonhang">Chi tiết đơn hàng</span>
			</header> -->
			<div class="panel-body">
				<!-- page start-->
					<div class="row">

			<div class="col-lg-12">

			<div class="panel panel-no-border">

			<div class="tieudehoadondm">

			<div>

			<div class="logoin">

			<img src="images/logo.png">

			</div>

			<div class="kihieu">

			<ul>

			<li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li>

			<li> Mobie: 0987 654 321 - 0123 456 689 </li>

			<li> Email: congthanhprint@gmail.com </li>

			</ul>

			</div>

			</div>

			<div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein">

			<span class="namehoadon" style="font-size: 18px;">XÁC NHẬN ĐƠN HÀNG </span><br>

			<span style="color: #007f3d;font-size:14px;">Số : <?=stripslashes($row['exhibition_id']).' - '.$row['code']; ?> </span><br/>

			<span style="color: #007f3d;font-size:14px;">Ngày tạo : <?=$date->vnDate($row['created_time']); ?></span> <span> - </span>

			<span style="color: #007f3d;font-size:14px;">Ngày hẹn trả : <?=$date->vnDate($row['date_end']); ?></span>

			</div>

			</div>

			</div>
			<div class="table-responsive" style="margin-bottom: 15px;">
			  <table style="width: 100%;font-size: 14px;" class="canhanbang">
            	<tr>
            		<td>Tên công ty: </td><td><?php  if($row2['company_name']=="") echo '........................'; else echo $row2['company_name']  ?>. </td>
            		<td>Mã số thuế </td><td><?php  if($row2['tax_code']=="") echo '........................'; else echo $row2['tax_code']  ?>. </td>
            		<td>Tên khách hàng: </td><td><?php  if($row2['full_name']=="") echo '........................'; else echo $row2['full_name']  ?>. </td>
            	</tr>
            	<tr>
            		<td>Số điện thoại: </td><td><?php  if($row2['phone']=="") echo '........................'; else echo $row2['phone']  ?>.</td>
            		<td>Địa chỉ: </td><td> <?php  if($row2['address']=="") echo '........................'; else echo $row2['address']  ?>. </td>
            		<td>Skype: </td><td><?php  if($row2['skype']=="") echo '........................'; else echo $row2['skype']  ?>. </td>
            	</tr>
                <?php
                  
                $db->table = "itemproduct";
				$db->condition = "exhibition_id = ".$id;
				$db->order = "";
				$db->limit = "";
				$rowsex = $db->select();
			    $m = 0;
                    foreach ($rowsex as $value) {
                $m = $m + 1;
                ?>
            	<tr>

            		<td>Tên loại <?= $m ?>: </td><td><?php  if($value['product_name']=="") echo '........................'; else echo $value['product_name']  ?>.</td>
            		<td>Kích thước: </td><td> <?php  if($value['size']=="") echo '........................'; else echo $value['size']  ?>. </td>
            		<td>Đơn giá: </td><td><?php  if($value['unit_price']=="") echo '........................'; else echo number_format($value['unit_price'],'0','','.').'/'.$value['type'];  ?>. </td>
            	</tr>

              <?php } ?>
            </table> 
         </div>
         <?php 
        function getrow($a){
        	if($a == "")
              echo '................................';
            else
              echo $a;
           }
         ?>
         <div class="contentupload" style="margin-top: 30px;margin-bottom: 15px;">

         	
         	<input id="album" class="form-control file" type="file" name="images[]" data-max-file-count="15" accept="image/*" multiple>

         </div>
    </div>
	</div>
	<?php 
	    }
	 }
	}
	?>
	<!-- page end-->
</div>
</section>
<!-- page end-->
	</div>
	<!-- /.col-lg-12 -->
</div>
<div class="row">
	<div class="col-md-12" style="padding-top: 10px;text-align: center;">

  <button class="btn btn-round color-1 material-design nuthemmuc" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" onclick="xemct(<?= $id; ?>)" data-original-title="Xem chi tiết đơn hàng"><i class="fa fa-save" ></i> <span>Xem chi tiết </span></button>
	
		<button class="btn btn-round color-1 material-design nuthemmuc nutquaylai" onclick="goBack()" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quay lại đơn hàng "><i class="fa fa-reply-all" ></i> <span>Quay lại</span></button>
	</div>	

</div>


<?php


$dir_dest = ROOT_DIR . DS .'uploads'. DS .'exhibition';
$list_img = "";
$p1 = $p2 = array();
$db->table = "uploads_tmp";
$db->condition = "upload_id = ".$upload_img_id;
$db->order = "";
$db->limit = "";
$rows = $db->select();

foreach ($rows as $row){
	$list_img = $row['list_img'];
}

$files_img = explode(";", $list_img);
if(count($files_img)>0) {
	for ($i = 0; $i < count($files_img); $i++) {
		if ($files_img[$i] != "" && file_exists($dir_dest . DS . $files_img[$i])) {
			$src = "/uploads/exhibition/full_" . $files_img[$i];
			$l_key = explode("_", $files_img[$i]);
			$key = $l_key[0];
			$url = '/uploads/upload.php?type=2&id='.$upload_img_id.'&item='.$files_img[$i].'&lang='.TTH_LANGUAGE;
			$p1[$i] = '"<a href=\''.$src.'\' data-gallery><img src=\''.$src.'\' class=\'file-preview-image\'></a>"';
			$p2[$i] = '{url: "'.$url.'", key: '.$key.'}';
		}
	}
}

?>
</form>

<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
	<div class="slides"></div>
	<h3 class="title"></h3>
	<a class="prev">‹</a>
	<a class="next">›</a>
	<a class="close">×</a>
	<a class="play-pause"></a>
	<ol class="indicator"></ol>
</div>

<script type="text/javascript">
	$("#album").fileinput({
			uploadUrl: "/uploads/upload.php?type=1&id=<?=$upload_img_id?>&lang=<?=TTH_LANGUAGE?>",
			uploadAsync: false,
			initialPreview: [
				<?php
				  echo implode(',', $p1);
				 ?>
			],
			initialPreviewConfig: [
				<?php 
				 echo implode(',', $p2);
				?>
			]
		});

	function xemct(id)
	{
		window.localtion = "/?ol=document&op=document_view&id="+id
	}


	function goBack() {
		window.history.back();
    }
	function capture() {
    $('#nhanduc').html2canvas({
        onrendered: function (canvas) {
            $('.img_val').val(canvas.toDataURL("image/png"));

              document.getElementById("myForm").submit(); 
        }
    })
}
</script>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/fullcalendar/fullcalendar.min.js"></script>