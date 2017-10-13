<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
?>
<!-- Menu path -->

<!-- /.row -->
<?php
if(isset($_POST['idDel'])){

	$idDel = implode(',',$_POST['idDel']);

	$db->table = "document";
	$db->condition = "document_id IN (".$idDel.")";
	$db->delete();
}

$txt_type = '';
$db->table = "document_type";
$db->condition = "`is_active` = 1";
$db->order = "`sort` ASC";
$db->limit = "";
$rows = $db->select();
if($db->RowCount > 0) {
	$txt_type .= '<select data-column="2" class="form-control filter">';
	$txt_type .= '<option value="">Loại văn bản...</option>';
	foreach($rows as $row) {
		$txt_type .= '<option value="' . $row['document_type_id'] . '">' . $row['title'] . '</option>';
	}
	$txt_type .='</select>';
}
?>
<?php $ol = $_GET['ol'];
      $op = $_GET['op']; 
   
   $fun = isset($_GET['fun']) ? $_GET['fun'] : 'canhan';
    
?>
<div class="row ">
<div class="col-md-7 locdanhsach">
<span>Hiển thị 
     <select class="sohanghien"> 
     <option>5</option>
     <option>10</option>
     <option>25</option>
     <option>50</option>
     </select>

      trên tổng số <span style="margin: 0px 5px;"> 65 </span> đơn hàng	</span>
<!-- form tìm kiếm  -->
<form class="searchitemtable">
	<label class="hiendi"><input type="text" class="formtimclick" placeholder="Nhập từ khóa... "><button type="submit" class="nutbamtim"><i class="fa fa-search"></i>
	</button></label>
	<span name="button" class="searchformthem"><i class="fa fa-search"></i> </span>
</form>
<!-- end form tìm kiếm -->
<script type="text/javascript">
	$(document).ready(function() {
		$('.searchformthem').click(function(event) {
			/* Act onthe event */
			$(this).css('display','none');
			$('.hiendi').css('padding-left','20px')
		   $('.hiendi').toggle( "slide" );

		});
	});
</script>
</div>
<div class="col-md-5 nutthemmoi">

<ul class="nh_locbang nh_locbang2">	
		<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
					<?php
					$info_user = array();
					$info_user = getInfoUser($account["id"]);
				   if($fun =="canhan") echo '<i class="fa fa-calendar-plus-o"></i> Cá nhân';
					else echo '<i class="fa fa-calendar"></i> Tổ chức' ?></span>
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu extended logout nh_afterdrop">
					<li><a href="/?ol=<?= $ol ?>&op=<?= $op ?>&fun=canhan"><i class="fa fa-calendar-plus-o"></i> Cá nhân</a></li>
					<li><a href="/?ol=<?= $ol ?>&op=<?= $op ?>&fun=tochuc"><i class="fa fa-calendar"></i> Tổ chức</a></li>
					<li class="divider"></li>
				</ul>
		</li>
	</ul>

<?php if(getRoleId($account['id']) == 1 ) {?><button class="btn btn-round color-1 material-design nuthemmuc" onclick="themtrang()" style="float: right !important;" type="submit" name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thêm đơn hàng mới"><i class="fa fa-plus" ></i> <span>Thêm đơn hàng</span></button>
<?php } ?>


<!-- end form tìm kiếm -->

</div>
	<div class="col-lg-12 cachbot">
		<div class="panel panel-no-border">
			<div class="table-responsive">
				<form action="<?php echo TTH_PATH_LK . $link_ol[1] . TTH_PATH_OP_LK . $link_op[1][1];?>" method="post" id="_ol_delete">
					<?php if($fun == "canhan"){ ?>
					 <table class="table table-no-border table-ol-3w table-hover" id="danhsachdonhangcanhan">
						<thead>
						
                        <tr class="panel-heading thantran" >
								<th><label class="form-lb-tp">Code</label></th>
								<th><label class="form-lb-tp">Khách hàng</label></th>
								<th width="150px;"><label class="form-lb-tp">Đơn hàng</label></th>
								<th width="200px;"><label class="form-lb-tp">Ghi chú</label></th>
								<th><label class="form-lb-tp">Tình trạng</label></th>
								<th><label class="form-lb-tp">Thực hiện</label></th>
					   </tr>
						</thead>
						<tbody class="taplet">
							<tr class="bangkhachhang">
								<td>
									<span class="hostcode"> CT001002526 </span>
									<p class="hienhan">
										<span>Hạn: 30/04/2017</span>
	                                     <span>Nguyễn Văn A</span>									
									</p>
								</td>
								<td>
									<span class="tiude"> Công ty thiết kế Danaweb </span>
									<p class="bosungtiu">
										<span>Mr.Captain American</span>
	                                    <span>0987 654 321</span>									
									</p>
								</td>
								<td>
									
									<p class="bosungtiu">
									    <span> Name card</span>
										<span>Brochure</span>
	                                    <span>poster</span>									
									</p>
								</td>
								<td>
									<span class="tghoanhthanh">
										Cần hoành thành trước 30/4
									</span>
									<span data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Xem ghi chú">
									<i class="fa fa-file-text-o " aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return add_calendar_modal();"></i></span>
								</td>
								<td>

								<select name="tech" class="tech form-control sectcustum1" id="tech" style="padding-left: 20px;">
							      <option value="calendar" data-image="<?= HOME_URL;?>/images/cam.png" selected = "selected" disabledd>Đã thanh toán</option>
							    </select>
                                
								</td>
								<td>
									<div class="imea">
								
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">
								<select  class=" form-control sectcustum3 set1">
								  <option value="calendar">&nbsp;</option>
								  <option value="shopping_cart"  selected="selected">Nhân</option>
								  <option value="cd">Hòa</option>
								  <option value="email">Thức</option>
								  <option value="faq">Toàn</option>
								  <option value="email">Duyên</option>
								  <option value="faq">Hà</option>
								</select>
								</div>

								<ul class="hienxuly">	
									<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>
												
											</a>
											<ul class="dropdown-menu extended logout nh_afterdrop">
												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xem chi tiết" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>
												<li><a href="javascript:;"  data-toggle="tooltip" data-placement="left" title="" onclick="editcreen()" data-original-title="Chỉnh sửa"><i class="fa fa-paint-brush"></i> Chỉnh sửa</a></li>
												<li class="divider"></li>
												<li><a href="javascript:;"   data-toggle="tooltip" data-placement="left" title="" onclick="return open_calendar('manage', 1);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>
											</ul>
									</li>
								</ul>	

								</td>
							</tr>
							<tr class="bangkhachhang">
								<td>
									<span class="tiude"> CT001002526 </span>
									<p class="hienhan">
										<span>Hạn: 30/04/2017</span>
	                                     <span>Nguyễn Văn A</span>									
									</p>
								</td>
								<td>
									<span class="tiude"> Công ty thiết kế Danaweb </span>
									<p class="bosungtiu">
										<span>Mr.Captain American</span>
	                                    <span>0987 654 321</span>									
									</p>
								</td>
								<td>
									
									<p class="bosungtiu">
									    <span> Name card</span>
										<span>Brochure</span>
	                                    <span>poster</span>									
									</p>
								</td>
								<td>
									<span class="tghoanhthanh">
										Cần hoành thành trước 30/4
									</span>
									<span data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Xem ghi chú">
									<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return add_calendar_modal();"  title="xem chi tiết chú thích"></i>
									</span>
								</td>
								<td>
								<select name="tech" class="tech form-control sectcustum1" id="tech1" style="padding-left: 20px;">
							       <option value="calendar" data-image="<?= HOME_URL;?>/images/cam.png" selected = "selected" disabledd>Đã thanh toán</option></select>
								</td>
								<td><div class="imea">
								
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">
								<select  class=" form-control sectcustum3 set1">
								  <option value="calendar">&nbsp;</option>
								  <option value="shopping_cart" selected="selected">Nhân</option>
								  <option value="cd">Hòa</option>
								  <option value="email">Thức</option>
								  <option value="faq">Toàn</option>
								  <option value="email">Duyên</option>
								  <option value="faq">Hà</option>
								</select>
								</div>
								<ul class="hienxuly">	
									<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>
												
											</a>
											<ul class="dropdown-menu extended logout nh_afterdrop">
												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xem chi tiết" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>
												<li><a href="javascript:;"  data-toggle="tooltip" data-placement="left" title="" onclick="editcreen()" data-original-title="Chỉnh sửa"><i class="fa fa-paint-brush"></i> Chỉnh sửa</a></li>
												<li class="divider"></li>
												<li><a href="javascript:;"   data-toggle="tooltip" data-placement="left" title="" onclick="return open_calendar('manage', 1);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>
												
											</ul>
									</li>
								</ul>	
								</td>
							</tr>
							<tr class="bangkhachhang">
								<td>
									<span class="tiude"> CT001002526 </span>
									<p class="hienhan">
										<span>Hạn: 30/04/2017</span>
	                                     <span>Nguyễn Văn A</span>									
									</p>
								</td>
								<td>
									<span class="tiude"> Công ty thiết kế Danaweb </span>
									<p class="bosungtiu">
										<span>Mr.Captain American</span>
	                                    <span>0987 654 321</span>									
									</p>
								</td>
								<td>
									
									<p class="bosungtiu">
									    <span> Name card</span>
										<span>Brochure</span>
	                                    <span>poster</span>									
									</p>
								</td>
								<td>
									<span class="tghoanhthanh">
										Cần hoành thành trước 30/4
									</span>
									<span data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Xem ghi chú">
									<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return add_calendar_modal();"  title="xem chi tiết chú thích"></i></span>
								</td>
								<td>
								<select name="tech" class="tech form-control sectcustum1" id="tech2" style="padding-left: 20px;">
							       <option value="calendar" data-image="<?= HOME_URL;?>/images/cam.png" selected = "selected" disabledd>Đã thanh toán</option>
							   </select>

							    

								</td>
								<td>
								  <div class="imea">
								
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">
								<select  class=" form-control sectcustum3 set1">
								  <option value="calendar">&nbsp;</option>
								  <option value="shopping_cart" selected="selected">Nhân</option>
								  <option value="cd">Hòa</option>
								  <option value="email" >Thức</option>
								  <option value="faq">Toàn</option>
								  <option value="email">Duyên</option>
								  <option value="faq">Hà</option>
								</select>
								</div>
                             <ul class="hienxuly">	
									<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>
												
											</a>
											<ul class="dropdown-menu extended logout nh_afterdrop">
												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xem chi tiết" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>
												<li><a href="javascript:;"  data-toggle="tooltip" data-placement="left" title="" onclick="editcreen()" data-original-title="Chỉnh sửa"><i class="fa fa-paint-brush"></i> Chỉnh sửa</a></li>
												<li class="divider"></li>
												<li><a href="javascript:;"   data-toggle="tooltip" data-placement="left" title="" onclick="return open_calendar('manage', 1);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>
												
											</ul>
									</li>
								</ul>	

								</td>
							</tr>
						</tbody>
						
					</table>
					<?php }
					else{ ?>
					<table class="table table-no-border table-ol-3w table-hover">
						<thead>
						
                        <tr class="panel-heading thantran" >
								<th><label class="form-lb-tp">Code</label></th>
								<th><label class="form-lb-tp">Khách hàng</label></th>
								<th width="150px;"><label class="form-lb-tp">Đơn hàng</label></th>
								<th width="200px;"><label class="form-lb-tp">Ghi chú</label></th>
								<th><label class="form-lb-tp">Tình trạng</label></th>
								<th><label class="form-lb-tp">Thực hiện</label></th>
					   </tr>
						</thead>
						<tbody class="taplet">
							<tr class="bangkhachhang">
								<td>
									<span class="hostcode"> CT001002526 </span>
									<p class="hienhan">
										<span>Hạn: 30/04/2017</span>
	                                     <span>Nguyễn Văn A</span>									
									</p>
								</td>
								<td>
									<span class="tiude"> Công ty thiết kế Danaweb </span>
									<p class="bosungtiu">
										<span>Mr.Captain American</span>
	                                    <span>0987 654 321</span>									
									</p>
								</td>
								<td>
									
									<p class="bosungtiu">
									    <span> Name card</span>
										<span>Brochure</span>
	                                    <span>poster</span>									
									</p>
								</td>
								<td>
									<span class="tghoanhthanh">
										Cần hoành thành trước 30/4
									</span>
									<span data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Xem ghi chú">
									<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return add_calendar_modal();" title="xem chi tiết chú thích"></i></span>
								</td>
								<td>

								<select name="tech" class="tech form-control sectcustum1" id="tech" style="padding-left: 20px;">
							      <option value="calendar" data-image="<?= HOME_URL;?>/images/cam.png" selected = "selected" disabledd>Đã thanh toán</option>
								  </select>
                                
								</td>
								<td>
									<div class="imea">
								
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">
								<select  class=" form-control sectcustum3 set1">
								  <option value="calendar">&nbsp;</option>
								  <option value="shopping_cart" selected="selected">Nhân</option>
								  <option value="cd">Hòa</option>
								  <option value="email">Thức</option>
								  <option value="faq">Toàn</option>
								  <option value="email">Duyên</option>
								  <option value="faq">Hà</option>
								</select>
								</div>
								<ul class="hienxuly">	
									<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>
												
											</a>
											<ul class="dropdown-menu extended logout nh_afterdrop">
												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xem chi tiết" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>
												<li><a href="javascript:;"  data-toggle="tooltip" data-placement="left" title="" onclick="editcreen()" data-original-title="Chỉnh sửa"><i class="fa fa-paint-brush"></i> Chỉnh sửa</a></li>
												<li class="divider"></li>
												<li><a href="javascript:;"   data-toggle="tooltip" data-placement="left" title="" onclick="return open_calendar('manage', 1);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>
											
											</ul>
									</li>
								</ul>	
								</td>
							</tr>
							<tr class="bangkhachhang">
								<td>
									<span class="tiude"> CT001002526 </span>
									<p class="hienhan">
										<span>Hạn: 30/04/2017</span>
	                                     <span>Nguyễn Văn A</span>									
									</p>
								</td>
								<td>
									<span class="tiude"> Công ty thiết kế Danaweb </span>
									<p class="bosungtiu">
										<span>Mr.Captain American</span>
	                                    <span>0987 654 321</span>									
									</p>
								</td>
								<td>
									
									<p class="bosungtiu">
									    <span> Name card</span>
										<span>Brochure</span>
	                                    <span>poster</span>									
									</p>
								</td>
								<td>
									<span class="tghoanhthanh">
										Cần hoành thành trước 30/4
									</span>
									<span data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Xem ghi chú">
									<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return add_calendar_modal();"  title="xem chi tiết chú thích"></i></span>
								</td>
								<td>
								<select name="tech" class="tech form-control sectcustum1" id="tech1" style="padding-left: 20px;">
							       <option value="calendar" data-image="<?= HOME_URL;?>/images/cam.png" selected = "selected" disabledd>Đã thanh toán</option>
							   </select>
								</td>
								<td>
								<div class="imea">
								
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">
								<select  class=" form-control sectcustum3 set1">
								  <option value="calendar">&nbsp;</option>
								  <option value="shopping_cart" selected="selected" >Nhân</option>
								  <option value="cd">Hòa</option>
								  <option value="email">Thức</option>
								  <option value="faq">Toàn</option>
								  <option value="email">Duyên</option>
								  <option value="faq"  >Hà</option>
								</select>
								</div>
								<ul class="hienxuly">	
									<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>
												
											</a>
											<ul class="dropdown-menu extended logout nh_afterdrop">
												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xem chi tiết" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>
												<li><a href="javascript:;"  data-toggle="tooltip" data-placement="left" title="" onclick="editcreen()" data-original-title="Chỉnh sửa"><i class="fa fa-paint-brush"></i> Chỉnh sửa</a></li>
												<li class="divider"></li>
												<li><a href="javascript:;"   data-toggle="tooltip" data-placement="left" title="" onclick="return open_calendar('manage', 1);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>
											
											</ul>
									</li>
								</ul>	
								</td>
							</tr>
							<tr class="bangkhachhang">
								<td>
									<span class="tiude"> CT001002526 </span>
									<p class="hienhan">
										<span>Hạn: 30/04/2017</span>
	                                     <span>Nguyễn Văn A</span>									
									</p>
								</td>
								<td>
									<span class="tiude"> Công ty thiết kế Danaweb </span>
									<p class="bosungtiu">
										<span>Mr.Captain American</span>
	                                    <span>0987 654 321</span>									
									</p>
								</td>
								<td>
									
									<p class="bosungtiu">
									    <span> Name card</span>
										<span>Brochure</span>
	                                    <span>poster</span>									
									</p>
								</td>
								<td>
									<span class="tghoanhthanh">
										Cần hoành thành trước 30/4
									</span>
									<span data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Xem ghi chú">
									<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return add_calendar_modal();"  title="xem chi tiết chú thích"></i></span>
								</td>
								<td>
								<select name="tech" class="tech form-control sectcustum1" id="tech3" style="padding-left: 20px;">
							       <option value="calendar" data-image="<?= HOME_URL;?>/images/cam.png" selected = "selected" disabledd>Đã thanh toán</option></select>

							   

								</td>
								<td>
								<div class="imea">
								
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">
								<select  class=" form-control sectcustum3 set1">
								  <option value="calendar">&nbsp;</option>
								  <option value="shopping_cart" selected="selected">Nhân</option>
								  <option value="cd">Hòa</option>
								  <option value="email">Thức</option>
								  <option value="faq">Toàn</option>
								  <option value="email">Duyên</option>
								  <option value="faq">Hà</option>
								</select>
								</div>
								<ul class="hienxuly">	
									<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>
												
											</a>
											<ul class="dropdown-menu extended logout nh_afterdrop">
												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xem chi tiết" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>
												<li><a href="javascript:;"  data-toggle="tooltip" data-placement="left" title="" onclick="editcreen()" data-original-title="Chỉnh sửa"><i class="fa fa-paint-brush"></i> Chỉnh sửa</a></li>
												<li class="divider"></li>
												<li><a href="javascript:;"   data-toggle="tooltip" data-placement="left" title="" onclick="return open_calendar('manage', 1);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>
											
											</ul>
									</li>
								</ul>	
								</td>
							</tr>
								<tr class="bangkhachhang">
								<td>
									<span class="tiude"> CT001002526 </span>
									<p class="hienhan">
										<span>Hạn: 30/04/2017</span>
	                                     <span>Nguyễn Văn A</span>									
									</p>
								</td>
								<td>
									<span class="tiude"> Công ty thiết kế Danaweb </span>
									<p class="bosungtiu">
										<span>Mr.Captain American</span>
	                                    <span>0987 654 321</span>									
									</p>
								</td>
								<td>
									
									<p class="bosungtiu">
									    <span> Name card</span>
										<span>Brochure</span>
	                                    <span>poster</span>									
									</p>
								</td>
								<td>
									<span class="tghoanhthanh">
										Cần hoành thành trước 30/4
									</span>
									<span data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Xem ghi chú">
									<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return add_calendar_modal();"  title="xem chi tiết chú thích"></i></span>
								</td>
								<td>
								<select name="tech" class="tech form-control sectcustum1" id="tech4" style="padding-left: 20px;">
							      <option value="calendar" data-image="<?= HOME_URL;?>/images/cam.png" selected = "selected" disabledd>Đã thanh toán</option> </select>

							   

								</td>
								<td>
								<div class="imea">
								
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">
								<select  class=" form-control sectcustum3 set1">
								  <option value="calendar">&nbsp;</option>
								  <option value="shopping_cart" >Nhân</option>
								  <option value="cd">Hòa</option>
								  <option value="email" selected="selected">Thức</option>
								  <option value="faq">Toàn</option>
								  <option value="email">Duyên</option>
								  <option value="faq">Hà</option>
								</select>
								</div>
								<ul class="hienxuly">	
									<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>
												
											</a>
											<ul class="dropdown-menu extended logout nh_afterdrop">
												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xem chi tiết" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>
												<li><a href="javascript:;"  data-toggle="tooltip" data-placement="left" title="" onclick="editcreen()" data-original-title="Chỉnh sửa"><i class="fa fa-paint-brush"></i> Chỉnh sửa</a></li>
												<li class="divider"></li>
												<li><a href="javascript:;"   data-toggle="tooltip" data-placement="left" title="" onclick="return open_calendar('manage', 1);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>
											
											</ul>
									</li>
								</ul>	
								</td>
							</tr>
								<tr class="bangkhachhang">
								<td>
									<span class="tiude"> CT001002526 </span>
									<p class="hienhan">
										<span>Hạn: 30/04/2017</span>
	                                     <span>Nguyễn Văn A</span>									
									</p>
								</td>
								<td>
									<span class="tiude"> Công ty thiết kế Danaweb </span>
									<p class="bosungtiu">
										<span>Mr.Captain American</span>
	                                    <span>0987 654 321</span>									
									</p>
								</td>
								<td>
									
									<p class="bosungtiu">
									    <span> Name card</span>
										<span>Brochure</span>
	                                    <span>poster</span>									
									</p>
								</td>
								<td>
									<span class="tghoanhthanh">
										Cần hoành thành trước 30/4
									</span>
									<span data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Xem ghi chú">
									<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return add_calendar_modal();"  title="xem chi tiết chú thích"></i></span>
								</td>
								<td>
								<select name="tech" class="tech form-control sectcustum1" id="tech5" style="padding-left: 20px;">
							       <option value="calendar" data-image="<?= HOME_URL;?>/images/cam.png" selected = "selected" disabledd>Đã thanh toán</option> </select>

							    

								</td>
								<td>
								<div class="imea">
								
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">
								<select  class=" form-control sectcustum3 set1">
								  <option value="calendar">&nbsp;</option>
								  <option value="shopping_cart">Nhân</option>
								  <option value="cd" selected="selected">Hòa</option>
								  <option value="email">Thức</option>
								  <option value="faq">Toàn</option>
								  <option value="email">Duyên</option>
								  <option value="faq">Hà</option>
								</select>
								</div>
								<ul class="hienxuly">	
									<li class="dropdown">
											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>
												
											</a>
											<ul class="dropdown-menu extended logout nh_afterdrop">
												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xem chi tiết" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>
												<li><a href="javascript:;"  data-toggle="tooltip" data-placement="left" title="" onclick="editcreen()" data-original-title="Chỉnh sửa"><i class="fa fa-paint-brush"></i> Chỉnh sửa</a></li>
												<li class="divider"></li>
												<li><a href="javascript:;"   data-toggle="tooltip" data-placement="left" title="" onclick="return open_calendar('manage', 1);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>
											
											</ul>
									</li>
								</ul>	
								</td>
							</tr>
						</tbody>

						
					</table>
					<?php } ?>
					
				</form>
			</div>
			<!-- /.table-responsive -->
		</div>
		<!-- /.panel -->
	</div>
	<!-- /.col-lg-6 -->
</div>



<script>

 $('#danhsachdonhangcanhan').on('click','.xoahangngang',function(){
		
       $(this).parent().parent().parent().parent().parent().parent().remove();		
		
    });

 function editcreen(){
	       window.location = "/?ol=calendar&op=calendar_tracking"
        }
        
function savescreen(){
	window.location = "/?ol=calendar&op=calendar_list"
}

function themtrang(){

	window.location = "http://project.com/?ol=document&op=document_add"
}

function loadtable(url){
	uri = '/loadajax/'+url+'.php'
	 showLoader();
    $.ajax({
        url: uri,
        type: 'POST',
        dataType: 'html',
        success: function(data){
        	closeLoader();
        	$('#loadajax').html(data)
        }
    });
}



$(document).ready(function() {
  $('.sectcustum3').niceSelect();
});

$(document).ready(function(e) {
	$("#payments").msDropdown({visibleRows:4});
	$(".tech").msDropdown().data("dd");//{animStyle:'none'} /{animStyle:'slideDown'} {animStyle:'show'}		
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

	$(document).ready(function() {
		$('#dataTablesList tfoot th').each( function () {
			var title = $(this).text();
			$(this).html( '<input type="text" placeholder="Search '+title+'" />' );
		} );
		var table = $('#dataTablesList').DataTable( {
			"language": {
				"url": "/js/data-tables/de_DE.txt"
			},
			"lengthMenu": [[30, 50, 80, 100], [30, 50, 80, 100]],
			"info":     false,
			"processing": true,
			"serverSide": true,
			"ajax": {
				url: '/action.php?url=document_list',
				type: 'POST'
			},
			"fnRowCallback" : function(nRow, aData, iDisplayIndex) {
				$('td:eq(0)', nRow).css( "text-align", "center" );
				$('td:eq(4)', nRow).css( "text-align", "center" );
				$('td:eq(5)', nRow).css( "text-align", "center" );
				$('td:eq(6)', nRow).css( "text-align", "center" );
				$('td:eq(7)', nRow).css( "text-align", "center" );
				return nRow;
			},
			"order": [[ 0, "desc" ]],
			"aoColumnDefs" : [ {
				'targets': [6, 7],
				'searchable':false,
				'orderable':false
			} ]
		});
		// Apply the search
		table.columns().eq( 0 ).each( function () {
			$( 'input.filter' ).on( 'keyup change', function () {
				var i =$(this).attr('data-column');
				var v =$(this).val();
				table.columns(i).search(v).draw();
			});
			$( 'select.filter' ).on( 'change', function () {   // for select box
				var i =$(this).attr('data-column');
				var v =$(this).val();
				table.columns(i).search(v).draw();
			} );
		} );
	});
	$('.input-date').datetimepicker({
		lang:'vi',
		timepicker: false,
		closeOnDateSelect:true,
		format:'<?php echo TTH_DATE_FORMAT;?>'
	});
	$(".ol-confirm").click(function() {
		confirm("Tất cả các dữ liệu liên quan sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {
			if(this.data == true) document.getElementById("_ol_delete").submit();
		});
	});
	$(".ol-alert-core").boxes('alert', 'Bạn không được phân quyền với chức năng này.');
</script>