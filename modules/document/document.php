
<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
//function document($act, $typeFunc,$masodonhang,$urgent, $pick_up,$error, $tencongty,$masothue,$namenguoidat,$email,$sodienthoai,$diachi,$skype, $comment,$date_end,$discount, $money_undiscounted, $into_money, $fabricate, $order_items, $debtor,$status, $notifined_time, $code) {
	
	$txt_type = '<select class="form-control selectcustumnhan sanphamtype" name="sanpham-type" required>'
				.'<option value="0">Chọn loại...</option>'
				.'<option value="Poster">Poster</option>'
				.'<option value="Brochure">Brochure</option>'
				.'<option value="Banner">Banner</option>'
				.'</select>';
 
     ?>

    <form method="post" id="nutsubmithang" action="/?ol=document&op=document_add" onsubmit=" return xacnhanform();">
		
		<input type="hidden" name="madonhang" value="" />
		<div class="col-md-12 formcode">
		
			<div class="row">
				<div class="col-md-6 col-sm-4 col-xs-12">
						<div style="display: inline-block;position: relative;">
                          <span style="display: inline-block;position: absolute;left: 10px;top: 5px;">CODE</span>
						<input class="form-control formicon" style="padding-left: 50px;" type="text" name="code1" maxlength="250" autocomplete="off" disabled=""
                        value="<?='CT-'.time();?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mã hàng tự tăng" >
						<input type="hidden" name="code" value="" />
                      </div>
				</div>
				<div class="col-md-6 col-sm-8 col-xs-12 custumcheckbox">
					<div class="row">
					<div class="col-md-5 col-sm-6 col-xs-12 radiobot">
                    <div class="checkbox checkbox-danger">
                        <input id="checkbox6" type="checkbox"  name="urgent" value="0" >
                        <label for="checkbox6">
                            Cần gấp
                        </label>
                    </div>

					<div class="checkbox checkbox-success">
                        <input id="checkbox3" type="checkbox" name="pick_up" value="0" >
                        <label for="checkbox3">
                            Đến lấy
                        </label>
                    </div>
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
						 <div class="col-md-7 col-sm-6 col-xs-12 proy" >
	                         <div class="row ">
		                         <button class="btn btn-border haiqua btn-round btn1 btn12 color-2 material-design" type="button" id="khachtochuc" data-color="#007f3d" data-toggle="tooltip" data-placement="top" title="" data-original-title="Tổ chức" ><i class="fa fa-users"></i> Tổ chức</button>
		                   
		                         <button class="btn btn-border btn-round btn1 color-2 material-design canhan" type="button" data-color="#007f3d" id="khachcanhan" data-toggle="tooltip" data-placement="top" title="" data-original-title="Cá nhân" ><i class="fa fa-user"></i> Cá nhân</button>
	                         </div>
						 </div>
					
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-lg-12 col-md-12">
		<div class="panel khachcongty">
			<div class="panel-body">
						
						
						<div class="panel-show-error">
							<?=$error;?>
						</div>
                           <div class="row tablethem">
							   <div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control tencongty" type="text" name="tencongty" maxlength="250" value="" placeholder="Nhập tên công ty"  autocomplete="off">
								</div>
								<div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control masothue" type="text" name="masothue" maxlength="250" value="" placeholder="Mã số thuế"  autocomplete="off">
								</div>	
								<div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control namenguoidat" type="text" name="namenguoidat" maxlength="250" value="" placeholder="Tên người đặt hàng"  autocomplete="off">
								</div>
								<div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control sodienthoai" type="number" name="sodienthoai" maxlength="250" value="" placeholder="Số điện thoại"  autocomplete="off">
								</div>
								<div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control email" type="email" required id="email" name="email" maxlength="250" value="" placeholder="Email"  autocomplete="off">
								</div>
								<div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control diachi" type="text" name="diachi" maxlength="250" value="" placeholder="Địa chỉ"  autocomplete="off">
								</div>	
								<div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control skype" type="text" name="skype" maxlength="250" value="" placeholder="Skype"  autocomplete="off">
								</div>
							</div>
				
			</div>
		</div>
		
       
       <div class="panel panelduoi" style="padding-bottom: 5px; margin-bottom: 5px;">
       <div class="table-responsive">        
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
         </table>
		 <input type="hidden" name="order_items" value="" />
		</div>		
        <div>
				<div class="row addselect">
					<div class="col-md-2 col-sm-4 col-xs-12">
                     <div class="xulyselect">
						<input type="text" id="nhanselect"  class="nhanselect form-control sanphamtype" onclick="chonse('locselect')" onkeyup="chonselect('nhanselect','locselect')" placeholder="Chọn sản phẩm... " title="chọn sản phẩm..." autocomplete="off">
                        <span class="caret caretcustumnhan" ></span>
						<ul id="locselect" class="locselect">
							 <li><a href="javascript:{0}" value="Poster">Poster</a></li>
						     <li><a href="javascript:{0}" value="Banner">Banner</a></li>
							 <li><a href="javascript:{0}" value="Catalogue-Brochure">Catalogue-Brochure</a></li>
							 <li><a href="javascript:{0}" value="Set doanh nghiệp">Set doanh nghiệp</a></li>
							 <li><a href="javascript:{0}" value="Sách báo-tạp chí">Sách báo-tạp chí</a></li>
							 <li><a href="javascript:{0}" value="Phiếu-vé-hóa đơn">Phiếu-vé-hóa đơn</a></li>
							 <li><a href="javascript:{0}" value="Bao bì-hộp giấy">Bao bì-hộp giấy</a></li>
							 <li><a href="javascript:{0}" value="Lịch-thiệp">Lịch-thiệp</a></li>
							 <li><a href="javascript:{0}" value="resort-nhà hàng">resort-nhà hàng</a></li>
							 <li><a href="javascript:{0}" value="Profile">Profile</a></li>
						</ul>
                       </div>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-12">
                        <div class="xulyselect">
						<input type="text" id="nhanselect1" class="nhanselect form-control sanphamsize1" onclick="chonse('locselect1')" onkeyup="chonselect('nhanselect1','locselect1')" placeholder="Chọn kích thước... " title="chọn kích thước..." autocomplete="off">
                        <span class="caret caretcustumnhan" ></span>
						<ul id="locselect1" class="locselect">
						<?php
                         for($i = 0 ; $i <= 5 ; $i++) :
						 ?>
						  <li><a href="javascript:{0}" value="A<?= $i ?>">A<?= $i ?></a></li>
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
								  <li>
									<a href="javascript:{}" class="activeslect" data-value="Tập">Tập</a>
								  </li>
								  <li>
									<a href="javascript:{}"  data-value="Cái">Cái</a>
								  </li>
								  <li>
									<a href="javascript:{}" data-value="Tờ">Tờ</a>
								  </li>
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

				</div>
				<div class="row textarear">
                       <div class="col-md-12 col-sm-12 col-xs-12">
							<textarea class="form-control ghichuhang" rows="6" placeholder="Nhập ghi chú về đơn hàng..." name="comment" value="" onClick="this.select();"></textarea>
                        </div>
				</div>
				 <div class="row panel-heading thantran" style="margin-top: 30px; margin-left: 0; margin-right: 0">
					<div class="col-md-1 col-sm-6 col-sm-12" style="padding-left: 0"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Chiết khấu</label></div>
					<div class="col-md-2 col-sm-6 col-xs-12">
						<div style="display:inline-block; position: relative;">
						<input class="form-control chietkhau auto-number"  type="text" value=""  data-a-sep="." data-a-dec="," data-v-max="99999999" data-v-min="0" placeholder="0"  autocomplete="off">
					
						<span style="position: absolute; right: 5px; top: 5px;">VNĐ</span>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-sm-12"  style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thành tiền(Chưa chiết khấu)</label></div>
					<div class="col-md-2 col-sm-6 col-sm-12"><div style="display: inline-block; position: relative;"><input class="form-control tongthanhtien auto-number"  data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0" type="text" disabled="" value=""> <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div>
					<div class="col-md-2 col-sm-6 col-sm-12"  style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thành tiền</label></div>
					<div class="col-md-2 col-sm-6 col-sm-12"><div style="display: inline-block; position: relative;"><input class="form-control tongthanhtienck"  disabled=""  value=""> <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div>
					<input type="hidden" name="discount" value="" />
					<input type="hidden" name="money_undiscounted" value="" />
					<input type="hidden" name="into_money" value="" />
				</div> 
				<div class="row panel-heading thantran"  style="margin-top: 2px; margin-left: 0; margin-right: 0">
					<div class="col-md-2 col-sm-6 col-sm-12 " style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thanh toán trước </label></div>
					<div class="col-md-2 col-sm-6 col-sm-12 "><div style="display: inline-block; position: relative;"><input class="form-control coclan1 auto-number"  value="" type="text" data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0"> <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div>
					<div class="col-md-2 col-sm-6 col-sm-12 " style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Còn lại</label></div>
					<div class="col-md-2 col-sm-6 col-sm-12 "><div style="display: inline-block; position: relative;"><input class="form-control tienconlai" disabled=""  value="" / > <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div>
					<input type="hidden" name="prepayment" value="" />
					<input type="hidden" name="debtor" value="" />
				</div>
				</div>
					
			   </div>
				<div class="row selecttrangthai">
					  <div class="col-md-6 col-sm-5 col-xs-12 chontt">
                             	
                             	<span class="trangthaitype">Trạng thái</span> 
                             	<select name="tech" class="tech form-control chaclangu"  id="tech" style="max-width: 200px;">
								<option value="1" data-image="<?= HOME_URL;?>/images/lacay.png">Đang báo giá</option>
							      <option value="2" data-image="<?= HOME_URL;?>/images/cam.png">Cho thiết kế</option>
							      <option value="3" data-image="<?= HOME_URL;?>/images/hong.png">Cho xuất kẽm</option>
							      <option value="4" data-image="<?= HOME_URL;?>/images/xanh.png" name="cd">Cho in</option>							      
							    </select>
								<input type="hidden" name="status" value="1" />
								<input style="max-width: 200px;" placeholder="Chọn ngày"  class="form-control input-date formngayh" type="text" name="date_end" value=""  readonly="" id="time_end"   maxlength="10" autocomplete="off">
                       </div>
						 <script type="text/javascript">
						 var d = new Date()
							$('#time_end').datetimepicker({
								format:'d/m/Y H:i',
								lang:'vi',
								onShow:function( ct ){
									this.setOptions({
										minDate:d,
										maxDate:false,
										format:'d/m/Y',
										formatDate:'d/m/Y'
									})
								}
							});
						 </script>
					 <div class="col-md-6 col-sm-7 col-xs-12 classbutonluu">
						
						<button class="btn btn-round color-1 material-design themmoiphieu phieu1" type="button" name="login_admin" data-color="#004740" id="indonhang" onclick="indulieu()"><i class="fa  fa-print keyfram" ></i> <span>IN</span></button>
					   

						<button class="btn btn-round color-1 material-design themmoiphieu" type="submit" name="submit" data-color="#004740" id="luudonhang"><i class="fa fa-floppy-o keyfram" ></i> <span>LƯU</span></button>
		
					</div>
			    </div>
					
				
			</div>
		 

   </form>

	</div>
</div>
<script>

var sum = 0;
var  sum1 = 0;
var i = 1;
var tableData = [];
var tableData1 = [];
$('#locselect1 li a').on('click', function(event) {

	$('#locselect1').css('display','none')
	 gtsl = $(this).attr('value')
	$('#nhanselect1').val(gtsl)
	$('#locselect1 li a').removeClass('activeslect')
	$(this).addClass('activeslect')
	
	
});

$('#locselect li a').on('click', function(event) {

	$('#locselect').css('display','none')
	 gtsl = $(this).attr('value')
	$('#nhanselect').val(gtsl)
	$('#locselect li a').removeClass('activeslect')
	$(this).addClass('activeslect')
	
});
$(document).click(function(event) { 
    if(!$(event.target).closest('#locselect').length && !$(event.target).is('#nhanselect')) {
        if($('#locselect').is(":visible")) {
            $('#locselect').hide();
        }
    }  
 if(!$(event.target).closest('#locselect1').length && !$(event.target).is('#nhanselect1')) {
        if($('#locselect1').is(":visible")) {
            $('#locselect1').hide();
        }
    } 	
});
// validate mail
 function ckEmail() {
	 $('#email').keyup(function(event) {
 	
 	var x = $('#email').val()
 	console.log(x)
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
   
    $('#email').css('box-shadow','inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(225, 115, 79, 0.6)') 
    $('#email').css('border','1px solid #903030') 
 return '';
    }
    else{
    $('#email').css('box-shadow','inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102,175,233,.6)') 
    $('#email').css('border','1px solid rgba(1, 135, 208, 0.3)') 
	 email = x;
	return x;
    }
 }); 
};

function chonse(a){
 if($('#'+a).is(':visible'))  {
	 $('#'+a).hide();
 }
 else $('#'+a).show();
}

function addCommas(nStr)
{
    var sep = ',';
    nStr += '';
    x = nStr.split('.');
    x1 = x[0];
    x2 = x.length > 1 ? '.' + x[1] : '';
    var rgx = /(\d+)(\d{3})/;
    while (rgx.test(x1)) {
        x1 = x1.replace(rgx, '$1' + sep + '$2');
    }
    return x1 + x2;
}

function chonselect(a,b) {
    var input, filter, ul, li, a, i;
    input = document.getElementById(a);
    filter = input.value.toUpperCase();
    ul = document.getElementById(b);
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";

        }
    }
	
}



		$('.input-date').datetimepicker({
			format:'<?php echo TTH_DATE_FORMAT;?>',
			lang:'vi',
			closeOnDateSelect:true,
			timepicker: false
		});
	
	



function indulieu(){
	window.location = "/?ol=general&op=general_level";
}
  
 function guimail(){
      
  		   showLoader()
  			
	        setTimeout(function(){
			alert('Chào bạn.\nBạn đã đặt hàng thành công tại công ty chúng tôi\nsản phẩm của bạn gồm card: 1000 tập.\n Vui lòng  truy cập mail để xác nhận\nCảm ơn bạn đã tin tưởng sử dụng dịch vụ của công ty chúng tôi')
			 setTimeout('hiencuanhan()',1000); 
			closeLoader()
			}, 1000);
         
        

 }

 

  $('.dropnhanlist li a').click(function(event) {
  	
  	 $('.dropnhanlist li a').removeClass('activeslect')
  	 $(this).addClass('activeslect')
	  	a = $(this).attr('data-value');
	  	$('.giatritep').text(a)
	    $('.laygiatritep').val(a)
		
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

 



$(document).ready(function() {
$('input[name="skype"]').parent().css('display', 'none');
$('#khachtochuc').addClass('active12');
  $('#khachtochuc').click(function(event) {
	  $('input[name="skype"]').parent().css('display', 'none');
	  $('input[name="tencongty"]').parent().css('display', 'block');
	  $('input[name="masothue"]').parent().css('display', 'block');
	  $('#khachcanhan').css('border', '1px solid #828785');
	   $('#khachcanhan canvas').css('background', '#fff');
	  
	 
  });
  $('#khachcanhan').click(function(event) {
  	$('#khachtochuc').removeClass('active12');
	$('input[name="tencongty"]').parent().css('display', 'none');
	  $('input[name="masothue"]').parent().css('display', 'none');
	   $('input[name="skype"]').parent().css('display', 'block');
	  $('#khachtochuc').css('border', '1px solid #828785');
	  $('#khachtochuc canvas').css('background', '#fff');
	  
	 
  });
  
  $(document).on( 'change, keyup , keyup','.selectcustumnhan, .soluongmathang, .chonsubmit', function(e) {


	  var chonsubmit = $('.chonsubmit').val();
	  var soluongmathang = $('.soluongmathang').val();

     
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
	 var temp = {};
	 var x ;
	 var chonsubmit1 =  $('.chonsubmit').val();
	  var chonsubmit = chonsubmit1.replace(/\./g,'');
	  var soluongmathang1 = $('.soluongmathang').val();
	 var soluongmathang = soluongmathang1.replace(/\./g,'');
	 var unit = ($('.laygiatritep').val() !== '')? ('/' + $('.laygiatritep').val()): '/Cái' ;
	   x = Number(chonsubmit) * Number(soluongmathang);
	  
	  var sanpham = $('.sanphamtype').val();
	  var size = $('.sanphamsize1').val();
	 
	   if( !isNaN(x) && x > 0 && sanpham !='' && size !='') {		
			temp['id'] = i;
			temp['sp'] = sanpham;
			temp['size'] = size;
			temp['chonsubmit'] = chonsubmit;
			temp['unit'] = unit;
			temp['soluongmathang'] = soluongmathang;
			temp['thanhtien'] = x;
			sum += x;
			sum1 += x;
		
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
				tableData1.push(temp);
				$('#bangdanhsachmonhang').append(
				'<tr class="listds"><td><label class="form-lb-tp stt">'+i+'</label></td><td><label class="form-lb-tp">'+ sanpham + '</label></td><td><label class="form-lb-tp"><input type="text" class="form-control fixsize" value="'+ size +'" /></label></td><td><label class="form-lb-tp"><div style="display: inline-block; position: relative;"><input type="text" class="form-control fixdongia  auto-number"  data-a-sep="." data-a-dec="," data-v-max="999999999" data-v-min="0" value="'+ formatso(chonsubmit) +'" / ><input type="text" style="position:absolute;right: 5px; top: 10%" class="layunit" value="'+ unit +'" /></div></label></td><td><label class="form-lb-tp orderqty"><input type="text" class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'+ formatso(soluongmathang) +'" /></label></td><td><label class="form-lb-tp thanhtienorder"><input type="text" class="form-control fixthanhtien" disabled="disabled" value="'+ formatso(x)+' VNĐ" /></label></td><td class="dellist" style="padding-left: 0"><label class="form-lb-tp"><a class="copy" href="javascript:{}" title="copy"><i class="fa fa-plus" aria-hidden="true"> </i></a><a class="xoahang" title="xóa" href="javascript:{}" style="margin-left: 30px;" ><i class="fa fa-trash-o" aria-hidden="true"> </i></a></label></td> </tr>');
				 i++;  		
			}
			} else {
				
					tableData.push(temp);
					tableData1.push(temp);
					$('#bangdanhsachmonhang').append(
				'<tr class="listds"><td><label class="form-lb-tp stt">'+i+'</label></td><td><label class="form-lb-tp">'+ sanpham + '</label></td><td><label class="form-lb-tp"><input type="text" class="form-control fixsize" value="'+ size +'" /></label></td><td><label class="form-lb-tp"><div style="display: inline-block; position: relative;"><input type="text" class="form-control fixdongia  auto-number"  data-a-sep="." data-a-dec="," data-v-max="999999999" data-v-min="0" value="'+ formatso(chonsubmit) +'" / ><input type="text" style="position:absolute;right: 5px; top: 10%" class="layunit" value="'+ unit +'" /></div></label></td><td><label class="form-lb-tp orderqty"><input type="text" class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'+ formatso(soluongmathang) +'" /></label></td><td><label class="form-lb-tp thanhtienorder"><input type="text" class="form-control fixthanhtien" disabled="disabled" value="'+ formatso(x)+' VNĐ" /></label></td><td class="dellist" style="padding-left: 0"><label class="form-lb-tp"><a class="copy" href="javascript:{}" title="copy"><i class="fa fa-plus" aria-hidden="true"> </i></a><a class="xoahang" title="xóa" href="javascript:{}" style="margin-left: 30px;" ><i class="fa fa-trash-o" aria-hidden="true"> </i></a></label></td> </tr>');
				 i++;     	 	
			}
			//Update sum in the DOM
				$(".tongthanhtien").val(sum.toLocaleString('de-DE'));
				var ck = $(".chietkhau").val().replace(/\./g,'');
				if(ck == '') $(".tongthanhtienck").val(sum.toLocaleString('de-DE')); 
				else $(".tongthanhtienck").val(formatso(sum -Number(ck))); 
				var tttien =  $(".tongthanhtienck").val().replace(/\./g,'');
				var coc = $(".coclan1").val().replace(/\./g,'');
				if(coc == '') $(".tienconlai").val(formatso(Number(tttien))); 
				else $(".tienconlai").val(formatso(sum -Number(ck))); 
				// $(".tongthanhtien").val(sum + ' VNĐ');
		   	//Reset all fields
				
				
				$('.sanphamtype').val('');
				$('.sanphamsize1').val('');
				$('.giatritep').text('Cái');
				$(".soluongmathang").val('');
				$(".thanhtienmathang").val('');
				$('.chonsubmit').val('');
				$('.selectcustumnhan').val('0').niceSelect('update');
	   
   }
 });
 
 
 
 
 

    $('#bangdanhsachmonhang').on('click','.xoahang',function(){
		var row = $(this).parent().parent().parent();
		var x = $(this).parent().parent().parent().index();
		var y =  $("#bangdanhsachmonhang ").find("tr.listds");
		var z = y.length;
		var tien = tableData[x-1]['thanhtien'];
		sum -= tien;
		sum1 -= tien;
		$(".tongthanhtien").val(sum.toLocaleString('de-DE'));
		$(".tongthanhtien1").val(sum1.toLocaleString('de-DE'));
		if($(".chietkhau").val() == '') {
			$(".tongthanhtienck").val(sum.toLocaleString('de-DE'));
			$(".tongthanhtienck1").val(sum1.toLocaleString('de-DE'));
		} else {
			var ck = $(".chietkhau").val().replace(/\./g,'');
			$(".tongthanhtienck").val((sum - Number(ck)).toLocaleString('de-DE'));
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
		copy.find('.fixsize').attr('disabled', true);
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
		$('.tongthanhtienck').val(formatso(sum -Number(ck)));
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
		
		var ck1 = $(this).val().replace(/\./g,'');
		var ck = Number(ck1);
		var ttien = sum - ck;
		var ttien1 =sum1 - ck;
		$('.tongthanhtienck').val(ttien.toLocaleString('DE-de'));
		$('.tongthanhtienck1').val(ttien1.toLocaleString('DE-de'));
		var datcoc = $('.coclan1').val().replace(/\./g,'');
		
		if(datcoc!='') $('.tienconlai').val(formatso(ttien -Number(datcoc)));
		else $('.tienconlai').val(formatso(ttien));
	}); 
	$(".coclan1").keyup( function(e) {
		
		var cl12 = $(this).val().replace(/\./g,'');
		var cl1 = Number(cl12);
		
		var ttt1 = $('.tongthanhtienck').val();
		var ttt2 = ttt1.replace(/\./g,'');
		
		
		var ttt = Number(ttt2) - cl1;
		
		$('.tienconlai').val(ttt.toLocaleString('DE-de'));
		
	});
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
		  var ttien = sum - Number(ck);
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
		  var ttien = sum - Number(ck);
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
 // 
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

//handle the popup

$(document).on( 'keyup','#bangdanhsachmonhang1 .fixdongia', function(e) {
		 var n = parseInt($(this).val().replace(/\D/g,''),10);
		 if($(this).val() == '') { 
			
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
		

			
	  var x = Number(fixdongia2) * Number(fixsoluong2);
	 
	  sum1 = sum;
	   sum1 -= tableData[stt-1]['thanhtien'];
	   sum1 += x;
	  var ck = $(".chietkhau").val().replace(/\./g,'');
	   var tratruoc = $(".coclan1").val().replace(/\./g,'');
	  $('.tongthanhtien1').val(sum1.toLocaleString('DE-de'));
	  if(ck !== '') {
		  $('.tongthanhtienck1').val(formatso(sum1 -Number(ck)));
	  } else  $('.tongthanhtienck1').val(formatso(sum1));
	  var tongtien = $('.tongthanhtienck1').val().replace(/\./g,'');
	  if(tratruoc !== '') {
		  $('.tienconlai1').val(formatso(Number(tongtien) -Number(ck)));
	  } else  $('.tienconlai1').val(formatso(Number(tongtien)));
	  x = formatso(x);
	 
	 
	  rowE.find(".fixthanhtien").val(x);	  
		
	}
  }
});
 // 

$(document).on('focusin', '#bangdanhsachmonhang1 .fixdongia', function(){
    
    $(this).data('val', $(this).val());
	
}).on('change', '#bangdanhsachmonhang1 .fixdongia', function(e) {
	var prev = $(this).data('val');
	var stt = $(this).parent().parent().parent().index();
	var newprice = $(this).val().replace(/\./g,'');
	
	if(newprice !== '' && Number.isInteger(Number(newprice))) {
	
	}
	else {
		
		$(this).val(prev);
		
	}
});

$(document).ready(function(e) {
	$("#payments").msDropdown({visibleRows:4});
	$("#tech").msDropdown().data("dd");//{animStyle:'none'} /{animStyle:'slideDown'} {animStyle:'show'}		
	//no use
	try {
		var pages = $("#pages").msDropdown({on:{change:function(data, ui) {
												var val = data.value;
												if(val!="")
													window.location = val;
											}}}).data("dd");

		var pagename = document.location.pathname.toString();
		pagename = pagename.split("/");
		pages.setIndexByValue(pagename[pagename.length-1]);
		$("#ver").html(msBeautify.version.msDropdown);
	} catch(e) {
		//console.log(e);	
	}
	
	$("#ver").html(msBeautify.version.msDropdown);
	
ckEmail();
});
function hiencuanhan(){
 $('.zzBoxes').fadeOut()

}
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
		for(var i = 0; i < tableData.length; i++) {
			if(tableData[i]['thanhtien'] == 0) return false;
		}
		var discount = $('.chietkhau').val().replace(/\./g,'');
		var money_undiscounted = $('.tongthanhtien').val().replace(/\./g,'');
		var into_money = $('.tongthanhtienck').val().replace(/\./g,'');
		var prepayment = $('.coclan1').val().replace(/\./g,'');
		var debtor = $('.tienconlai').val().replace(/\./g,'');
		var code = $('input[name="code1"]').val();
		var status = $('.chaclangu ').val();
		
		$('input[name="code"]').val(code);
		$('input[name="discount"]').val(discount);
		$('input[name="money_undiscounted"]').val(money_undiscounted);
		$('input[name="into_money"]').val(into_money);
		$('input[name="prepayment"]').val(prepayment);
		$('input[name="debtor"]').val(debtor);
		if(status != '') $('input[name="status"]').val(status);
		$('input[name="order_items"]').val(JSON.stringify(tableData));
		
		return true;
	}
}
function xacnhanform(){
	var x =  validateF();
	var email = $("input[name='email']").val();
	var tencongty = $("input[name='tencongty']").val();
	if(x ) {
	$(".panel-show-error").html('');
	
	var han ='Đơn hàng mới tạo mã số: '+ $("input[name='symbols']").val() ;
	showLoader();
	$.ajax({
    url:'/action.php',
    type: 'POST',
    data: 'url=insert_message_notification&content='+han ,
    
    success: function(data){
		
    
     alert("Bạn đã thêm hàng thành công");
	  setTimeout('hiencuanhan()',1000); 
	  closeLoader();
	//window.location = "<?= HOME_URL ?>?ol=document&op=document_list"
    }
   });
   
    return true;
	} else  {
		alert('Thông tin đơn hàng không hợp lệ');
		
		 setTimeout('hiencuanhan()',1000); 
		event.preventDefault();
		return false;
	}
 
 };
 
// submit form



(function($) {

  'use strict'; // jshint ;_;

  $.fn.dropSelect = function(option) {
    return this.each(function() {

      var $this = $(this);
      var display = $this.find('.dropdown-display');        // display span
      var field = $this.find('input.dropdown-field');       // hidden input
      var options = $this.find('ul.dropdown-menu > li > a');// select options

      // when the hidden field is updated, update dropdown-toggle
      var onFieldChange = function(event) {
        var val = $(this).val();
        var displayText = options.filter("[data-value='" + val + "']").html();
        display.html(displayText);
      };

      // when an option is clicked, update the hidden field
      var onOptionClick = function(event) {
        // stop click from causing page refresh
        event.preventDefault();
        field.val($(this).attr('data-value'));
        field.change();
      };

      field.change(onFieldChange);
      options.click(onOptionClick);

    });
  };

  // invoke on every div element with 'data-select=true'
  $(function() {
    $('div[data-select=true]').dropSelect();
  });

})

function goKeToan() {
	showLoader();
	alert('Đã chuyển qua phòng kế toán xử lý');
	 setTimeout('hiencuanhan()',1000); 
	closeLoader();
	goBack();
}
function add_orderForm_modal() {   
           $("#_calendar_modal").empty();
			$("#_calendar_modal").append('<div class="modal-dialog"><div class="modal-content"><div class="modal-header personal"><button type="button" class="close" style="margin-top: -8px; padding-bottom:10px"  data-dismiss="modal" aria-hidden="true">&times;</button><div class="row"><div class="col-lg-12"><div class="panel panel-no-border"><div class="tieudehoadondm"><div><div class="logoin"><img src="images/logo.png"></div><div class="kihieu"><ul><li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li><li> Mobie: 0987 654 321 - 0123 456 689 </li><li> Email: congthanhprint@gmail.com </li></ul></div></div><div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein"><span class="namehoadon">HÓA ĐƠN IN CÔNG THÀNH</span><br><span>Số : ........... </span><br/><span>Ngày ....... tháng ....... năm 20.......</span></div></div></div></div></div></div><div class="form-responsive"><div class="col-md-12 formcode"><div class="row"><div class="col-md-6 col-sm-4 col-xs-12"><div style="display: inline-block;position: relative;"><span style="display: inline-block;position: absolute;left: 10px;top: 5px;">CODE</span><input class="form-control formicon" style="padding-left: 50px;" type="text" name="symbols" maxlength="250" autocomplete="off" disabled=""value="CT_<?= time() ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mã hàng tự tăng" ></div></div><div class="col-md-6 col-sm-8 col-xs-12 custumcheckbox"><div class="row"><div class="col-md-5 col-sm-6 col-xs-12 radiobot"><div class="checkbox checkbox-danger"><input id="checkbox6" type="checkbox" checked="checked"><label for="checkbox6">Cần gấp</label></div><div class="checkbox checkbox-success"><input id="checkbox3" type="checkbox"><label for="checkbox3"> Đến lấy </label></div></div></div></div></div></div><div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;"><div class="col-md-3 col-sm-6 col-xs-12"><label>Tên công ty</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" disabled="disabled" type="text" value="'+$(".tencongty").val()+'" /></div><div class="col-md-3 col-sm-6 col-xs-12"><label>Tên khách hàng</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" name="ten" type="text" disabled="disabled" value="'+$(".namenguoidat").val()+'" /></div></div><div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;"><div class="col-md-3 col-sm-6 col-xs-12"><label>Số điện thoại</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" disabled="disabled" type="text" value="'+$(".sodienthoai").val()+'" /></div><div class="col-md-3 col-sm-6 col-xs-12"><label>Địa chỉ </label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" name="địa chỉ" type="text" disabled="disabled" value="'+ $(".diachi").val()+'" /></div></div><div class="row" style="margin-top: 10px; margin-bottom: 20px; padding-left: 20px; padding-right: 20px;"><div class="col-md-3 col-sm-6 col-xs-12"><label>Mã số thuế</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" disabled="disabled" type="text" value="'+$(".masothue").val()+'" /></div><div class="col-md-3 col-sm-6 col-xs-12"><label>Email</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" name="email" type="text" disabled="disabled" value="'+$(".email").val()+'" /></div></div><table class="table table-no-border table-ol-3w table-hover" id="bangdanhsachmonhang1"><tr class="panel-heading thantran" ><th><label class="form-lb-tp">Thứ tự</label></th><th><label class="form-lb-tp">Tên sản phẩm</label></th><th width="150px;"><label class="form-lb-tp">Kích thước</label></th><th width="200px;"><label class="form-lb-tp">Đơn giá</label></th><th><label class="form-lb-tp">Số lượng</label></th><th><label class="form-lb-tp">Thành tiền</label></th><th width="110px;"><label class="form-lb-tp">&nbsp;</label></th></tr></tr></table></div><div class="modal-body"></div><div class="modal-footer"></div></div></div>');
			if(tableData.length < 1) {} else {
				for(var j = 0; j < tableData.length; j++) {
				$("#bangdanhsachmonhang1").append('<tr class="listds"><td><label class="form-lb-tp stt">'+(j+1)+'</label></td><td><label class="form-lb-tp">'+tableData[j]["sp"]+'</label></td><td><label class="form-lb-tp"><input type="text" class="form-control fixsize" disabled="disabled" value="'+tableData[j]["size"]+'" /></label></td><td><label class="form-lb-tp"><div style="display: inline-block; position: relative;"><input type="text" class="form-control fixdongia  auto-number"  data-a-sep="." data-a-dec="," data-v-max="999999999" data-v-min="0" value="'+formatso( tableData[j]['chonsubmit']) +'" / ><input type="text" style="position:absolute;right: -65%; top: 10%" class="layunit" value="'+ tableData[j]['unit'] +'" /></</div></label></td><td><label class="form-lb-tp orderqty"><input type="text" disabled="disabled" class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'+formatso(tableData[j]["soluongmathang"])+'" /></label></td><td><label class="form-lb-tp thanhtienorder"><input type="text" class="form-control  fixthanhtien" disabled="disabled" value="'+formatso(tableData[j]["thanhtien"])+'" /></label></td></tr>');
				
				}
			}
			$("#_calendar_modal .modal-body").append(' <div class="row panel-heading thantran" style="margin-top: 30px; margin-left: 0; margin-right: 0"><div class="col-md-1 col-sm-6 col-sm-12"  style="padding-left: 0" ><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Chiết khấu</label></div><div class="col-md-2 col-sm-6 col-xs-12"><div style="display:inline-block; position: relative;"><input class="form-control chietkhau auto-number" disabled="disabled" type="text" name="chietkhau"  value="'+$('.chietkhau').val()+'"  data-a-sep="." data-a-dec="," data-v-max="99999999" data-v-min="0" placeholder="0"  autocomplete="off"><span style="position: absolute; right: 5px; top: 5px;">VNĐ</span></div></div><div class="col-md-3 col-sm-6 col-sm-12"  style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thành tiền(Chưa chiết khấu)</label></div><div class="col-md-2 col-sm-6 col-sm-12"><div style="display: inline-block; position: relative;"><input class="form-control tongthanhtien1 auto-number" data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0" type="text" disabled="" value="'+$('.tongthanhtien').val()+'"> <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div><div class="col-md-2 col-sm-6 col-sm-12"  style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thành tiền</label></div><div class="col-md-2 col-sm-6 col-sm-12"><div style="display: inline-block; position: relative;"><input class="form-control tongthanhtienck1" disabled="" value="'+$('.tongthanhtienck').val()+'"> <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div></div>');
			$("#_calendar_modal .modal-body").append('<div class="row panel-heading thantran" style="margin-top: 2px; margin-left: 0; margin-right: 0"><div class="col-md-2 col-sm-6 col-sm-12 " style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thanh toán trước </label></div><div class="col-md-2 col-sm-6 col-sm-12 "><div style="display: inline-block; position: relative;"><input class="form-control coclan11 auto-number" disabled="disabled" name="coclan11" value="'+$('.coclan1').val()+'" type="text" data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0"> <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div><div class="col-md-2 col-sm-6 col-sm-12" style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Còn lại</label></div><div class="col-md-2 col-sm-6 col-sm-12 "><div style="display: inline-block; position: relative;"><input class="form-control tienconlai1 " name="tienconlai1" disabled=""  value="'+$('.tienconlai').val()+'" / > <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div></div>');
			$("#_calendar_modal .modal-footer").append('<div class="row"><button class="btn btn-round color-1 material-design nuthemmuc nutquaylai" onclick="goBack()" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quay lại đơn hàng "><i class="fa fa-reply-all" ></i> <span>Quay lại</span></button><button class="btn btn-round color-1 material-design  nuthemmuc btn-nhan" id="guichuthich2" type="button" name="login_admin" onclick="goKeToan();" data-color="#004740"><i class="fa fa-file-o" ></i> <span>Chuyển kế toán</span></button></div>');
          $("#_calendar_modal").modal('show');
        
    
    return false;
}
function add_orderForm_modal1() {   
           $("#_calendar_modal").empty();
			$("#_calendar_modal").append('<div class="modal-dialog"><div class="modal-content"><div class="modal-header personal"><button type="button" class="close" style="margin-top: -8px; padding-bottom:10px"  data-dismiss="modal" aria-hidden="true">&times;</button><div class="row"><div class="col-lg-12"><div class="panel panel-no-border"><div class="tieudehoadondm"><div><div class="logoin"><img src="images/logo.png"></div><div class="kihieu"><ul><li> Địa chỉ: 123 Hải Phòng - Q.Hải Châu - TP.Đà Nẵng </li><li> Mobie: 0987 654 321 - 0123 456 689 </li><li> Email: congthanhprint@gmail.com </li></ul></div></div><div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein"><span class="namehoadon">HÓA ĐƠN IN CÔNG THÀNH</span><br><span>Số : ........... </span><br/><span>Ngày ....... tháng ....... năm 20.......</span></div></div></div></div></div></div><div class="form-responsive"><div class="col-md-12 formcode"><div class="row"><div class="col-md-6 col-sm-4 col-xs-12"><div style="display: inline-block;position: relative;"><span style="display: inline-block;position: absolute;left: 10px;top: 5px;">CODE</span><input class="form-control formicon" style="padding-left: 50px;" type="text" name="symbols" maxlength="250" autocomplete="off" disabled=""value="CT_<?= time() ?>" data-toggle="tooltip" data-placement="top" title="" data-original-title="Mã hàng tự tăng" ></div></div><div class="col-md-6 col-sm-8 col-xs-12 custumcheckbox"><div class="row"><div class="col-md-5 col-sm-6 col-xs-12 radiobot"><div class="checkbox checkbox-danger"><input id="checkbox6" type="checkbox" checked="checked"><label for="checkbox6">Cần gấp</label></div><div class="checkbox checkbox-success"><input id="checkbox3" type="checkbox"><label for="checkbox3"> Đến lấy </label></div></div></div></div></div></div><div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;"><div class="col-md-3 col-sm-6 col-xs-12"><label>Tên công ty</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" disabled="disabled" type="text" value="'+$(".tencongty").val()+'" /></div><div class="col-md-3 col-sm-6 col-xs-12"><label>Tên khách hàng</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" name="ten" type="text" disabled="disabled" value="'+$(".namenguoidat").val()+'" /></div></div><div class="row" style="margin-top: 10px; padding-left: 20px; padding-right: 20px;"><div class="col-md-3 col-sm-6 col-xs-12"><label>Số điện thoại</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" disabled="disabled" type="text" value="'+$(".sodienthoai").val()+'" /></div><div class="col-md-3 col-sm-6 col-xs-12"><label>Địa chỉ </label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" name="địa chỉ" type="text" disabled="disabled" value="'+ $(".diachi").val()+'" /></div></div><div class="row" style="margin-top: 10px; margin-bottom: 20px; padding-left: 20px; padding-right: 20px;"><div class="col-md-3 col-sm-6 col-xs-12"><label>Mã số thuế</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" disabled="disabled" type="text" value="'+$(".masothue").val()+'" /></div><div class="col-md-3 col-sm-6 col-xs-12"><label>Email</label></div><div class="col-md-3 col-sm-6 col-xs-12"><input class="form-control" name="email" type="text" disabled="disabled" value="'+$(".email").val()+'" /></div></div><table class="table table-no-border table-ol-3w table-hover" id="bangdanhsachmonhang1"><tr class="panel-heading thantran" ><th><label class="form-lb-tp">Thứ tự</label></th><th><label class="form-lb-tp">Tên sản phẩm</label></th><th width="150px;"><label class="form-lb-tp">Kích thước</label></th><th width="200px;"><label class="form-lb-tp">Đơn giá</label></th><th><label class="form-lb-tp">Số lượng</label></th><th><label class="form-lb-tp">Thành tiền</label></th><th width="110px;"><label class="form-lb-tp">&nbsp;</label></th></tr></tr></table></div><div class="modal-body"></div><div class="modal-footer"></div></div></div>');
			if(tableData.length < 1) {} else {
				for(var j = 0; j < tableData.length; j++) {
				$("#bangdanhsachmonhang1").append('<tr class="listds"><td><label class="form-lb-tp stt">'+tableData[j]["id"]+'</label></td><td><label class="form-lb-tp">'+tableData[j]["sp"]+'</label></td><td><label class="form-lb-tp"><input type="text" class="form-control fixsize" disabled="disabled" value="'+tableData[j]["size"]+'" /></label></td><td><label class="form-lb-tp"><input type="text" class="form-control fixdongia disabled="disabled" auto-number"  data-a-sep="." data-a-dec="," data-v-max="999999999" data-v-min="0" value="'+formatso(tableData[j]["chonsubmit"])+'" / ></label></td><td><label class="form-lb-tp orderqty"><input type="text" disabled="disabled" class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'+formatso(tableData[j]["soluongmathang"])+'" /></label></td><td><label class="form-lb-tp thanhtienorder"><input type="text" class="form-control  fixthanhtien" disabled="disabled" value="'+formatso(tableData[j]["thanhtien"])+'" /></label></td></tr>');
				}
			}
			$("#_calendar_modal .modal-body").append(' <div class="row panel-heading thantran" style="margin-top: 30px; margin-left: 0; margin-right: 0"><div class="col-md-1 col-sm-6 col-sm-12" style="padding-left: 0" ><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Chiết khấu</label></div><div class="col-md-2 col-sm-6 col-xs-12"><div style="display:inline-block; position: relative;"><input class="form-control chietkhau auto-number" disabled="disabled" type="text" name="chietkhau"  value="'+$('.chietkhau').val()+'"  data-a-sep="." data-a-dec="," data-v-max="99999999" data-v-min="0" placeholder="0"  autocomplete="off"><span style="position: absolute; right: 5px; top: 5px;">VNĐ</span></div></div><div class="col-md-3 col-sm-6 col-sm-12"  style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thành tiền(Chưa chiết khấu)</label></div><div class="col-md-2 col-sm-6 col-sm-12"><div style="display: inline-block; position: relative;"><input class="form-control tongthanhtien1 auto-number" data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0" type="text" disabled="" value="'+$('.tongthanhtien').val()+'"> <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div><div class="col-md-2 col-sm-6 col-sm-12"  style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thành tiền</label></div><div class="col-md-2 col-sm-6 col-sm-12"><div style="display: inline-block; position: relative;"><input class="form-control tongthanhtienck1" disabled="" value="'+$('.tongthanhtienck').val()+'"> <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div></div>');
			$("#_calendar_modal .modal-body").append('<div class="row panel-heading thantran" style="margin-top: 2px; margin-left: 0; margin-right: 0"><div class="col-md-2 col-sm-6 col-sm-12 " style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Thanh toán trước </label></div><div class="col-md-2 col-sm-6 col-sm-12 "><div style="display: inline-block; position: relative;"><input class="form-control coclan11 auto-number" disabled="disabled" name="coclan11" value="'+$('.coclan1').val()+'" type="text" data-a-sep="." data-a-dec="," data-v-max="9999999999" data-v-min="0"> <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div><div class="col-md-2 col-sm-6 col-sm-12" style="text-align: center"><label class="form-lb-tp" style="padding-top: 10px;font-weight: 500;">Còn lại</label></div><div class="col-md-2 col-sm-6 col-sm-12 "><div style="display: inline-block; position: relative;"><input class="form-control tienconlai1 " name="tienconlai1" disabled=""  value="'+$('.tienconlai').val()+'" / > <span style="position: absolute; right: 5px;top: 5px;">VNĐ</span></div></div></div>');
			$("#_calendar_modal .modal-footer").append('<div class="row"><button class="btn btn-round color-1 material-design nuthemmuc nutquaylai" onclick="goBack()" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quay lại đơn hàng "><i class="fa fa-reply-all" ></i> <span>Quay lại</span></button><button class="btn btn-round color-1 material-design  nuthemmuc btn-nhan" id="guichuthich2" type="button" onclick="goKeToan();"  name="login_admin" data-color="#004740"><i class="fa fa-file-o" ></i> <span>Chuyển kế toán</span></button></div>');
          $("#_calendar_modal").modal('show');
        
    
    return false;
}	
</script>