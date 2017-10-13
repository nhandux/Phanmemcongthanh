<?php

if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

//

$date = new DateClass();

if(isset($_POST['id'])) {

	

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

			<form id="_form_document" method="post" onsubmit=" handleForm();" enctype="multipart/form-data">

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

			<span class="namehoadon">CHỈNH SỬA ĐƠN HÀNG</span><br>

			<span style="color: #007f3d;font-size:13px;">Số : <?=stripslashes($row['exhibition_id']); ?> </span><br />

			<span style="color: #007f3d;font-size:13px;">Ngày tạo : <?=$date->vnDate($row['created_time']); ?></span><br />

			<span style="color: #007f3d;font-size:13px;margin-left: -25%;">Ngày kết thúc : <?=$date->vnDate($row['date_end']); ?></span><br />

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

			<input class="form-control formicon" style="padding-left: 50px;" type="text" name="symbols" maxlength="250" autocomplete="off" disabled="" value="<?=stripslashes($row['code']); ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mã hàng tự tăng" >

			<input type="hidden" name="id" value="<?=$id ;?>" />

			</div>

			</div>

			

			<div class="col-md-6 col-sm-8 col-xs-12 custumcheckbox">

			<div class="row">

			<div class="col-md-12 col-sm-12 col-xs-12 radiobot" style="text-align: right;">

			<div class="checkbox checkbox-danger">

			<input id="checkbox6" type="checkbox" name="urgent" <?=(($row['urgent'] ==1)? 'value="1" checked="checked"': 'value="0"'); ?>>

			<label for="checkbox6">Cần gấp</label>

			</div>

			<div class="checkbox checkbox-success">

			<input id="checkbox3" type="checkbox" name="pick_up" <?=(($row['pick_up'] ==1)? 'value="1" checked="checked"': 'value="0"'); ?>>

			<label for="checkbox3"> Đến lấy </label></div>

			<script>

					$(document).ready(function(){

					$("#checkbox6").click(function(){

						if($(this).val() == "0") $(this).val("1");

						else $(this).val("0");

					});

					$("#checkbox3").click(function(){

						if($(this).val() == "0") $(this).val("1");

						else $(this).val("0");

					});

					});

					</script>

			</div>

			</div>

			</div>

			</div>

			</div>

			<?php if(!empty($row2['company_name'])) 	{ ?>

			<div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;">

			<div class="col-md-2 col-sm-6 col-xs-12"><label>Tên công ty</label></div>

			<div class="col-md-4 col-sm-6 col-xs-12">

			<input class="form-control"  name="tencongty" type="text" value="<?=stripslashes($row2['company_name']);?>" />

			</div>

			<div class="col-md-2 col-sm-6 col-xs-12"><label>Mã số thuế</label></div>

			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control"  type="text" name="masothue" value="<?=stripslashes($row2['tax_code']);?>" />

			</div>

			</div>

			<?php } ?>

			<div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;">

			<div class="col-md-2 col-sm-6 col-xs-12"><label>Tên khách hàng</label></div>

			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control" name="namenguoidat" type="text"  value="<?=stripslashes($row2['full_name']);?>" />

			</div>

			<div class="col-md-2 col-sm-6 col-xs-12"><label>Số điện thoại</label></div>

			<div class="col-md-4 col-sm-6 col-xs-12">

			<input class="form-control" type="text" name="sodienthoai" value="<?=stripslashes($row2['phone']);?>" />

			</div>	

			</div>

			<div class="row" style="margin-top: 10px; margin-bottom: 20px; padding-left: 20px; padding-right: 20px;">

			<div class="col-md-2 col-sm-6 col-xs-12"><label>Email</label></div>

			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control" name="email" type="text" value="<?=stripslashes($row2['email']);?>" /></div>

			<div class="col-md-2 col-sm-6 col-xs-12"><label>Địa chỉ </label></div>

			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control" name="diachi" type="text"  value="<?=stripslashes($row2['address']);?>" /></div>

			</div>

			<?php if(!empty($row2['skype'])) { ?>

			<div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;">

			<div class="col-md-2 col-sm-6 col-xs-12"><label>Skype </label></div>

			<div class="col-md-4 col-sm-6 col-xs-12"><input class="form-control" name="skype" type="text"  value="<?=stripslashes($row2['skype']);?>" /></div>

			</div> <?php } ?>

			<div class="form-responsive">

			<table class="table table-no-border table-ol-3w table-hover" id="bangdanhsachmonhang">

			<tr class="panel-heading thantran modelcustom" >

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

				$row3s = $db->select();

				$i = 1;

				$j = 0;

				$temp = array();

				foreach($row3s as $row3) {

					$temp[]  = array(

					'id' => $j++,

					'sp' => stripslashes($row3['product_name']),

					'size' =>  stripslashes($row3['size']),

					'chonsubmit' =>  stripslashes($row3['unit_price']),

					'unit' =>  '/'. stripslashes($row3['type']),

					'soluongmathang' =>  stripslashes($row3['count_number']),

					'thanhtien' => stripslashes($row3['total']),

					);

					

					?>

			<tr class="listds">

			<td>

			<label class="form-lb-tp stt"><?=$i?></label>

			</td>

			<td><div class="xulyselect">
						<input type="text" value="<?=stripcslashes($row3['product_name']);?>" class="nhanselect form-control fixproduct " onclick="chonse(this,'locselect')" onkeyup="chonselect('nhanselect','locselect')" placeholder="Chọn sản phẩm... " title="chọn sản phẩm..." autocomplete="off">
                        <span class="caret caretcustumnhan" style="top:12px" ></span>
						<ul  class="locselect">
							<?=getListOfProducts2();?>	
						</ul>
                 </div>
			</td>

			<td><div class="xulyselect">
						<input type="text"  value="<?=stripcslashes($row3['size']);?>" class="nhanselect form-control fixsize " onclick="chonse(this,'locselect')" onkeyup="chonselect('nhanselect','locselect')" placeholder="Chọn sản phẩm... " title="chọn sản phẩm..." autocomplete="off">
                        <span class="caret caretcustumnhan" style="top:12px" ></span>
						<ul class="locselect">
						<li><a href="javascript:{0}" value="4A0">4A0</a></li>
						  <li><a href="javascript:{0}" value="2A0">2A0</a></li>
						<?php
                         for($k = 0 ; $k <= 10 ; $k++) :
						 ?>
						  <li><a href="javascript:{0}" value="A<?= $k ?>">A<?= $k ?></a></li>
						 <?php endfor ?>
						</ul>
                 </div>
			</td>

			<td>

			<label class="form-lb-tp">

			<div style="display: inline-block; position: relative;">

			<input type="text" class="form-control fixdongia  auto-number"  data-a-sep="." data-a-dec="," data-v-max="999999999" data-v-min="0" value="<?=number_format(stripcslashes($row3['unit_price']),0, ',','.');?>" / >

			<input type="text" style="position:absolute;right: 5px; top: 10%" class="layunit" value="/<?=stripcslashes($row3['type']);?>" />

			</div>

			</label>

			</td>

			<td>

			<label class="form-lb-tp orderqty">

			<input type="text"  class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="<?=number_format(stripcslashes($row3['count_number']),0,',','.');?>" />

			</label>

			</td>

			<td>

			<label class="form-lb-tp thanhtienorder">

			<input type="text" class="form-control  fixthanhtien"  disabled value="<?=number_format(stripcslashes($row3['total']),0,',','.');?>" />

			</label>

			</td>

			<td class="dellist" style="padding-left: 0">

			<label class="form-lb-tp">

			<a class="copy" href="javascript:{}" title="copy"><i class="fa fa-plus" aria-hidden="true"> </i></a>

			<a class="xoahang" title="xóa" href="javascript:{}" style="margin-left: 30px;" ><i class="fa fa-trash-o" aria-hidden="true"> </i></a>

			</label>

			</td>

			 

				</tr> <?php $i++; } $items = json_encode($temp); ?>

			</table>

			</div>

			<input type="hidden" name="order_items" value="" />

			<div class="row addselect" style="margin: 0px;">

					<div class="col-md-2 col-sm-4 col-xs-12">

                     <div class="xulyselect">

						<input type="text"  class="nhanselect form-control sanphamtype" onclick="chonse(this,'locselect')" onkeyup="chonselect('nhanselect','locselect')" placeholder="Chọn sản phẩm... " title="chọn sản phẩm..." autocomplete="off">

                        <span class="caret caretcustumnhan" ></span>

						<ul class="locselect">
						
						<?=getListOfProducts();?>		

						</ul>

                       </div>

					</div>

					<div class="col-md-2 col-sm-4 col-xs-12">

                        <div class="xulyselect">

						<input type="text"  class="nhanselect form-control sanphamsize1" onclick="chonse(this,'locselect')" onkeyup="chonselect('nhanselect','locselect')" placeholder="Chọn kích thước... " title="chọn kích thước..." autocomplete="off">

                        <span class="caret caretcustumnhan" ></span>

						<ul  class="locselect">
						<li><a href="javascript:{0}" value="4A0">4A0</a></li>
						  <li><a href="javascript:{0}" value="2A0">2A0</a></li>
						<?php
                         for($k = 0 ; $k <= 10 ; $k++) :
						 ?>
						  <li><a href="javascript:{0}" value="A<?= $k ?>">A<?= $k ?></a></li>
						 <?php endfor ?>						

						</ul>

                       </div>

					</div>

					

					<div class="col-md-2 col-sm-4 col-xs-12">

						<div class='control-group addselectafter' >

							<div class='controls'>

							  <div class='input-append dropdown' data-select='true'>

								<!-- The hidden field can be anywhere within div.dropdown -->

								<input type='hidden' value='' class='dropdown-field laygiatritep' />

								<!-- Unordered list of options -->

								<ul class='dropdown-menu dropnhan dropnhanlist'>

								   <?php getListOfUnit(); ?>

								</ul>

								<!-- Make sure there isn't a space between the input and the toggle -->

								<input type='text'  placeholder='Đơn giá' class='input-mini form-control formgiatri chonsubmit  auto-number'  data-a-sep="." data-a-dec="," data-v-max="999999999" data-v-min="0"/><a

								  class='add-on dropdown-toggle'

								  data-toggle='dropdown' href='#'>

								  <span class='dropdown-display giatritep'>Cái</span>

								  <i class='caret'> </i>

								</a>

							  </div>

							</div>

						  </div>

					</div>				

					

					

					<div class="col-md-2 col-sm-4 col-xs-12">

									<input class="form-control soluongmathang auto-number"  type="text" name="quan"  value=""  data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" placeholder="Số lượng"  autocomplete="off">

					</div>

					<div class="col-md-2 col-sm-4 col-xs-12">

					            <input class="form-control thanhtienmathang" disabled="" type="text" name="thanhtien"  value="" placeholder="Thành tiền" autocomplete="off">

					</div>            

					<div class="col-md-2 col-sm-4 col-xs-12 text-center">

					           <button class="btn btn-round color-1 material-design themmoiphieu" type="button" name="login_admin" data-color="#004740" id="themmonhang"><i class="fa fa-plus-circle keyfram" ></i> <span>Thêm</span></button>

					</div>



				<!-- đóng row -->

					<div class="row textarear">

                       <div class="col-md-12 col-sm-12 col-xs-12">

							<textarea class="form-control ghichuhang" rows="4" name="comment" value="<?=stripslashes($row['comment']); ?>" placeholder="Nhập vào chú thích cho đơn hàng" ><?=stripslashes($row['comment']); ?></textarea>

                        </div>

					</div>

					
					<div class="col-md-12 col-sm-12 col-sx-12 ">

					<label style="margin-right: 10px;">Ngày hẹn trả: </label><input style="max-width: 200px;" placeholder="Chọn ngày hoàn thành"  class="form-control input-date formngayh" type="text" name="date_end" value="<?=$date->vnDate($row['date_end']); ?>"  readonly="" id="time_end"   maxlength="10" autocomplete="off">

                    <script type="text/javascript">

						 var d = new Date()

							$('#time_end').datetimepicker({

								format:'d/m/Y H:i',

								lang:'vi',

								onShow:function(ct){

									this.setOptions({

										minDate:d,

										maxDate:false,

										format:'d/m/Y',

										formatDate:'d/m/Y'

									})

								}

							});

						 </script>

					

					</div>

						 

				</div>

			<div class="modal-body modelcustom">

			<div class="row panel-heading thantran" style="margin-top:0px; margin-left: 0; margin-right: 0">

			<div class="col-md-2 col-sm-6 col-sm-12">

			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">

			Chiết khấu

			</label>

			</div>

			<div class="col-md-1 col-sm-6 col-xs-12">

			<div style="display:inline-block; position: relative;">

			<input style="min-width: 120px" class="form-control chietkhau auto-number"  type="text"  value="<?=number_format(stripcslashes($row['discount']),0,',','.');?>"  data-a-sep="." data-a-dec="," data-v-max="100" data-v-min="0" placeholder="0"  autocomplete="off">

			<span style="position: absolute; right: 5px; top: 5px;">%</span>

			</div>

			</div>

			<div class="col-md-3 col-sm-6 col-sm-12"  style="text-align: center">

			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">

			Thành tiền(Chưa chiết khấu)

			</label>

			</div>

			<div class="col-md-2 col-sm-6 col-sm-12">

			<div style="display: inline-block; position: relative;">

			<input class="form-control tongthanhtien auto-number" data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0" type="text" disabled="" value="<?=number_format(stripcslashes($row['money_undiscounted']),0,',','.');?>"> 

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

			<input class="form-control coclan1 auto-number coclan1"   value="<?=number_format(stripcslashes($row['prepayment']),0,',','.');?>" type="text" data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0">

			<span style="position: absolute; right: 5px;top: 5px;">VNĐ</span>

			</div>

			</div>

			<div class="col-md-2 col-sm-6 col-sm-12" style="text-align: center">

			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thanh toán lần 2</label>

			</div>

			<div class="col-md-2 col-sm-6 col-sm-12 ">

			<div style="display: inline-block; position: relative;">

			<input class="form-control payment2"  readonly  value="<?=number_format(stripcslashes($row['payment_2']),0,',','.');?>" / > 

			<span style="position: absolute; right: 5px;top: 5px;">VNĐ</span>

			</div>

			</div>

			<div class="col-md-2 col-sm-6 col-sm-12" style="text-align: center">

			<label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thanh toán lần 3</label>

			</div>

			<div class="col-md-2 col-sm-6 col-sm-12 ">

			<div style="display: inline-block; position: relative;">

			<input class="form-control payment3 "  readonly value="<?=number_format(stripcslashes($row['payment_3']),0,',','.');?>" / >

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

			<input style="width: 100%" class="form-control tienconlai " name="tienconlai1" disabled=""  value="<?=number_format(stripcslashes($row['debtor']),0,',','.');?>" / > 

			<span style="position: absolute; right: 5px;top: 5px;">VNĐ</span>

			</div>

			</div>

			<input type="hidden" name="discount" value="" />

			<input type="hidden" name="money_undiscounted" value="" />

			<input type="hidden" name="into_money" value="" />

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

			<button class="btn btn-round color-1 material-design  nuthemmuc btn-nhan" id="guichuthich2" type="submit" name="submit" data-color="#004740"  >

			<i class="fa fa-file-text-o" ></i> 

			<span>

			Chỉnh sửa

			</span>

			</button>

			</div>

			</div>

					

			

			</div>



			</form>

			

			</div>

			<script>
	
	var tableData = [];

	var tableData = <?php echo $items; ?>;	

	var sum = 0;

	var i = 1;

	for(var k = 0; k < tableData.length; k++) {

		sum += Number(tableData[k]['thanhtien']);

		tableData[k]['chonsubmit'] = Number(tableData[k]['chonsubmit']);

		tableData[k]['soluongmathang'] = Number(tableData[k]['soluongmathang']);

		tableData[k]['thanhtien'] = Number(tableData[k]['thanhtien']);

		i++;

	}

	$('.locselect li a').on('click', function(event) {

	$(this).parent().parent().css('display','none')
	var  gtsl = $(this).attr('value')
	var productData =  $(this).data('product')
	var collection = $(this).data('collection')
	if(productData)
		$(this).parent().parent().siblings('.nhanselect').data('product', productData)
	if(collection)
			$(this).parent().parent().siblings('.nhanselect').data('collection', collection)
	$(this).parent().parent().siblings('.nhanselect').val(gtsl)
	$(this).parent().parent().find('a').removeClass('activeslect')
	$(this).addClass('activeslect')
	
	
});
$('#bangdanhsachmonhang').on('click', '.locselect li a'  ,function(event) {

	$(this).parent().parent().css('display','none')
	var  gtsl = $(this).attr('value')
	var productData =  $(this).data('product')
	var collection = $(this).data('collection')
	if(productData)
		$(this).parent().parent().siblings('.nhanselect').data('product', productData)
	if(collection)
			$(this).parent().parent().siblings('.nhanselect').data('collection', collection)
	$(this).parent().parent().siblings('.nhanselect').val(gtsl)
		$(this).parent().parent().find('a').removeClass('activeslect')
	$(this).addClass('activeslect')
	
	
});

$(document).click(function(event) { 
if(!$(event.target).closest('.locselect').length && !$(event.target).is('.nhanselect')) {
        if($('.locselect').is(":visible")) {
            $('.locselect').hide();
        }
    }  

});
   


		$('.input-date').datetimepicker({

			format:'<?php echo TTH_DATE_FORMAT;?>',

			lang:'vi',

			closeOnDateSelect:true,

			timepicker: false

		});

	

	$('.dropnhanlist li a').click(function(event) {

  	

  	 $('.dropnhanlist li a').removeClass('activeslect')

  	 $(this).addClass('activeslect')

	  	a = $(this).attr('data-value');

	  	$('.giatritep').text(a)

	    $('.laygiatritep').val(a)

		

		

  });
  function chonse(item,a){
 if($(item).siblings('.'+a).is(':visible'))  {
	 $(item).siblings('.'+a).hide();
 }
 else $(item).siblings('.'+a).show();
}
function chonselect(c,b) {
    var input, filter, ul, li, a, i;
    input = $('.'+c);
    filter = input.val().toUpperCase();
    li = input.siblings('.'+b).children('li');
    
    for (i = 0; i < li.length; i++) {
        a = li.eq(i).children("a");
        if (a.text().toUpperCase().indexOf(filter) > -1) {
            li.eq(i).show();
        } else {
            li.eq(i).hide();

        }
    }
	
}
$('.nh_textnhan').on('click',function(event) {

			$('.sanphamsize .list').toggleClass('open')

		});

		$('.nh_textnhan').on('keyup',function(event) {

			$('.sanphamsize .list').removeClass('open')

		});

		

		$('.sanphamsize').on('change',function(event) {

			$('.sanphamsize .list ').removeClass('open')

			gtriselect = $(this).val()



		   if(gtriselect == '0')

			 gtriselect = "Chọn kích thước..."

			$('.nh_textnhan').val(gtriselect)

			

		});

		 $(document).on( 'change, keyup , keyup','.selectcustumnhan, .soluongmathang, .chonsubmit', function(e) {



	

	  var chonsubmit = $('.chonsubmit').val();

	   var n = parseInt(chonsubmit.replace(/\D/g,''),10);

	 

	$(".chonsubmit").val(n.toLocaleString('DE-de'));

      var soluongmathang = $('.soluongmathang').val();

	    n = parseInt(soluongmathang.replace(/\D/g,''),10);

	 

	$(".soluongmathang").val(n.toLocaleString('DE-de'));

     var soluongmathang1 = soluongmathang.replace(/\./g,'');

     var chonsubmit1 = chonsubmit.replace(/\./g,'');



  if(isNaN(soluongmathang1) || soluongmathang1 == '') {

	   $('.thanhtienmathang').val('0 VNĐ');

  } else {

	if(chonsubmit1 == '' || isNaN(chonsubmit1)) {

		 $('.thanhtienmathang').val('0 VNĐ');

	} else {

	  var x = Number(chonsubmit1) * Number(soluongmathang1);

	  x = formatso(x)

	  x = x + ' VNĐ';

   $('.thanhtienmathang').val(x);

	}

  }

});

	$('#themmonhang').click(function(e) {
	 var sanpham = $('.sanphamtype').val();
	   var soluongmathang1 = $('.soluongmathang').val();
	 var soluongmathang = soluongmathang1.replace(/\./g,'');
	   var list_products = '<?php echo getListOfProducts2(); ?>';
	   
	 var collect = $('.sanphamtype').data('collection');
	 if(collect == 1){ 
	 if(Number(soluongmathang1) > 0) {
	 var list_product = [];
		list_product = $('.sanphamtype').data('product');
		
		for(var j = 0; j < list_product.length; j++) {
			var temp = {};
			temp['id'] = i;
			temp['sp'] = list_product[j]['sp'];
			temp['size'] = list_product[j]['size'];
			temp['chonsubmit'] = list_product[j]['chonsubmit'];
			temp['unit'] = '/'+list_product[j]['unit'];
			temp['soluongmathang'] = soluongmathang;
			temp['thanhtien'] = Number(list_product[j]['chonsubmit']) * Number(soluongmathang);
			sum += temp['thanhtien'];
			
			var productSelect = '<div class="xulyselect">'+
						'<input type="text"  value="'+list_product[j]['sp']+'" class="nhanselect form-control fixproduct " onclick="chonse(this,\'locselect\')" onkeyup="chonselect(\'nhanselect\',\'locselect\')" placeholder="Chọn sản phẩm... " title="chọn sản phẩm..." autocomplete="off">'+
                        '<span class="caret caretcustumnhan" style="top:12px" ></span>'+
						'<ul class="locselect">'+
							
						list_products +
						'</ul>'+
                      '</div>'; 
	 var sizeSelect = '<div class="xulyselect">'+
						'<input type="text" value="'+list_product[j]['size']+'" class="nhanselect form-control fixsize " onclick="chonse(this,\'locselect\')" onkeyup="chonselect(\'nhanselect\',\'locselect\')" placeholder="Chọn kích thước... " title="chọn kích thước..." autocomplete="off">'+
                        '<span class="caret caretcustumnhan" style="top:12px"></span>'+
						'<ul class="locselect">'+
						'<li><a href="javascript:{0}" value="4A0">4A0</a></li>'+
						 '<li><a href="javascript:{0}" value="2A0">2A0</a></li>'+
						<?php
                         for($i = 0 ; $i <= 10 ; $i++) :
						 ?>
						 '<li><a href="javascript:{0}" value="A<?= $i ?>">A<?= $i ?></a></li>'+
						 <?php endfor ?>
						'</ul>'+
                       '</div>';
	 
			tableData.push(temp);
			
				$('#bangdanhsachmonhang').append(
				'<tr class="listds"><td><label class="form-lb-tp stt">'+i+'</label></td><td>'+productSelect+'</td><td>'+sizeSelect+'</td><td><label class="form-lb-tp"><div style="display: inline-block; position: relative;"><input type="text" class="form-control fixdongia  auto-number"  data-a-sep="." data-a-dec="," data-v-max="999999999" data-v-min="0" value="'+ formatso(temp['chonsubmit']) +'" / ><input type="text" style="position:absolute;right: 5px; top: 10%" class="layunit" value="'+ temp['unit'] +'" /></div></label></td><td><label class="form-lb-tp orderqty"><input type="text" class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'+ formatso(temp['soluongmathang']) +'" /></label></td><td><label class="form-lb-tp thanhtienorder"><input type="text" class="form-control fixthanhtien" disabled="disabled" value="'+ formatso(temp['thanhtien'])+' VNĐ" /></label></td><td class="dellist" style="padding-left: 0"><label class="form-lb-tp"><a class="copy" href="javascript:{}" title="copy"><i class="fa fa-plus" aria-hidden="true"> </i></a><a class="xoahang" title="xóa" href="javascript:{}" style="margin-left: 30px;" ><i class="fa fa-trash-o" aria-hidden="true"> </i></a></label></td> </tr>');
				 i++; 
				 
				
		}
		 //Update sum in the DOM
				$(".tongthanhtien").val(sum.toLocaleString('de-DE'));
				var ck = $(".chietkhau").val().replace(/\./g,'');
				if(ck == '') $(".tongthanhtienck").val(sum.toLocaleString('de-DE')); 
				else $(".tongthanhtienck").val(formatso(Math.round(sum*(100-Number(ck))/100000)*1000)); 
				var tttien =  $(".tongthanhtienck").val().replace(/\./g,'');
				var coc = $(".coclan1").val().replace(/\./g,'');
				if(coc == '') $(".tienconlai").val(formatso(Number(tttien))); 
				else $(".tienconlai").val(formatso(sum -Number(ck))); 
				// $(".tongthanhtien").val(sum + ' VNĐ');
		   	//Reset all fields
				
				
				$('.sanphamtype').val('');
				$('.sanphamtype').removeData();
				$('.sanphamsize1').val('');
				$('.giatritep').text('Cái');
				$(".soluongmathang").val('');
				$(".thanhtienmathang").val('');
				$('.chonsubmit').val('');
				$('.selectcustumnhan').val('0').niceSelect('update'); 
				
	 }
	 }
	 else {
	 var temp = {};
	 var x ;
	 var chonsubmit1 =  $('.chonsubmit').val();
	  var chonsubmit = chonsubmit1.replace(/\./g,'');
	  
	 var unit = ($('.laygiatritep').val() !== '')? ('/' + $('.laygiatritep').val()): '/Cái' ;
	   x = Number(chonsubmit) * Number(soluongmathang);
	  
	
	  var size = $('.sanphamsize1').val();
	  var productSelect = '<div class="xulyselect">'+
						'<input type="text"  value="'+sanpham+'" class="nhanselect form-control fixproduct " onclick="chonse(this,\'locselect\')" onkeyup="chonselect(\'nhanselect\',\'locselect\')" placeholder="Chọn sản phẩm... " title="chọn sản phẩm..." autocomplete="off">'+
                        '<span class="caret caretcustumnhan" style="top:12px" ></span>'+
						'<ul  class="locselect">'+
							list_products +
						'</ul>'+
                      '</div>'; 
	 var sizeSelect = '<div class="xulyselect">'+
						'<input type="text" value="'+size+'" class="nhanselect form-control fixsize " onclick="chonse(this,\'locselect\')" onkeyup="chonselect(\'nhanselect\',\'locselect\')" placeholder="Chọn kích thước... " title="chọn kích thước..." autocomplete="off">'+
                        '<span class="caret caretcustumnhan" style="top:12px"></span>'+
						'<ul  class="locselect">'+
						'<li><a href="javascript:{0}" value="4A0">4A0</a></li>'+
						 '<li><a href="javascript:{0}" value="2A0">2A0</a></li>'+
						<?php
                         for($i = 0 ; $i <= 10 ; $i++) :
						 ?>
						 '<li><a href="javascript:{0}" value="A<?= $i ?>">A<?= $i ?></a></li>'+
						 <?php endfor ?>
						'</ul>'+
                       '</div>';
	 
	 
	  if( !isNaN(x) && x > 0 && sanpham !='' && size !='') {		
			temp['id'] = i;
			temp['sp'] = sanpham;
			temp['size'] = size;
			temp['chonsubmit'] = chonsubmit;
			temp['unit'] = unit;
			temp['soluongmathang'] = soluongmathang;
			temp['thanhtien'] = x;
			sum += x;
		
		
			if(tableData.length > 0) {
				
			for(var j = 0; j < tableData.length; j++) {
				if((tableData[j]['sp'] == sanpham) && (tableData[j]['size'] == size) && (tableData[j]['chonsubmit'] == chonsubmit)) {					
					var qty = Number(soluongmathang.replace(/\./g,''))+ Number(tableData[j]['soluongmathang']);
					break;
				} 
			} 
			
			if(j < tableData.length) { 

			var $tempE = $("#bangdanhsachmonhang ").find("tr.listds").eq(j);
			$tempE.find(".fixsoluong").val(formatso(qty));
			var y = Number(qty) * Number(chonsubmit);
			 $tempE.find(".fixthanhtien").val(formatso(y) +' VNĐ');
			}
			else if(j == tableData.length) {
		        
				tableData.push(temp);
				
				$('#bangdanhsachmonhang').append(
				'<tr class="listds"><td><label class="form-lb-tp stt">'+i+'</label></td><td>'+productSelect+'</td><td>'+sizeSelect+'</td><td><label class="form-lb-tp"><div style="display: inline-block; position: relative;"><input type="text" class="form-control fixdongia  auto-number"  data-a-sep="." data-a-dec="," data-v-max="999999999" data-v-min="0" value="'+ formatso(chonsubmit) +'" / ><input type="text" style="position:absolute;right: 5px; top: 10%" class="layunit" value="'+ unit +'" /></div></label></td><td><label class="form-lb-tp orderqty"><input type="text" class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'+ formatso(soluongmathang) +'" /></label></td><td><label class="form-lb-tp thanhtienorder"><input type="text" class="form-control fixthanhtien" disabled="disabled" value="'+ formatso(x)+' VNĐ" /></label></td><td class="dellist" style="padding-left: 0"><label class="form-lb-tp"><a class="copy" href="javascript:{}" title="copy"><i class="fa fa-plus" aria-hidden="true"> </i></a><a class="xoahang" title="xóa" href="javascript:{}" style="margin-left: 30px;" ><i class="fa fa-trash-o" aria-hidden="true"> </i></a></label></td> </tr>');
				 i++;  		
			}
			} else {
				
					tableData.push(temp);
					
					$('#bangdanhsachmonhang').append(
				'<tr class="listds"><td><label class="form-lb-tp stt">'+i+'</label></td><td>'+productSelect+'</td><td>'+sizeSelect+'</td><td><label class="form-lb-tp"><div style="display: inline-block; position: relative;"><input type="text" class="form-control fixdongia  auto-number"  data-a-sep="." data-a-dec="," data-v-max="999999999" data-v-min="0" value="'+ formatso(chonsubmit) +'" / ><input type="text" style="position:absolute;right: 5px; top: 10%" class="layunit" value="'+ unit +'" /></div></label></td><td><label class="form-lb-tp orderqty"><input type="text" class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'+ formatso(soluongmathang) +'" /></label></td><td><label class="form-lb-tp thanhtienorder"><input type="text" class="form-control fixthanhtien" disabled="disabled" value="'+ formatso(x)+' VNĐ" /></label></td><td class="dellist" style="padding-left: 0"><label class="form-lb-tp"><a class="copy" href="javascript:{}" title="copy"><i class="fa fa-plus" aria-hidden="true"> </i></a><a class="xoahang" title="xóa" href="javascript:{}" style="margin-left: 30px;" ><i class="fa fa-trash-o" aria-hidden="true"> </i></a></label></td> </tr>');
				 i++;     	 	
			}
			//Update sum in the DOM
				$(".tongthanhtien").val(sum.toLocaleString('de-DE'));
				var ck = $(".chietkhau").val().replace(/\./g,'');
				if(ck == '') $(".tongthanhtienck").val(sum.toLocaleString('de-DE')); 
				else $(".tongthanhtienck").val(formatso(Math.round(sum*(100-Number(ck))/100000)*1000)); 
				var tttien =  $(".tongthanhtienck").val().replace(/\./g,'');
				var coc = $(".coclan1").val().replace(/\./g,'');
				if(coc == '') $(".tienconlai").val(formatso(Number(tttien))); 
				else $(".tienconlai").val(formatso(sum -Number(ck))); 
				// $(".tongthanhtien").val(sum + ' VNĐ');
		   	//Reset all fields
				
				
				$('.sanphamtype').val
				$('.sanphamtype').removeData();
				$('.sanphamsize1').val('');
				$('.giatritep').text('Cái');
				$(".soluongmathang").val('');
				$(".thanhtienmathang").val('');
				$('.chonsubmit').val('');
				$('.selectcustumnhan').val('0').niceSelect('update');
				
	   
   }
 }
 
 var tienconlai = Number($(".tongthanhtienck").val().replace(/\./g,'')) -(($(".coclan1").val() != "")? Number($(".coclan1").val().replace(/\./g,'')) : 0) - (($(".payment2").val() != "")? Number($(".payment2").val().replace(/\./g,'')) : 0)
 $('.tienconlai').val(formatso(tienconlai))
   
 });

     $('#bangdanhsachmonhang').on('click','.xoahang',function(){
		var row = $(this).parent().parent().parent();
		var x = $(this).parent().parent().parent().index();
		var y =  $("#bangdanhsachmonhang ").find("tr.listds");
		var z = y.length;
		var tien = tableData[x-1]['thanhtien'];
		sum -= tien;
		
		$(".tongthanhtien").val(sum.toLocaleString('de-DE'));
		
		if($(".chietkhau").val() == '') {
			$(".tongthanhtienck").val(sum.toLocaleString('de-DE'));
			
		} else {
			var ck = $(".chietkhau").val().replace(/\./g,'');
			$(".tongthanhtienck").val(formatso(Math.round(sum*(100-Number(ck))/100000)*1000));
		}
		var coc = $(".coclan1").val().replace(/\./g,'');
		var tttien = Number( $('.tongthanhtienck').val().replace(/\./g,''));
		if(coc !== '') {
		$('.tienconlai').val(formatso(tttien -Number(coc)));
		} else {
		$('.tienconlai').val(formatso(tttien ));
		}		
		// $(".tongthanhtien").html(sum + ' VNĐ');
		tableData.splice(x-1, 1);
        row.remove();		
		
		for(var k = x; k <= z; k++) {
			var t = Number(y.eq(k).find(".stt").html());
			y.eq(k).find(".stt").html(t-1);
			
		}
		i--;
		
    });
	 $('#bangdanhsachmonhang').on('click','.copy',function(){
		var row = $(this).parent().parent().parent();
		var x = $(this).parent().parent().parent().index();
		var copy = row.clone();
		
		copy.find('.copy').css('visibility', 'hidden');
		var temp = {};
			temp['id'] = tableData[x-1]['id'];
			temp['sp'] = tableData[x-1]['sp'];
			temp['size'] = tableData[x-1]['size'];
			temp['chonsubmit'] = tableData[x-1]['chonsubmit'];
			temp['unit'] = tableData[x-1]['unit'];
			temp['soluongmathang'] = tableData[x-1]['soluongmathang'];
			temp['thanhtien'] = tableData[x-1]['thanhtien'];
		tableData.splice(x, 0, temp);
		i++;
		sum +=tableData[x-1]['thanhtien'];
		var xt = Number(copy.find('.stt').html());
		
		row.after(copy);
		var y =  $("#bangdanhsachmonhang ").find("tr.listds");
		var z = y.length;
		for(var k = x; k <= z; k++) {
			var t = Number(y.eq(k).find(".stt").html());
			y.eq(k).find(".stt").html(t+1);
			
		}
		$('.tongthanhtien').val(formatso(sum));
		var ck = $('.chietkhau').val().replace(/\./g,'');
		if(ck !== '') {
		$('.tongthanhtienck').val(formatso(Math.round(sum*(100-Number(ck))/100000)*1000));
		} else {
		$('.tongthanhtienck').val(formatso(sum ));
		}
		var coc = $(".coclan1").val().replace(/\./g,'');
		var tttien = Number( $('.tongthanhtienck').val().replace(/\./g,''));
		if(coc !== '') {
		$('.tienconlai').val(formatso(tttien -Number(coc)));
		} else {
		$('.tienconlai').val(formatso(tttien ));
		}
		
	
    });

	

	$('.chietkhau').keyup( function(e) {

		var chietkhau = $('.chietkhau').val();

	   var n = parseInt(chietkhau.replace(/\D/g,''),10);

	 

	$(".chietkhau").val(n.toLocaleString('DE-de'));

		var ck1 = $(this).val().replace(/\./g,'');

		var ck = Number(ck1);

		var ttien = Math.round(sum*(100-Number(ck))/100000)*1000;

		

		$('.tongthanhtienck').val(ttien.toLocaleString('DE-de'));

		var datcoc = $('.coclan1').val().replace(/\./g,'');

		

		if(datcoc!='') $('.tienconlai').val(formatso(ttien -Number(datcoc)));

		else $('.tienconlai').val(formatso(ttien));

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

	

 
	



	

	function formatso(number)

		{

		   return String(number).replace(/(.)(?=(\d{3})+$)/g,'$1.')

		}



		$(".sodienthoai").on("keypress", function(evt) {

		  phimbam = evt.charCode || evt.keyCode;

		  if (phimbam == 46 || this.value.length==13) {

		  

			return false;

		  

		  }

		 

		});



		$(document).ready(function() {

		 

		$('.selectcustumnhan').niceSelect();

		});

 //when user change the value of table #bangdanhsachmonhang

$(document).on( 'keyup',' #bangdanhsachmonhang .fixsoluong', function(e) {

		 var n = parseInt($(this).val().replace(/\D/g,''),10);

		 if($(this).val() === '') { 

			

		 } else {

		 $(this).val(n.toLocaleString('de-DE')); }

		 var rowE = $(this).parent().parent().parent();

		var stt = rowE.index();

		

	  var fixdongia = rowE.find('.fixdongia').val();

	  var fixsoluong = rowE.find('.fixsoluong').val();

	 

	  var fixdongia2 = fixdongia.replace(/\./g,'');

	  var fixsoluong2 = fixsoluong.replace(/\./g,'');

      

   

  if(isNaN(fixdongia2) || fixdongia2 == '') {

	   //rowE.find('.fixthanhtien').val('0 VNĐ');

	   //tableData[stt-1]['thanhtien'] = 0;

  } else {

	if(fixsoluong2 == '' || isNaN(fixsoluong2)) {

		//rowE.find('.fixthanhtien').val('0 VNĐ');

		 //tableData[stt-1]['thanhtien'] = 0;

	} else {

		sum -= tableData[stt-1]['thanhtien'];

		tableData[stt-1]['chonsubmit'] = Number(fixdongia2);

		tableData[stt-1]['soluongmathang'] = Number(fixsoluong2);

			

	  var x = Number(fixdongia2) * Number(fixsoluong2);

	  tableData[stt-1]['thanhtien'] = x;

	  sum += tableData[stt-1]['thanhtien'];

	  var ck = $(".chietkhau").val().replace(/\./g,'');

	  var tratruoc = $(".coclan1").val().replace(/\./g,'');

	  

	  $('.tongthanhtien').val(sum.toLocaleString('DE-de'));

	  $('.tongthanhtien1').val(sum.toLocaleString('DE-de'));

	  if(ck != '') {

		  var ttien = Math.round(sum*(100-Number(ck))/100000)*1000;

	   $('.tongthanhtienck').val(ttien.toLocaleString('DE-de'));

	    $('.tienconlai').val((ttien - Number(tratruoc)).toLocaleString('DE-de'));

	   

	   

	  } else {

		  $('.tongthanhtienck').val(sum.toLocaleString('DE-de'));

		   $('.tienconlai').val((sum - Number(tratruoc)).toLocaleString('DE-de'));

		 

	  }

	  x = formatso(x);

	  x = x + ' VNĐ';

	 

	  rowE.find(".fixthanhtien").val(x);	  

		

	}

  }

});

$(document).on( 'keyup',' #bangdanhsachmonhang .fixdongia', function(e) {

		 var n = parseInt($(this).val().replace(/\D/g,''),10);

		 if($(this).val() === '') { 

			

		 } else {

		 $(this).val(n.toLocaleString('de-DE')); }

		 var rowE = $(this).parent().parent().parent().parent();

		var stt = rowE.index();

		

	  var fixdongia = rowE.find('.fixdongia').val();

	  var fixsoluong = rowE.find('.fixsoluong').val();

	 

	  var fixdongia2 = fixdongia.replace(/\./g,'');

	  var fixsoluong2 = fixsoluong.replace(/\./g,'');

      

   

  if(isNaN(fixdongia2) || fixdongia2 == '') {

	   //rowE.find('.fixthanhtien').val('0 VNĐ');

	   //tableData[stt-1]['thanhtien'] = 0;

  } else {

	if(fixsoluong2 == '' || isNaN(fixsoluong2)) {

		//rowE.find('.fixthanhtien').val('0 VNĐ');

		 //tableData[stt-1]['thanhtien'] = 0;

	} else {

		sum -= tableData[stt-1]['thanhtien'];

		tableData[stt-1]['chonsubmit'] = Number(fixdongia2);

		tableData[stt-1]['soluongmathang'] = Number(fixsoluong2);

		

			

	  var x = Number(fixdongia2) * Number(fixsoluong2);

	  tableData[stt-1]['thanhtien'] = x;

	  sum += tableData[stt-1]['thanhtien'];

	  var ck = $(".chietkhau").val().replace(/\./g,'');

	  var tratruoc = $(".coclan1").val().replace(/\./g,'');

	  

	  $('.tongthanhtien').val(sum.toLocaleString('DE-de'));

	  $('.tongthanhtien1').val(sum.toLocaleString('DE-de'));

	  if(ck != '') {

		  var ttien = Math.round(sum*(100-Number(ck))/100000)*1000;

	   $('.tongthanhtienck').val(ttien.toLocaleString('DE-de'));

	    $('.tienconlai').val((ttien - Number(tratruoc)).toLocaleString('DE-de'));

	   

	    $('.tongthanhtienck1').val(ttien.toLocaleString('DE-de'));

	  } else {

		  $('.tongthanhtienck').val(sum.toLocaleString('DE-de'));

		   $('.tienconlai').val((sum - Number(tratruoc)).toLocaleString('DE-de'));

		   $('.tongthanhtienck1').val(sum.toLocaleString('DE-de'));

	  }

	  x = formatso(x);

	  x = x + ' VNĐ';

	 

	  rowE.find(".fixthanhtien").val(x);	  

		

	}

  }

});



$(document).on( 'keyup',' #bangdanhsachmonhang .layunit', function(e) {

		 

		var x = $(this).val();

		 var rowE = $(this).parent().parent().parent().parent();

		var stt = rowE.index();

		tableData[stt-1]['unit'] = (x!=='')? x : ' /Cái';

		



  

});
$(document).on( 'change',' #bangdanhsachmonhang .fixproduct', function(e) {
		 
		var x = $(this).val();
		 var rowE = $(this).parent().parent().parent().parent();
		var stt = rowE.index();
		
		tableData[stt-1]['sp'] = x;  
});
$(document).on( 'change',' #bangdanhsachmonhang .fixsize', function(e) {
		 
		var x = $(this).val();
		 var rowE = $(this).parent().parent().parent().parent();
		var stt = rowE.index();
		
		tableData[stt-1]['size'] = x;  
});
 $(document).on('focusin', '#bangdanhsachmonhang .fixsize', function(){

    

    $(this).data('val', $(this).val());

	

}).on('change', '#bangdanhsachmonhang .fixsize', function(e) {

	var prev = $(this).data('val');

	var stt = $(this).parent().parent().parent().index();

	var newsize = $(this).val();

	if(newsize!== '') {

	tableData[stt-1]['size'] = newsize;

	}

	else {

		

		$(this).val(prev);

		

	}

});

$(document).on('focusin', '#bangdanhsachmonhang .fixdongia', function(){

    

    $(this).data('val', $(this).val());

	

}).on('change', '#bangdanhsachmonhang .fixdongia', function(e) {

	var prev = $(this).data('val');

	var stt = $(this).parent().parent().parent().parent().index();

	var newprice = $(this).val().replace(/\./g,'');

	

	if(newprice !== '' && Number.isInteger(Number(newprice))) {

	tableData[stt-1]['chonsubmit'] = newprice;

	}

	else {

		

		$(this).val(prev);

		

	}

});

$(document).on('focusin', '#bangdanhsachmonhang .fixsoluong', function(){

    

    $(this).data('val', $(this).val());

	

}).on('change', '#bangdanhsachmonhang .fixsoluong', function(e) {

	var prev = $(this).data('val');

	var stt = $(this).parent().parent().parent().index();

	var newqty = $(this).val().replace(/\./g,'');

	if(newqty !== '' && Number.isInteger(Number(newqty))) {

	tableData[stt-1]['soluongmathang'] = newqty;

	}

	else {

		

		$(this).val(prev);

		

	}

});

function validateF() {

	var email = $("input[name='email']").val();;

	kiemtramail = /^[A-Z0-9._%+-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i;



  if (!kiemtramail.test(email)){

   return false;

  }

	var tencongty = $("input[name='tencongty']").val();

	var diachi = $("input[name='diachi']").val();

	var sodienthoai = $("input[name='sodienthoai']").val();

	var namenguoidat = $("input[name='namenguoidat']").val();

	var masothue = $("input[name='masothue']").val();

	var date_end = $("input[name='date_end']").val();

	var skype = $("input[name='skype']").val();

	if( email = '' || diachi === '' || sodienthoai === '' || namenguoidat === ''|| date_end === '') {

		return false; }

	if($("input[name='tencongty']").is(':visible') && tencongty == '') return false;

	if($("input[name='skype']").is(':visible') && skype == '') return false;

	if($("input[name='masothue']").is(':visible') && masothue == '') return false;

	if(tableData.length == 0) return false;

	else {

		for(var k = 0; k < tableData.length; k++) {

			if(tableData[k]['thanhtien'] == 0) return false;

		}

		var discount = $('.chietkhau').val().replace(/\./g,'');

		var money_undiscounted = $('.tongthanhtien').val().replace(/\./g,'');

		var into_money = $('.tongthanhtienck').val().replace(/\./g,'');

		var prepayment = $('.coclan1').val().replace(/\./g,'');

		var payment2 = $('.payment2').val().replace(/\./g,'');

		var payment3 = $('.payment3').val().replace(/\./g,'');

		var debtor = $('.tienconlai').val().replace(/\./g,'');

		if(Number(debtor) < 0) return false;

		$('input[name="discount"]').val(discount);

		$('input[name="money_undiscounted"]').val(money_undiscounted);

		$('input[name="into_money"]').val(into_money);

		$('input[name="prepayment"]').val(prepayment);

		$('input[name="payment_2"]').val(payment2);

		$('input[name="payment_3"]').val(payment3);

		$('input[name="debtor"]').val(debtor);
		var y =  $("#bangdanhsachmonhang ").find("tr.listds");
		var z = y.length;
		for(var k = 1; k <= z; k++) {
			tableData[k-1]['sp'] = y.eq(k-1).find(".fixproduct").val();
			tableData[k-1]['size'] = y.eq(k-1).find(".fixsize").val();
		}

		$('input[name="order_items"]').val(JSON.stringify(tableData));

		return true;

	}

}

function handleForm() {

	

	var x = validateF();

	event.preventDefault();

	if(x) {  

	

	return add_document('_form_document');

	

	}

	else alert('đơn hàng không hợp lệ');

	

}



function hiencuanhan(){



 $('.zzBoxes').fadeOut()







}









	

		</script>

		

	<?php

	}

}



} else echo 'Error--';