<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['id'])) {
	$date = new DateClass();
	$id = $_POST['id']+0;
	$db->table = "exhibition";
	$db->condition = "`exhibition_id` = " .$id;	$data = array(		'change_payment' => 0,		);	$db->update($data);
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
			<form id="_form_payment" method="post" onsubmit=" handleForm();"  enctype="multipart/form-data">
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
			<div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein">
			<span class="namehoadon">THEO DÕI THANH TOÁN</span><br>
			<span style="color: #007f3d;font-size:16px;">Số : <?=stripslashes($row['exhibition_id']); ?> </span><br/>
			<span style="color: #222;font-size:16px;">Ngày tạo : <?=$date->vnDate($row['created_time']); ?></span><br/>
			<span style="color: #222;font-size:16px;">Ngày kết thúc : <?=$date->vnDate($row['date_end']); ?></span><br />
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			
			<div class="col-md-12 formcode">
			<div class="row">
			<div class="col-md-6 col-sm-4 col-xs-12">
			<div style="display: inline-block;position: relative;">
			<span style="display: inline-block;position: absolute;left: 10px;top: 5px;">CODE</span>
			<input class="form-control formicon" style="padding-left: 50px;" readonly type="text" name="code" maxlength="250" autocomplete="off" disabled="" value="<?=stripslashes($row['code']); ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mã hàng tự tăng" >
			<input type="hidden" name="id" value="<?=$id ;?>" />
			</div>
			</div>
			
			<div class="col-md-6 col-sm-8 col-xs-12 custumcheckbox">
			<div class="row">
			<div class="col-md-5 col-sm-6 col-xs-12 radiobot">
			<div class="checkbox checkbox-danger">
			<input id="checkbox6" type="checkbox" name="urgent" onclick="return false;"  <?=(($row['urgent'] ==1)? 'checked="checked"': ''); ?>>
			<label for="checkbox6">Cần gấp</label>
			</div>
			<div class="checkbox checkbox-success">
			<input id="checkbox3" type="checkbox" name="pick_up" onclick="return false;" <?=(($row['urgent'] ==1)? 'checked="checked"': ''); ?>>
			<label for="checkbox3"> Đến lấy </label></div>
			</div>
			</div>
			</div>
			</div>
			</div>
			<?php if(!empty($row2['company_name'])) 	{ ?>
			<div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;">
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Tên công ty</label></div>
			<div class="col-md-4 col-sm-6 col-xs-12">
			<input class="form-control" name="tencongty" type="text" readonly value="<?=stripslashes($row2['company_name']);?>" />
			</div>
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Mã số thuế</label></div>
			<div class="col-md-4 col-sm-6 col-xs-12"><input readonly class="form-control" name="masothue"  type="text" value="<?=stripslashes($row2['tax_code']);?>" />
			</div>
			</div>
			<?php } ?>
			<div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;">
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Tên khách hàng</label></div>
			<div class="col-md-4 col-sm-6 col-xs-12"><input readonly class="form-control" name="namenguoidat" type="text"  value="<?=stripslashes($row2['full_name']);?>" />
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
			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control" readonly name="diachi" type="text"  value="<?=stripslashes($row2['address']);?>" /></div>
			</div>
			<?php if(!empty($row2['skype'])) { ?>
			<div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;">
			<div class="col-md-2 col-sm-6 col-xs-12"><label>Skype </label></div>
			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control" name="skype" readonly type="text"  value="<?=stripslashes($row2['skype']);?>" /></div>
			</div> <?php } ?>
			
			<div class="modal-body">
			<div class="row panel-heading thantran" style="margin-top:38px; margin-left: 0; margin-right: 0">
			<div class="col-md-2 col-sm-6 col-sm-12" style="text-align:center">
			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">
			Chiết khấu
			</label>
			</div>
			<div class="col-md-1 col-sm-6 col-xs-12">
			<div style="display:inline-block; position: relative;">
			<input style="min-width: 120px" class="form-control chietkhau auto-number"  type="text" name="chietkhau"  value="<?=number_format(stripcslashes($row['discount']),0,',','.');?>"  data-a-sep="." data-a-dec="," data-v-max="100" data-v-min="0" placeholder="0"  autocomplete="off">
			<span style="position: absolute; right: 5px; top: 5px;">%</span>
			</div>
			</div>
			<div class="col-md-3 col-sm-6 col-sm-12"  style="text-align: center">
			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500; margin-right: -40px">
			Thành tiền(Chưa chiết khấu)
			</label>
			</div>
			<div class="col-md-2 col-sm-6 col-sm-12">
			<div style="display: inline-block; position: relative;">
			<input class="form-control tongthanhtien auto-number" readonly data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0" type="text" disabled="" value="<?=number_format(stripcslashes($row['money_undiscounted']),0,',','.');?>"> 
			<span style="position: absolute; right: 5px;top: 5px;">
			VNĐ
			</span>
			</div>
			</div>
			<div class="col-md-2 col-sm-6 col-sm-12"  style="text-align: center">
			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">
			Thành tiền
			</label>
			</div>
			<div class="col-md-2 col-sm-6 col-sm-12">
			<div style="display: inline-block; position: relative;">
			<input class="form-control tongthanhtienck" disabled="" value="<?=number_format(stripcslashes($row['into_money']),0,',','.');?>">
			<span style="position: absolute; right: 5px;top: 5px;">VNĐ</span>
			</div>
			</div>
			</div>
			<div class="row panel-heading thantran" style="margin-top: 2px; margin-left: 0; margin-right: 0">
			<div class="col-md-2 col-sm-6 col-sm-12 " style="text-align: center">
			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thanh toán lần 1 </label>
			</div>
			<div class="col-md-2 col-sm-6 col-sm-12 ">
			<div style="display: inline-block; position: relative;">
			<input class="form-control  auto-number coclan1"  value="<?=number_format(stripcslashes($row['prepayment']),0,',','.');?>" type="text" data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0">
			<span style="position: absolute; right: 5px;top: 5px;">VNĐ</span>
			</div>
			</div>
			<div class="col-md-2 col-sm-6 col-sm-12" style="text-align: center">
			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thanh toán lần 2</label>
			</div>
			<div class="col-md-2 col-sm-6 col-sm-12 ">
			<div style="display: inline-block; position: relative;">
			<input class="form-control payment2 "   value="<?=number_format(stripcslashes($row['payment_2']),0,',','.');?>" / > 
			<span style="position: absolute; right: 5px;top: 5px;">VNĐ</span>
			</div>
			</div>
			<div class="col-md-2 col-sm-6 col-sm-12" style="text-align: center">
			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thanh toán lần 3</label>
			</div>
			<div class="col-md-2 col-sm-6 col-sm-12 ">
			<div style="display: inline-block; position: relative;">
			<input class="form-control payment3 "  value="<?=number_format(stripcslashes($row['payment_3']),0,',','.');?>" / >
			<span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div>
			</div>
			</div>
			<div class="row panel-heading thantran" style="margin-top: 2px; margin-left: 0; margin-right: 0">
			<div class="col-md-4 col-sm-6 col-sm-12 " style="text-align: center">
			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">
			Còn lại 
			</label>
			</div>
			<div class="col-md-6 col-sm-6 col-sm-12 ">
			<div style="display: inline-block; position: relative;">
			<input style="width: 100%" class="form-control tienconlai "  disabled=""  value="<?=number_format(stripcslashes($row['debtor']),0,',','.');?>" / > 
			<span style="position: absolute; right: 5px;top: 5px;">VNĐ</span>
			</div>
			</div>
			<input type="hidden" name="prepayment" value="" />
			<input type="hidden" name="debtor" value="" />
			<input type="hidden" name="payment_2" value="" />
			<input type="hidden" name="payment_3" value="" />
			</div>
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
			Thực hiện
			</span>
			</button>
			</div>
			</div>
					
			
			</div>

			</form>
			
			</div>
			<script>
			$('.chietkhau').keyup( function(e) {
		
			var ck1 = $(this).val().replace(/\./g,'');
			var ck = Number(ck1);
			var ttien = Math.round(sum*(100-Number(ck))/100000)*1000;
			
			$('.tongthanhtienck').val(ttien.toLocaleString('DE-de'));
			
			var datcoc =  ($('.coclan1').val()=='')? 0 :  $('.coclan1').val().replace(/\./g,'') ;
			var pay2 = ($('.payment2').val()=='')? 0 :  $('.payment2').val().replace(/\./g,'') ;
			var pay3 =  ($('.payment2').val()=='')? 0 :  $('.payment3').val().replace(/\./g,'') ;
			var ttt = ttien - datcoc - pay2 - pay3;
			
			$('.tienconlai').val(ttt.toLocaleString('DE-de'));
			
			}); 
			
			$(".coclan1").keyup( function(e) {
			var coclan1 = $('.coclan1').val();
			   var n = parseInt(coclan1.replace(/\D/g,''),10);
			 
			$(".coclan1").val(n.toLocaleString('DE-de'));
				var cl12 = $(this).val().replace(/\./g,'');
				var cl1 = Number(cl12);
				
				var ttt1 = $('.tongthanhtienck').val();
				var ttt2 = ttt1.replace(/\./g,'');
				
				
				var ttt = Number(ttt2) - cl1;
				
				$('.tienconlai').val(ttt.toLocaleString('DE-de'));
				
			});
			$(".payment2").keyup( function(e) {
				var payment2 = $('.payment2').val();
			   var n = parseInt(payment2.replace(/\D/g,''),10);
			 
			$(".payment2").val(n.toLocaleString('DE-de'));
				var cl12 = $(this).val().replace(/\./g,'');
				var cl1 = Number(cl12);
				var pre ;
				if($('.coclan1').val()!== '') 
				 pre = $('.coclan1').val().replace(/\./g,'');
				else pre = 0;
			var ttt1 = $('.tongthanhtienck').val();
				var ttt2 = ttt1.replace(/\./g,'');
				
				
				var ttt = Number(ttt2) - cl1 -Number(pre);
				
				$('.tienconlai').val(ttt.toLocaleString('DE-de'));
				
			});
			$(".payment3").keyup( function(e) {
				var payment3 = $('.payment3').val();
			   var n = parseInt(payment3.replace(/\D/g,''),10);
			 
			$(".payment3").val(n.toLocaleString('DE-de'));
				var cl12 = $(this).val().replace(/\./g,'');
				var cl1 = Number(cl12);
				var pre ;
				if($('.coclan1').val()!== '') 
				 pre = $('.coclan1').val().replace(/\./g,'');
				else pre = 0;
				var ttt1 = $('.tongthanhtienck').val();
				var ttt2 = ttt1.replace(/\./g,'');
				var tien2 ;
				if($('.payment2').val()!== '') 
				 tien2 = $('.payment2').val().replace(/\./g,'');
				else tien2 = 0;
				
				var ttt = Number(ttt2) - cl1 -Number(pre)- Number(tien2);
				
				$('.tienconlai').val(ttt.toLocaleString('DE-de'));
				
			});
			
			function validateF() {
				
				
				var prepayment = $('.coclan1').val().replace(/\./g,'');
				var payment2 = $('.payment2').val().replace(/\./g,'');
				var payment3 = $('.payment3').val().replace(/\./g,'');
				var debtor = $('.tienconlai').val().replace(/\./g,'');
				
				
				$('input[name="prepayment"]').val(prepayment);
				$('input[name="payment_2"]').val(payment2);
				$('input[name="payment_3"]').val(payment3);
				$('input[name="debtor"]').val(debtor);
				if(Number(debtor) <0) {
				
				return false;
			} else return true;
		}
		function handleForm() {
			
			var x = validateF();
			event.preventDefault();
			if(x) {  
			
			return add_payment2('_form_payment');
			
			}
			else alert('đơn hàng không hợp lệ');
			
		}

			</script>
		
	<?php
	}
}

} else echo 'Error--';