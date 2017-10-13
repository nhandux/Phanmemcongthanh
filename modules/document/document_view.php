
<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

$s = isset($_GET['s']) ? $_GET['s'] : "";
$i = isset($_GET['id']) ? $_GET['id'] : "";
 
 if($s != ""){
 	?>
 <div class="alert alert-success">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Thông báo!</strong> Bạn đã lưu ảnh thành công với tên là: <span style="color:#903030;"><?= 'congthanh_'.$i ?>_luuanh.png</span>.
  </div>
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

		?>
		<form method="post" enctype="multipart/form-data" action="<?= HOME_URL ?>/uploads/screen/Uploadscreen.php" id="myForm">

	    <input type="hidden" name="img_val" class="img_val" />
	    <input type="hidden" name="imga" class="imd"/>
	    <input type="hidden" name="value_id" value="<?= $id ?>" class="value_id"/>
    
   
</form>
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

			<span class="namehoadon" style="font-size: 18px;">ĐƠN HÀNG <?=$row['code']?></span><br>

			<span style="color: #007f3d;font-size:14px;">Số : <?=stripslashes($row['exhibition_id']);?> </span><br/>

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


         <div class="table-responsive" style="margin-top: 30px;">
			 <table class="table table-no-border table-ol-3w table-hover" id="bangdanhsachmonhang">
			<tr class="panel-heading thantran" >
			<th><label class="form-lb-tp">Thứ tự</label></th>
			<th><label class="form-lb-tp">Tên sản phẩm</label></th>
			<th width="150px;"><label class="form-lb-tp">Kích thước</label></th>
			<th width="200px;"><label class="form-lb-tp">Đơn giá</label></th>
			<th><label class="form-lb-tp">Số lượng</label></th>
			<th><label class="form-lb-tp">Thành tiền</label></th>
			<th width="110px;"><label class="form-lb-tp">&nbsp;</label></th>
			</tr>
		    <?php 

		    $db->table = "itemproduct";

			$db->condition = "`exhibition_id` = " .$id;

			$db->order = "";

			$db->limit = "";

			$rows1 = $db->select();

			$i = 0;
          
			foreach ($rows1 as $row1) {
		  
		    $i = $i + 1;
		
			?>
			
			<tr class="listds">
				<td><?= $i ?></td>
				<td><?= $row1['product_name'] ?></td>
				<td><?= $row1['size'] ?></td>
				<td><?= number_format($row1['unit_price'],'0','','.').' / '.$row1['type'] ?></td>
				<td><?= number_format($row1['count_number'],'0','','.') ?></td>
				<td><?= number_format($row1['total'],'0','','.') ?> VNĐ</td>
				<td></td>
				</tr>
			</tr>
			
			<?php } ?>

			</table>
			</div>
			<div class="row text-right" style="margin-top: 20px;">
			<div class="col-md-12">
				<span style="margin-right: 10px;display: inline-block;font-size: 16px;color:#007f3d;font-weight: bold;">TỔNG TIỀN: </span>
				<span style="color:#903030;font-size: 18px;font-weight: bold;" class="tien"><?= number_format($row['money_undiscounted'],'0','','.') ?> VNĐ</span>
				</div>
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

<div class="row" >
	<div class="col-md-12" style="padding-top: 10px;text-align: center;">
		<button class="btn btn-round color-1 material-design nuthemmuc" onclick="capture()" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Lưu ảnh hiện tại"><i class="fa fa-save" ></i> <span>Lưu ảnh</span></button>

		<button class="btn btn-round color-1 material-design nuthemmuc" style="background: #ff6600;" onclick="printdiv('nhanduc')" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="In đơn hàng"><i class="fa fa-print" ></i> <span>In đơn hàng</span></button>
	
		<button class="btn btn-round color-1 material-design nuthemmuc nutquaylai" onclick="goBack()" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quay lại đơn hàng "><i class="fa fa-reply-all" ></i> <span>Quay lại</span></button>
	</div>	

</div>
<script type="text/javascript">

function printdiv(printpage)
{
var headstr = "<html><head><title></title></head><body>";
var footstr = "</body>";
var newstr = document.all.item(printpage).innerHTML;
var oldstr = document.body.innerHTML;
document.body.innerHTML = headstr+newstr+footstr;
window.print();
document.body.innerHTML = oldstr;
return false;
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