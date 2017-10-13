<?php

if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

?>


<div class="row in-relative">

	<div class="col-md-7 locdanhsach">

		<div class="col-md-4">&nbsp;</div>
		<!-- form tìm kiếm  -->

		<div class="col-md-8">

			<form class="searchitemtable">

				<label class="hiendi"><input type="text" class="formtimclick" placeholder="Nhập từ khóa... " id="myInput"><span  class="nutbamtim"><i class="fa fa-search"></i>
				</span></label>

				<span name="button" class="searchformthem"><i class="fa fa-search"></i> </span>

			</form>

		</div>

		<!-- end form tìm kiếm -->

		<script type="text/javascript">

			$(document).ready(function() {

				$('.searchformthem').click(function(event) {
					$(this).css('display','none');
					$('.hiendi').css('padding-left','20px')
					$('.hiendi').toggle( "slide" );
				});
				$('.nutbamtim').css('cursor','pointer')

				$('.nutbamtim').click(function(event) {
					$('.hiendi').toggle( "slide" );
					$('.searchformthem').css('display','inherit');

				});
			});

		</script>

		<?php $ol = (isset($_GET['ol']) && $_GET['ol'] !== '')? $_GET['ol'] : 'document';


		$op = (isset($_GET['op']) && $_GET['op'] !== '')? $_GET['op'] : 'document_list_accountant';


		$fun = isset($_GET['fun']) ? $_GET['fun'] : 'canhan';

	
		?>

	</div>

	<div class="col-md-5">		


		<ul class="nh_locbang" title="xử lý nội dung">	

			<li class="dropdown">

				<a data-toggle="dropdown" class="dropdown-toggle username" href="#">

					<?php

					$info_user = array();


					if($fun =="canhan") echo '<i class="fa fa-calendar-plus-o"></i> Tôi';

					else echo '<i class="fa fa-calendar"></i> Tất cả' ?></span>

					<b class="caret"></b>

				</a>

				<ul class="dropdown-menu extended logout">

					<li><a href="/?ol=<?= $ol ?>&op=<?= $op ?>&fun=canhan"><i class="fa fa-calendar-plus-o"></i>Tôi</a></li>
                                        
                                        <li class="divider"></li>
					
                                        <li><a href="/?ol=<?= $ol ?>&op=<?= $op ?>&fun=tochuc"><i class="fa fa-calendar"></i>Tất cả</a></li>

					
 
				</ul>
			</li>

		</ul>			

		</div>

		<div class="col-lg-12 no-relative" >

			<div class="panel panel-no-border">

				<div class="table-responsive">
				

				<?php if($fun == "canhan"){ ?>

						<table class="table table-no-border table-ol-3w table-hover danhsachdonhangcanhan" id="dataTablesList">

							<thead>

							<tr class="panel-heading thantran">



									<th width="150px"><label class="form-lb-tp">Code</label></th>



									<th width="180px"><label class="form-lb-tp">Khách hàng</label></th>



									<th width="150px"><label class="form-lb-tp">Ðơn hàng</label></th>



									<th width="200px"><label class="form-lb-tp">Ghi chú</label></th>



									<th><label class="form-lb-tp">Tình trạng</label></th>



									<th><label class="form-lb-tp">Thực hiện</label></th>



								</tr>



							</thead>


							<tbody class="taplet">						
						<?php
						$stt = 1;
						$list_accountants = array();
                        $list_accountants = getListUserNotify2(9);
						$user_ids = implode(',',array(0, $account['id']));
						$db->table="exhibition";
						
					    if(count($list_accountants < 2) ) {
							$db->condition = "accountant_id = 0";
							$data = array(
							'accountant_id' => $account['id'],
							);
							$db->update($data);
						
							$db->condition = " debtor > 0 AND accountant_id = " . $account['id'];
						}
						else if(in_array(2,$roles) ) 
						$db->condition = " debtor > 0 AND accountant_id IN (".$user_ids. ")";
						else 
						$db->condition = " debtor > 0 AND accountant_id = " . $account['id'];
						$db->order = "`created_time` DESC ";
						$db->limit = '';
						$rows = $db->select();
						if($db->RowCount > 0 ) {
							
							foreach($rows as $row) {
								$info_customer = array();
								$info_customer = getInfoCustomer($row['customer_id']+0);
								$info_product_items = array();
								$info_product_items = getInfoItems($row['exhibition_id']+0);
								$infoID = getCreatorId($row['exhibition_id']+0);
								$info_user = getInfoUser($infoID+0);
						?>

							<tr class="bangkhachhang">

								<td>
									<input class="id" type="hidden" value= "<?=$row['exhibition_id'];?>">
									<span class="codeorder <?=($row['urgent']+0 ==1)? 'hostcode': '';?>"> <?=stripslashes($row['code']);?> </span>

									<p class="hienhan">

										<span>Hạn: <?= $date->vnDate($row['date_end']);?></span>

	                                     <span><?=$info_user[0];?></span>									

									</p>

								</td>

								<td>

									<span class="tiude"> <?=(!empty($info_customer[0]))?'Công ty '. $info_customer[0]: ''; ?> </span>

									<p class="bosungtiu">

										<span><?=$info_customer[2]; ?></span>

	                                    <span><?=$info_customer[3]; ?></span>									

									</p>

								</td>

								<td>

									

									<p class="bosungtiu">

									    <?php
										foreach($info_product_items as $info_product_item) {
											echo '<span>'.$info_product_item.'</span>';
										}
										
										?>

									</p>

								</td>

								<td>

									<span class="tghoanhthanh">

										<?=stripslashes($row['comment']);?>

									</span>

									<span data-toggle="tooltip" class = "hienpopup <?php if(in_array("document;note", $corePrivilegeSlug['op'])) echo ''; else echo "chanevent";?>" data-placement="right" title="" data-original-title="Xem ghi chú">

									<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" <?php if(in_array("document;note", $corePrivilegeSlug['op'])) echo 'data-target="#_calendar_modal"'; else echo "";?> onclick="return add_calendar_modal();"  title="In chú thích"></i></span>

								</td>

								<td style="position: relative;">



								<select name="tech" class="tech form-control sectcustum1 " <?php if(in_array("document;trip", $corePrivilegeSlug['op'])) echo ''; else echo 'disabled="disabled"';?> id="tech<?=$stt++;?>" onchange="change_state(this,<?=$row['exhibition_id'];?>);" style="padding-left: 20px;">

								  <option value="<?=$row['status']+0; ?>" selected="selected" data-image="<?= HOME_URL;?>/images/<?=getStatusColor($row['status']+0)?>.png"><?=getStatusName($row['status']+0) ?></option>
													 

							    </select>
								
							    <div style="height: 30px; width: 30px; position: absolute; top:50px; right: 0; border-radius: 15px;background-color:<?=($row['debtor'] == 0)?'#007f3d':'#ff1200'?>; border: 1px solid #111;cursor: pointer; " class="theodoithanhtoan"  data-toggle="tooltip" data-placement="top" title="" data-original-title="Theo dõi thanh toán"  >

							    <a  onclick="edit_payment2(<?=$row["exhibition_id"]?>)"  data-toggle="modal" data-target="#_calendar_modal" title="Theo dõi thanh toán" style="color: #fff; text-transform: none;text-align:center; position: absolute; top: 5px; left: 8px"><i class="fa fa-usd " style="font-size:20px" ></i></a>
							    </div>
								
								</td>

								<td>

								
								
								<div class="imea">

								
								<p>Kế toán</p>
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap" style="top: 61%;">

								<select  class=" form-control sectcustum3 set1 <?php if(in_array("document;user", $corePrivilegeSlug['op'])) echo ''; else echo "ol-alert-core";?>" onchange="assign_employee(this,<?=$row['exhibition_id'];?>);">

								  <option value="0" <?php  if ($row['accountant_id'] == 0  ) echo 'selected' ?> >&nbsp;</option>
									<?php
									
									$db->table="role_user";
									$db->condition = "`role` = ".$role  ;
									$db->order = "";
									$db->limit = "";
									$row2s  = $db->select();
									if($db->RowCount > 0) {
									foreach($row2s as $row2) {
									?>
									<option value="<?=$row2['user'];?>" <?php if($row2['user'] == $row['accountant_id'])  echo " selected" ;?>><?=getNameUser($row2['user']);?></option>
									<?php }
									}?>
								</select>

								</div>

								<ul class="hienxuly">	

									<li class="dropdown">

											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">

												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>

												

											</a>

											<ul class="dropdown-menu extended logout nh_afterdrop">
												<?php if(in_array("document;email", $corePrivilegeSlug['op'])) echo '<li><a href="javascript:;"><i class="fa fa-envelope-o"></i>Gửi email</a></li>';?>

												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="In" ><i class="fa fa-file-text-o"></i> In</a></li>

												<?php if(in_array("document;edit", $corePrivilegeSlug['op'])) echo '<li><a href="javascript:;" style="position: relative; padding-left: 25px" data-toggle="modal" data-target="#_calendar_modal"  data-placement="left" title="" onclick="edit_document('.$row["exhibition_id"].')" data-original-title="Chỉnh sửa"><span style="top: 8px; left: 11px" data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Chỉnh sửa đơn hàng"><i class="fa fa-paint-brush"></i></span>Chỉnh sửa</a></li>';?>

												<li class="divider"></li>

												<li><a href="javascript:;"    data-placement="left" data-toggle="modal" data-target="#_calendar_modal" title="" onclick=" document_history(<?=$row["exhibition_id"] ?>);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>

												<?php if(in_array("document;delete", $corePrivilegeSlug['op']))  echo '<li><a href="javascript:;" onclick= "deleteOrder('.$row['exhibition_id'].');" class="xoahangngang"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xóa đơn hàng" ><i class="fa fa-trash-o"></i> Xóa </a></li>';?>											

											</ul>

									</li>

								</ul>	

								</td>

							</tr>
							<?php }
						} ?>
							

						</tbody>
						</table>
						<?php } else if($fun == 'tochuc'){ ?>
						<table class="table table-no-border table-ol-3w table-hover danhsachdonhangcanhan" id="dataTablesList">

							<thead>

								<tr class="panel-heading thantran" >

									<th  width="150px;"><label class="form-lb-tp">Code</label></th>

									<th><label class="form-lb-tp">Khách hàng</label></th>

									<th width="150px;"><label class="form-lb-tp">Ðơn hàng</label></th>

									<th width="200px;"><label class="form-lb-tp">Ghi chú</label></th>

									<th><label class="form-lb-tp">Tình trạng</label></th>

									<th><label class="form-lb-tp">Thực hiện</label></th>

								</tr>

							</thead>

															
						<tbody class="taplet">
						<?php
						$stt = 1;
						
						$user_ids = implode(',',array(0, $account['id']));
						$db->table="exhibition";
						if(in_array(2,$roles)) 
						$db->condition = " debtor > 0 AND  accountant_id  NOT IN (".$user_ids. ")";
						else 
						$db->condition = " debtor > 0 AND accountant_id <> " . $account['id'];
						$db->order = "`created_time` DESC ";
						$db->limit ='';
						$rows = $db->select();
						if($db->RowCount > 0 ) {
							
							foreach($rows as $row) {
								$info_customer = array();
								$info_customer = getInfoCustomer($row['customer_id']+0);
								$info_product_items = array();
								$info_product_items = getInfoItems($row['exhibition_id']+0);
								$infoID = getCreatorId($row['exhibition_id']+0);
								$info_user = getInfoUser($infoID+0);
						?>

							<tr class="bangkhachhang">

								<td>
									<input class="id" type="hidden" value= "<?=$row['exhibition_id'];?>">
									<span class="codeorder <?=($row['urgent']+0 ==1)? 'hostcode': '';?>"> <?=stripslashes($row['code']);?> </span>

									<p class="hienhan">

										<span>Hạn: <?= $date->vnDate($row['date_end']);?></span>

	                                     <span><?=$info_user[0];?></span>									

									</p>

								</td>

								<td>

									<span class="tiude"> <?=(!empty($info_customer[0]))?'Công ty '. $info_customer[0]: ''; ?> </span>

									<p class="bosungtiu">

										<span><?=$info_customer[2]; ?></span>

	                                    <span><?=$info_customer[3]; ?></span>									

									</p>

								</td>

								<td>

									

									<p class="bosungtiu">

									    <?php
										foreach($info_product_items as $info_product_item) {
											echo '<span>'.$info_product_item.'</span>';
										}
										
										?>

									</p>

								</td>

								<td>

									<span class="tghoanhthanh">

										<?=stripslashes($row['comment']);?>

									</span>

									<span data-toggle="tooltip" class = "hienpopup <?php if(in_array("document;note", $corePrivilegeSlug['op'])) echo ''; else echo "chanevent";?>" data-placement="right" title="" data-original-title="Xem ghi chú">

									<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" <?php if(in_array("document;note", $corePrivilegeSlug['op'])) echo 'data-target="#_calendar_modal"'; else echo "";?> onclick="return add_calendar_modal();"  title="In chú thích"></i></span>

								</td>

								<td style="position: relative;">



								<select name="tech" class="tech form-control sectcustum1 " <?php if(in_array("document;trip", $corePrivilegeSlug['op'])) echo ''; else echo 'disabled="disabled"';?> id="tech<?=$stt++;?>" onchange="change_state(this,<?=$row['exhibition_id'];?>);" style="padding-left: 20px;">

								  <option value="<?=$row['status']+0; ?>" selected="selected" data-image="<?= HOME_URL;?>/images/<?=getStatusColor($row['status']+0) ?>.png"><?=getStatusName($row['status']+0) ?></option>
													 

							    </select>
								
							    <div style="height: 30px; width: 30px; position: absolute; top:50px; right: 0; border-radius: 15px;background-color:<?=($row['debtor'] == 0)?'#007f3d':'#ff1200'?>; border: 1px solid #111;cursor: pointer; " class="theodoithanhtoan"  data-toggle="tooltip" data-placement="top" title="" data-original-title="Theo dõi thanh toán"  >

							    <a  onclick="edit_payment2(<?=$row["exhibition_id"]?>)"  data-toggle="modal" data-target="#_calendar_modal" title="Theo dõi thanh toán" style="color: #fff; text-transform: none;text-align:center; position: absolute; top: 5px; left: 8px"><i class="fa fa-usd " style="font-size:20px" ></i></a>
							    </div>
								
								</td>

								<td>

								
								
								<div class="imea">

								<p>Kế toán</p>
								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap" style="top: 61%;">

								<select  class=" form-control sectcustum3 set1 <?php if(in_array("document;user", $corePrivilegeSlug['op'])) echo ''; else echo "ol-alert-core";?>"  onchange="assign_employee(this,<?=$row['exhibition_id'];?>);" >

								  <option value="0" <?php  if ($row['accountant_id'] == 0)  echo 'selected' ?> >&nbsp;</option>
									<?php
									
									$db->table="role_user";
									$db->condition = "`role` = ".$role  ;
									$db->order = "";
									$db->limit = "";
									$row2s  = $db->select();
									foreach($row2s as $row2) {
									?>
									<option value="<?=$row2['user'];?>" <?php if($row2['user'] == $row['accountant_id'] )  echo " selected='selected'" ;?>><?=getNameUser($row2['user']);?></option>
									<?php } ?>
								</select>

								</div>

								<ul class="hienxuly">	

									<li class="dropdown">

											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">

												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>

												

											</a>

											<ul class="dropdown-menu extended logout nh_afterdrop">
												<?php if(in_array("document;email", $corePrivilegeSlug['op'])) echo '<li><a href="javascript:;"><i class="fa fa-envelope-o"></i>Gửi email</a></li>';?>

												<li><a href="/?ol=calendar&op=calendar_list"  data-toggle="tooltip" data-placement="left" title="" data-original-title="In" ><i class="fa fa-file-text-o"></i> In</a></li>

												<?php if(in_array("document;edit", $corePrivilegeSlug['op'])) echo '<li><a href="javascript:;" style="position: relative; padding-left: 25px" data-toggle="modal" data-target="#_calendar_modal"  data-placement="left" title="" onclick="edit_document('.$row["exhibition_id"].')" data-original-title="Chỉnh sửa"><span style="top: 8px; left: 11px" data-toggle="tooltip" class = "hienpopup" data-placement="right" title="" data-original-title="Chỉnh sửa đơn hàng"><i class="fa fa-paint-brush"></i></span>Chỉnh sửa</a></li>';?>

												<li class="divider"></li>

												<li><a href="javascript:;"    data-placement="left" data-toggle="modal" data-target="#_calendar_modal" title="" onclick=" document_history(<?=$row["exhibition_id"] ?>);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>

												<?php if(in_array("document;delete", $corePrivilegeSlug['op']))  echo '<li><a href="javascript:;" onclick= "deleteOrder('.$row['exhibition_id'].');" class="xoahangngang"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xóa đơn hàng" ><i class="fa fa-trash-o"></i> Xóa </a></li>';?>											

											</ul>

									</li>

								</ul>	

								</td>

							</tr>
							<?php }
						} ?>
							

						</tbody>
						</table>
						<?php } ?>

					
				<!--</form>-->

			</div>

			<!-- /.table-responsive -->

		</div>

		<!-- /.panel -->

	</div>

	<!-- /.col-lg-6 -->

</div>





<script>
$(document).ready(function() {

			table = $('#dataTablesList').dataTable( {
				"language": {
					"url": "/js/data-tables/de_DE.txt",
					"decimal": ",",
					"thousands": "."
				},
				"aoColumnDefs" : [ {
					"bSortable" : false,
					"aTargets" : [4,5, "no-sort" ]
				} ],
				"paging":   true,
				"info":     true,
				"order": [0, "desc" ],
				"columns": [
				null,
				null,
				null,
				null,
				{ "orderDataType": "dom-select" },
				]
			})

		})
$('#myInput').on('keyup', function () {
			var table = $('#dataTablesList').DataTable();
			table.search(this.value).draw();
		});
function assign_employee(item, code) {

	var emp = $(item).val();
	var orderCode = $(item).parent().parent().parent().find('.codeorder').html();
	var name = $(item).find('option:selected').text();
		
    confirm("Đơn hàng "+orderCode +" sẽ được chuyển cho nhân viên " +name+ ". Bạn có chắc chắn ?",function(){
		if(this.data === true)  {
		
		employeeAssign2(code,emp);
	} else {
         
		window.location.reload();
    }

	});

}



function loadtable(url){

	alert(url)

}



$(document).ready(function() {

  $('.sectcustum3').niceSelect();

});

$(document).ready(function(e) {

	$("#payments").msDropdown({visibleRows:4});


	$(".tech").msDropdown().data("dd");


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

	//doitrangthai();

	//giaonhanvien();

});



function deleteOrder(id){



   


 confirm("Tất cả các dữ liệu liên quan sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {

    if(this.data === true){
 
      
	$.ajax({

				url:'/action.php',

				type: 'POST',

				data: 'url=delete_order&id='+id ,
				dataType: 'html',

				success: function(data){			
				
				window.location.reload();
				alert('Xoa đơn hàng thành công');
				}

			}); 

   }
          });        

    }


	
	$('.input-date').datetimepicker({

		lang:'vi',

		timepicker: false,

		closeOnDateSelect:true,

		format:'<?php echo TTH_DATE_FORMAT;?>'

	});

	



	$(".ol-alert-core").boxes('alert', 'Bạn không được phân quyền với chức năng này.');

</script>

