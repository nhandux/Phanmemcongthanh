<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//

if(isset($_POST['id'])) {
		
			
		
	$date = new DateClass();
	$id = $_POST['id']+0;
	
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
		<div class="modal-dialog">
			<form id="_form_stock" method="post" onsubmit=" handleForm();" enctype="multipart/form-data">
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
			<div style="text-align: center;width: 100%;padding-top: 15px;color:#01803e" class="titlenamein">
			<span class="namehoadon" style="">QUẢN LÝ THÀNH PHẨM ĐƠN HÀNG</span><br>
			<span>Số : <?=stripslashes($row['code']); ?> </span><br/>
			<span style="color: #222;font-size:13px;">Ngày tạo : <?=$date->vnDate($row['created_time']); ?></span>
			<span style="color: #222;font-size:13px;">Ngày kết thúc : <?=$date->vnDate($row['date_end']); ?></span>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			
			<div class="col-md-12 formcode">
			<div class="row">
			<div class="col-md-6 col-sm-4 col-xs-12" style="padding-top: 5px;">
			<label style="margin-left: 5px;display: inline-block;">Mã đơn hàng:</label> <div style="display: inline-block;position: relative;">
			<span style="display: inline-block;position: absolute;left: 10px;top: 5px;">CODE</span>
			<input class="form-control formicon" style="padding-left: 50px;" readonly type="text" name="symbols" maxlength="250" autocomplete="off" disabled="" value="<?=stripslashes($row['code']); ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mã hàng tự tăng" >
			</div>
			</div>
			
			<div class="col-md-6 col-sm-8 col-xs-12 custumcheckbox">
			<div class="row text-right">
			<div class="col-md-12 col-sm-12 col-xs-12 radiobot" style="text-align: right;">
			<div class="checkbox checkbox-danger">
			<input id="checkbox6" type="checkbox" onclick="return false;" <?=(($row['urgent'] ==1)? 'checked="checked"': ''); ?>>
			<label for="checkbox6">Cần gấp</label>
			</div>
			<div class="checkbox checkbox-success">
			<input id="checkbox3" type="checkbox" onclick="return false;" <?=(($row['pick_up'] ==1)? 'checked="checked"': ''); ?>>
			<label for="checkbox3"> Đến lấy </label></div>
			</div>
			</div>
			</div>
			</div>
			</div>
			<?php if(!empty($row2['company_name'])){ ?>
			<div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;">
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Tên công ty</label></div>
			<div class="col-md-4 col-sm-6 col-xs-12">
			<input class="form-control"  type="text" readonly value="<?=stripslashes($row2['company_name']);?>" />
			</div>
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Mã số thuế</label></div>
			<div class="col-md-4 col-sm-6 col-xs-12"><input readonly class="form-control"  type="text" value="<?=stripslashes($row2['tax_code']);?>" />
			</div>
			</div>
			<?php } ?>
			<div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;">
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Tên khách hàng</label></div>
			<div class="col-md-4 col-sm-6 col-xs-12"><input readonly class="form-control" name="ten" type="text"  value="<?=stripslashes($row2['full_name']);?>" />
			</div>
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Số điện thoại</label></div>
			<div class="col-md-4 col-sm-6 col-xs-12">
			<input class="form-control" type="text" readonly value="<?=stripslashes($row2['phone']);?>" />
			</div>	
			</div>
			<div class="row" style="margin-top: 10px; margin-bottom: 20px; padding-left: 20px; padding-right: 20px;">
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Email</label></div>
			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control" readonly name="email" type="text" value="<?=stripslashes($row2['email']);?>" /></div>
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Địa chỉ </label></div>
			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control" readonly name="địa chỉ" type="text"  value="<?=stripslashes($row2['address']);?>" /></div>
			</div>
			<?php if(!empty($row2['skype'])) { ?>
			<div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;">
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Skype </label></div>
			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control" name="địa chỉ" readonly type="text"  value="<?=stripslashes($row2['skype']);?>" /></div>
			</div> <?php } ?>
			
			<div class="modal-body custummodel">
			<div class="row panel-heading thantran" style="margin-top:38px; margin-left: 0; margin-right: 0">
			<?= getOrderItemsToStock($id);
			?>
			</div>
			<input type="hidden" name="list_stock" value="" />
			
			</div>
			<div class="modal-footer">
			<div class="row">
			<button class="btn btn-round color-1 material-design nuthemmuc nutquaylai" type="button" onclick="goBack()"  name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quay lại đơn hàng ">
			<i class="fa fa-reply-all" ></i>
			<span>Quay lại</span>
			</button>
			<button class="btn btn-round color-1 material-design  nuthemmuc btn-nhan" id="guichuthich2" type="submit" name="login_admin" data-color="#004740"  >
			<i class="fa fa-file-text-o" ></i> 
			<span>
			Thực hiện
			</span>
			</button>
			</div>
			</div>
					
			
			</div>

			</form>
			
			</div>
			<script>
			
             var tableData = [];
			$(document).on( 'keyup',' #orderlist .fixsoluongin', function(e) {
		 var n = parseInt($(this).val().replace(/\D/g,''),10);
		 if($(this).val() === '') { 
			
		 } else {
		 $(this).val(n.toLocaleString('de-DE')); }
		 
});
			function validateF() {
				
				var y =  $("#orderlist").find("tr.listds");
				var z = y.length;
				for(var k = 1; k <= z; k++) {
					var temp = {};
					temp['id'] = y.eq(k-1).find(".itemNo").val();
					temp['real_produced_number'] =  Number(y.eq(k-1).find(".fixsoluongin").val().replace(/\./g,'')) ;
					temp['stock_count'] =  Number(y.eq(k-1).find(".fixsoluongin").val().replace(/\./g,'')) -  Number(y.eq(k-1).find(".fixsoluong").val().replace(/\./g,'')) ;
					
					tableData.push(temp);
		}
				$('input[name="list_stock"]').val(JSON.stringify(tableData));
				return true;
		}
		function handleForm() {
			
			var x = validateF();
			event.preventDefault();
			if(x) {  
			
			return add_stock('_form_stock');
			
			}
			else alert('Thay đổi thanh toán không hợp lệ;');
			
		}
			
			</script>
		
	<?php
	}
}

} else echo 'Error--';