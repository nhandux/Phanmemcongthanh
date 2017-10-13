<script type="text/javascript">
   closeLoader()
</script>
<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//


?>
<!-- Menu path -->


<?php
$user_info = getInfoUser($account['id']);
$date = new DateClass();
?>
<div class=" row form_proposal" >
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-no-border">
		<div class="tieudehoadondm" style="padding-bottom: 30px">
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
			<div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein"><span class="namehoadon">PHIẾU ĐỀ XUẤT</span><br>
			
			<!-- <span>Ký hiệu : ..........</span><br/> -->
			<span><?=$date->vnFull(time()); ?></span></div>

		</div>	
			
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-8 -->
</div>

   <form id="_form_proposal" method="post" onsubmit=" Verifyform();" enctype="multipart/form-data">
	

<div class="row" >
	<div class="col-lg-12 col-md-12" style="margin-top: -20px">
		<div class="panel khachcongty" style="margin-bottom: 0">
			<div class="panel-body">
						
                           <div class="row tablethem">
							   <div class="row">
							   <div class="col-md-2 col-sm-6 col-xs-12" style="padding-top: 20px;">
									<label style="font-size: 14px;">Tên người đề xuất</label>
							   </div>
							   <div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control" type="text" disabled name="nguoidexuat" maxlength="250" value="<?=$user_info[0]; ?>"   autocomplete="off">
								</div>
							   </div>
							   <div class="row">
							   <div class="col-md-2 col-sm-6 col-xs-12" style="padding-top: 20px;">
									<label style="font-size: 14px;">Mã số nhân viên</label>
							   </div>
								<div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control" type="text" name="masonhanvien" maxlength="250" value="VT-<?=$account['id'];?>"  disabled="disabled" autocomplete="off">
								</div>	
								</div>
								<div class="row">
								<div class="col-md-2 col-sm-6 col-xs-12" style="padding-top: 20px;">
									<label style="font-size: 14px;">Bộ phận</label>
							   </div>
								<div class="col-md-4 col-sm-6 col-xs-12">
									<input class="form-control bophan" type="text" name="bophan" maxlength="250" value="Xuất Kẽm - Vật Tư" disabled="disabled"  autocomplete="off">
								</div>
								</div>
							</div>				
			</div>
		</div>
		
       <div class="panel panelduoi">
       <div class="table-responsive">        
		 <table class="table table-no-border table-ol-3w table-hover" id="bangdanhsachmonhang">
            <tr class="panel-heading thantran" >
					<th><label class="form-lb-tp">Thứ tự</label></th>
					<th><label class="form-lb-tp">Tên vật liệu</label></th>
					<th><label class="form-lb-tp">Kích cỡ</label></th>					
					<th><label class="form-lb-tp">Đơn vị</label></th>
					<th><label class="form-lb-tp">Số lượng</label></th>
					<th width="110px;"><label class="form-lb-tp">&nbsp;</label></th>
		   </tr>
         </table>
		</div>
        <div>
				<div class="row addselect">
					<div class="col-md-3 col-sm-6 col-xs-12">
                     <div class="xulyselect">
						<input type="text" id="nhanselect"  class="nhanselect form-control sanphamtype" onkeyup="chonselect('nhanselect','locselect')" onclick="chonse('locselect')"  placeholder="Chọn sản phẩm... " title="chọn sản phẩm..." autocomplete="off">
                        <span class="caret caretcustumnhan" ></span>
						<ul id="locselect" class="locselect">
							 <li><a href="javascript:{0}" value="Giấy mềm">Giấy mềm</a></li>
						     <li><a href="javascript:{0}" value="Ruy băng">Ruy băng</a></li>
							 <li><a href="javascript:{0}" value="Bìa cứng">Bìa cứng</a></li>
							 <li><a href="javascript:{0}" value="Mực đen">Mực đen</a></li>
							 <li><a href="javascript:{0}" value="Mực màu">Mực màu</a></li>
							 <li><a href="javascript:{0}" value="Sợi nilông">Sợi nilông</a></li>
							 <li><a href="javascript:{0}" value="Bao nilông">Bao nilông</a></li>
							 <li><a href="javascript:{0}" value="Thùng">Thùng</a></li>
							 
						</ul>
                       </div>
					</div>
					<div class="col-md-3 col-sm-6s col-xs-12">
                        <div class="xulyselect">
						<input type="text" id="nhanselect1" class="nhanselect form-control sanphamsize1"   placeholder="Chọn kích thước... " title="chọn kích thước..." autocomplete="off">
                        
                       </div>
					</div>
					<div class="col-md-2 col-sm-4 col-xs-12">
						<div class='control-group addselectafter' >
							<div class='controls'>
							  <div class='input-append dropdown' data-select='true'>
								<!-- The hidden field can be anywhere within div.dropdown -->
								<input  value='Cái' class='form-control laygiatritep' style=" border: 1px solid #e2e2e4; color: #646464; font-size: 13px;" name="unit" />
								
								<!-- Make sure there isn't a space between the input and the toggle -->
								
								  
							  </div>
							</div>
						  </div>
					</div>	
					<div class="col-md-2 col-sm-6 col-xs-12">
									<input class="form-control soluongmathang auto-number"  type="text" name="quan"  value=""  data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" placeholder="Số lượng"  autocomplete="off">
					</div>
					           
					<div class="col-md-2 col-sm-6 col-xs-12 text-center">
					           <button class="btn btn-round color-1 material-design themmoiphieu" type="button" name="login_admin" data-color="#004740" id="themmonhang"><i class="fa fa-plus-circle keyfram" ></i> <span>Thêm</span></button>
					</div>

				<!-- đóng row -->

				</div>
				<div class="row textarear">
                       <div class="col-md-12 col-sm-12 col-xs-12">
							<textarea class="form-control ghichuhang" name="note" rows="6" onClick="this.select();" placeholder= "Nhập ghi chú về đề xuất..." value=""></textarea>
                        </div>
				</div>
				<input type="hidden" name="proposal_items" value="" />
				<div class="row selecttrangthai">
					 <button class="btn btn-round color-1 material-design themmoiphieu" style="width: 150px" type="submit" name="login_admin" data-color="#004740" id="luudonhang"><i class="fa fa-floppy-o keyfram" ></i> <span>CHUYỂN KẾ TOÁN</span></button>
		
				</div>
			    </div>
					
				
			</div>
		 

   </form>

	</div>
</div>
</div>
<script>
var i = 1;
var tableData = [];
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
function chonse(a){
 if($('#'+a).is(':visible'))  {
	 $('#'+a).hide();
 }
 else $('#'+a).show();
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

  $('#themmonhang').click(function(e) {
	 var temp = {};
	 var x ;
	
	  var soluongmathang1 = $('.soluongmathang').val();
	 var soluongmathang = soluongmathang1.replace(/\./g,'');
	   x = Number(soluongmathang);
	   var unit = ($('.laygiatritep').val() !== '')? ($('.laygiatritep').val()): 'Cái' ;
	  var sanpham = $('.sanphamtype').val();
	  var size = $('.sanphamsize1').val();
	 
	   if( !isNaN(x) && x > 0 && sanpham !='' ) {		
			temp['id'] = i;
			temp['sp'] = sanpham;
			temp['size'] = size;
			temp['unit'] = unit;
			temp['soluongmathang'] = soluongmathang;
		
			if(tableData.length > 0) {
				
			for(var j = 0; j < tableData.length; j++) {
				if((tableData[j]['sp'] == sanpham) && (tableData[j]['size'] == size) ) {					
					var qty = Number(soluongmathang.replace(/\./g,''))+ Number(tableData[j]['soluongmathang']);
					break;
				} 
			} 
			
			if(j < tableData.length) { 

			var $tempE = $("#bangdanhsachmonhang ").find("tr.listds").eq(j);
			$tempE.find(".fixsoluong").val(formatso(qty));
			
			}
			else if(j == tableData.length) {
		        
				tableData.push(temp);
				
				$('#bangdanhsachmonhang').append(
				'<tr class="listds"><td><label class="form-lb-tp stt">'+i+'</label></td><td><label class="form-lb-tp">'+ sanpham + '</label></td><td><label class="form-lb-tp"><input type="text" class="form-control fixsize" value="'+ size +'" /></label></td><td><label class="form-lb-tp"><input type="text"  class="layunit" value="'+ unit +'" /></label></td><td><label class="form-lb-tp orderqty"><input type="text" class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'+ formatso(soluongmathang) +'" /></label></td><td class="dellist"><label class="form-lb-tp"><a class="xoahang" href="javascript:{}" ><i class="fa fa-trash-o" aria-hidden="true"> </i></a></label></td> </tr>');
				 i++;  		
			}
			} else {
				
					tableData.push(temp);
					
					$('#bangdanhsachmonhang').append(
				'<tr class="listds"><td><label class="form-lb-tp stt">'+i+'</label></td><td><label class="form-lb-tp">'+ sanpham + '</label></td><td><label class="form-lb-tp"><input type="text" class="form-control fixsize" value="'+ size +'" /></label></td><td><label class="form-lb-tp"><input type="text"  class="layunit" value="'+ unit +'" /></label></td><td><label class="form-lb-tp orderqty"><input type="text" class="form-control fixsoluong" data-a-sep="." data-a-dec="," data-v-max="999999" data-v-min="0" value="'+ formatso(soluongmathang) +'" /></label></td><td class="dellist"><label class="form-lb-tp"><a class="xoahang" href="javascript:{}" ><i class="fa fa-trash-o" aria-hidden="true"> </i></a></label></td> </tr>');
				 i++;  	 	
			}
			//Update sum in the DOM
				
				// $(".tongthanhtien").val(sum + ' VNĐ');
		   	//Reset all fields
				
				
				$('.sanphamtype').val('');
				$('.sanphamsize1').val('');
				$('.giatritep').text('Cái');
				$(".soluongmathang").val('');
				$(".nhanselect").val('');
				$(".nhanselect1").val('');
				$('.selectcustumnhan').val('0').niceSelect('update');
	   
   }
 });
 
 
 //when user change the value of table #bangdanhsachmonhang
 $(document).on( 'keyup ','.fixsoluong', function(e) {

		var stt = $('.fixsoluong').parent().parent().parent().index();
	  
	  var fixsoluong = $('.fixsoluong').val();
	 
	 
	
	  var fixsoluong2 = fixsoluong.replace(/\./g,'');
     
    

  
	if(fixsoluong2 == '' || isNaN(fixsoluong2) || Number(fixsoluong2) <= 0) {} else {
		
		tableData[x-1]['soluongmathang'] = Number(fixsoluong2);
	 
  
	}
  
});
 
 
 
 
 //
    $('#bangdanhsachmonhang').on('click','.xoahang',function(){
		var row = $(this).parent().parent().parent();
		var x = $(this).parent().parent().parent().index();
		var y =  $("#bangdanhsachmonhang ").find("tr.listds");
		var z = y.length;		
        row.remove();		
		
		for(var k = x; k <= z; k++) {
			var t = Number(y.eq(k).find(".stt").html());
			y.eq(k).find(".stt").html(t-1);
		}
		i--;
    });
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
});

$(document).on( 'keyup',' #bangdanhsachmonhang .fixsoluong', function(e) {
		 var n = parseInt($(this).val().replace(/\D/g,''),10);
		 if($(this).val() == '') { 
			
		 } else {
		 $(this).val(n.toLocaleString('de-DE')); }
		 var rowE = $(this).parent().parent().parent();
		var stt = rowE.index();
		
	 
	  var fixsoluong = rowE.find('.fixsoluong').val();
	 
	 
	  var fixsoluong2 = fixsoluong.replace(/\./g,'');
      
   
  
	if(fixsoluong2 == '' || isNaN(fixsoluong2)) {
		//rowE.find('.fixthanhtien').val('0 VNĐ');
		 //tableData[stt-1]['thanhtien'] = 0;
	} else {
		
		tableData[stt-1]['soluongmathang'] = Number(fixsoluong2);
		
	}
  
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
// submit form

/*
 * bootstrap-select.js
 */
function hiencuanhan(){
 $('.zzBoxes').fadeOut()

}
function validateF() {
	if(tableData.length == 0) return false;
	else {
		for(var i = 0; i < tableData.length; i++) {
			if(tableData[i]['soluongmathang'] == 0) return false;
		}
		$('input[name="proposal_items"]').val(JSON.stringify(tableData));
		return true;
	}
}
function Verifyform(){
	var x = validateF();
	event.preventDefault();
	if(x) {  
	
	return add_proposal('_form_proposal');
	
	}
	else alert('Phiếu đề xuất không hợp lệ');
 };
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
	
</script>
<?php
