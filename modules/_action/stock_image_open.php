<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['id'])) {
	$date = new DateClass();
	$id = $_POST['id']+0;
	$code = $_POST['code'];	
	$db->table = "itemproduct";
	$db->condition = "`itemproduct_id` = " .$id;
	$db->order = "";
	$db->limit = 1;
	$rows = $db->select();
	foreach($rows as $row) {
		?>
		<div class="modal-dialog">			
			<input type="hidden" name="id" class="id_ex" value="<?= $id ?>">
 			<div class="modal-content">
			<div class="modal-header personal">
			<button type="button" class="close" style="margin-top: -8px; padding-bottom:10px"  data-dismiss="modal" aria-hidden="true">&times;</button>
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

			<li> Địa chỉ: 302 Hải Phòng - Q.Thanh Khê - TP.Đà Nẵng </li>

			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 </li>
			<li> Mobile: 0905 034 034 - 0913 404 414 </li>

			<li> Email: incongthanhdanang@gmail.com </li>

			</ul>
			</div>
			</div>
			<div style="text-align: center;width: 100%;padding-top: 120px;color:#01803e" class="titlenamein">
			<span class="namehoadon" style="">HÌNH ẢNH SẢN PHẨM</span><br>			
			<div style="display: inline-block;position: relative;">
			<span style="display: inline-block;position: absolute;left: 10px;top: 5px;">CODE</span>
			<input class="form-control formicon" style="padding-left: 50px;" readonly type="text" name="symbols" maxlength="250" autocomplete="off" disabled="" value="<?=$code ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mã hàng tự tăng" >
			</div>			
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>			
			
			
			<div class="modal-body custummodel">
			<div class="row panel-heading thantran" style="margin-top:38px; margin-left: 0; margin-right: 0">
			
			<div class="photo" style="width: 100%;text-align: center;position: relative; overflow: hidden;">
			<div class="img">
				<img src="/uploads/order_items/<?=$row['img']?>"  alt="<?=$row['product_name']?>" title="<?=$row['product_name']?>">
			</div>
			</div>
			</div>			
			</div>
			<div class="modal-footer">
			<div class="row">
			<button class="btn btn-round color-1 material-design nuthemmuc nutquaylai" type="button" onclick="goBack()"  name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quay lại đơn hàng ">
			<i class="fa fa-reply-all" ></i>
			<span>Quay lại</span>
			</button>			
			</div>
			</div>			
			</div>
			</div>
			<script>
			
             
			
			</script>
		
	<?php
	}
}

 else echo 'Error--';