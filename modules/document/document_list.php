<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }



$stt = 1;
?>
<div class="row in-relative">

	<div class="col-md-7 locdanhsach">

		<div class="col-md-4">&nbsp;</div>
		<!-- form tìm kiếm  -->

		<div class="col-md-8">

				<form class="searchitemtable">

				<label class="hiendi"><input type="text" class="formtimclick" placeholder="Nhập từ khóa... " id="myInput"><span  class="nutbamtim"  data-toggle="tooltip" data-placement="top" title="" data-original-title="Đóng tìm kiếm - (F4)"><i class="fa fa-search"></i>
				</span></label>

				<span name="button" class="searchformthem"  data-toggle="tooltip" data-placement="top" title="" data-original-title="Tìm kiếm - (F3)"><i class="fa fa-search"></i> </span>

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


		$op = (isset($_GET['op']) && $_GET['op'] !== '')? $_GET['op'] : 'document_list';


		$fun = isset($_GET['fun']) ? $_GET['fun'] : 'canhan';

	
		?>

	</div>

	<div class="col-md-5">		


		<ul class="nh_locbang" title="xử lý nội dung">	

			<li class="dropdown">

				<a data-toggle="dropdown" class="dropdown-toggle username" href="#">

					<?php

					$info_user = array();


					if($fun =="canhan") echo '<i class="fa fa-calendar-plus-o"></i> Tôi-(F6)';

					else echo '<i class="fa fa-calendar"></i> Tất cả-(F7)' ?></span>

					<b class="caret"></b>

				</a>

				<ul class="dropdown-menu extended logout">

					<li><a href="/?ol=<?= $ol ?>&op=<?= $op ?>&fun=canhan"><i class="fa fa-calendar-plus-o"></i>Tôi-(F6)</a></li>
                                        
                    <li class="divider"></li>
					
                   <li><a href="/?ol=<?= $ol ?>&op=<?= $op ?>&fun=tochuc"><i class="fa fa-calendar"></i>Tất cả-(F7)</a></li>

				</ul>
			</li>

		</ul>	

		<?php if(in_array(3,$roles)) { ?><button class="btn btn-round color-1 material-design nuthemmuc" onclick="Forward('<?=HOME_URL;?>/?ol=document&op=document_add')" style="float: right;"  name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thêm đơn hàng mới"><i class="fa fa-plus" ></i> <span>Thêm đơn hàng (F9)</span></button>

<script type="text/javascript">
    shortcut.add('F9', function() {

	Forward('<?=HOME_URL;?>/?ol=document&op=document_add')

	});
</script>
		<?php } ?>

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


							<tbody class="taplet" id="sortable">

								<?php
						
						$status = getKeyStatus($role);						
						$stats = getStatusToRole($role);
						$user_ids = implode(',',array(0, $account['id']));
						$db->table="exhibition";
						if (($key = array_search(2, $roles)) !== false) {
						$db->condition = " `status` = ". $status . " AND  user_id IN (".$user_ids.")";
						} else
						$db->condition = " `status` = ". $status . " AND `user_id` = " . $account['id'];
						$db->order = "`created_time` DESC ";
						$db->limit = "";
						$rows = $db->select();
						if($db->RowCount > 0 ) {
							foreach($rows as $row) {
								$info_customer = array();
								$info_customer = getInfoCustomer($row['customer_id']+0);
								$info_product_items = array();
								$info_product_items = getInfoItems($row['exhibition_id']+0);
                                $info_U = getCreatorId($row['exhibition_id']);
								$info_user = getInfoUser($info_U);
						?>
										<tr class="bangkhachhang"  id="bang<?=  $row['exhibition_id']  ?>" >
											<td>
											<input class="id" type="hidden" value= "<?=$row['exhibition_id'];?>">
												<span class="codeorder hostcode">
													<?php 

													if($row['urgent']+ 0  == 1)

														echo '<span class="cangap"></span>';

													else echo '';

													if($row['pick_up']+ 0 == 1)

														echo '<span class="denlay"></span>';

													else echo '';
													?>

													<a href="javascript:;" <?php if((in_array("document;edit", $corePrivilegeSlug['op']))) echo 'data-toggle="modal" data-target="#_calendar_modal"  data-placement="left" title="" onclick="edit_document('.$row["exhibition_id"].')" data-original-title="Chỉnh sửa" '; ?>><?=stripslashes($row['code']);?> </a></span>

													<p class="hienhan">

														<span>Hạn: <?php if($row['date_end'] == "") echo "Không rỏ"; else  $date->vnDate($row['date_end']); ?></span>
														<span><? if($info_user == []) echo ""; else $info_user[0];?></span>									

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

														<?php
														if($row['comment'] == "")
															echo "Chưa có ghi chú cho đơn hàng này";
														else echo stripslashes($row['comment']);

														?>
													</span>
													<span data-toggle="tooltip" class = "hienpopup <?php if(in_array("document;note", $corePrivilegeSlug['op'])) echo ''; else echo "chanevent";?>" data-placement="right" title="" data-original-title="Xem ghi chú">
														<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return get_note(<?= $row['exhibition_id'] ?>);"  title="In chú thích"></i></span>
													</td>
													<td style="position: relative;">
														<select name="tech" class="tech form-control sectcustum1 giaonv" <?php if(in_array("document;status", $corePrivilegeSlug['op'])) echo ''; else echo 'disabled="disabled"';?> id="tech<?=$stt++;?>" onchange="change_state(this,<?=$row['exhibition_id'];?>,'<?=$row['code'];?>');" style="padding-left: 20px;">
															<option value="<?=$status; ?>" selected="selected" data-image="<?= HOME_URL;?>/images/<?=getStatusColor($status);?>.png"><?=getStatusName($status) ?></option>
															<?php

															$i = 0;

															foreach($stats as $stat) {
																?>
																<option value="<?=$stat?>" data-image="<?= HOME_URL;?>/images/<?=getStatusColor($stat);?>.png"><?=getStatusName($stat) ?></option>

																<?php } ?>  							 
															</select>

															<?php if(in_array(3, $roles)) { ?>
							                                                                  <div style="height: 30px; width: 30px; position: absolute; top:50px; right: 0; border-radius: 15px;background-color:<?=($row['debtor'] == 0)?'#007f3d':'#ff1200'?>; border: 1px solid #111;cursor: pointer; " class="theodoithanhtoan <?php if(in_array("document;trip", $corePrivilegeSlug['op'])) echo ''; else echo "chanevent";?>"  data-toggle="tooltip" data-placement="top" title="" data-original-title="Theo dõi thanh toán"  >
																<a  onclick="edit_payment(<?=$row["exhibition_id"]?>)"  data-toggle="modal" data-target="#_calendar_modal" title="Theo dõi thanh toán" style="color: #fff; text-transform: none;text-align:center; position: absolute; top: 5px; left: 8px"><i class="fa fa-usd " style="font-size:20px" ></i></a>

							                                                                  </div>
								                                                        <?php } ?>
															<?php if(in_array(7, $roles)) { ?>
							                                                                  <div style="height: 35px; width: 35px; position: absolute; top:30px; right: 0; border-radius: 20px;background-color:#007f3d; border: 1px solid #111;cursor: pointer; " class="theodoi"  data-toggle="tooltip" data-placement="top" title="" data-original-title="Theo dõi thành phẩm"  >
																<a  onclick="edit_stock(<?=$row["exhibition_id"]?>)"  data-toggle="modal" data-target="#_calendar_modal" title="Quản lý thành phẩm" style="color: #fff; text-transform: none;text-align:center; position: absolute; top: 5px; left: 5px"><i class="fa fa-sort-amount-asc " style="font-size:20px" ></i></a>

							                                                                  </div>
								                                                        <?php } ?>
														</td>

														<td>
															<div class="imea">

																<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">
																<select  class=" form-control sectcustum3 set1 <?php if(in_array("document;user", $corePrivilegeSlug['op'])) echo ''; else echo "ol-alert-core";?>"  onchange="assign_employee(this,<?=$row['exhibition_id'];?>,'<?=$row['code'];?>');" >

																  <option value="0" <?php  if ($row['user_id'] == 0)  echo 'selected' ?> >&nbsp;</option>
																	<?php
																	
																	$db->table="role_user";
																	$db->condition = "`role` = ".$role  ;
																	$db->order = "";
																	$db->limit = "";
																	$row2s  = $db->select();
																	foreach($row2s as $row2) {
																	?>
																	<option value="<?=$row2['user'];?>" <?php if($row2['user'] == $row['user_id'] )  echo " selected='selected'" ;?>><?=getNameUser($row2['user']);?></option>
																	<?php } ?>
																</select>
																</div>

																<ul class="hienxuly">	
																	<li class="dropdown">

																		<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
																			<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>
																		</a>
																		<ul class="dropdown-menu extended logout nh_afterdrop">

																			<?php if(in_array("document;email", $corePrivilegeSlug['op'])) echo '<li><a href="javascript:;" onclick="sendMail('.$row["customer_id"].')"><i class="fa fa-envelope-o"></i>Mail xác nhận</a></li>';?>

																				<li><a href="/?ol=document&op=document_view&id=<?= $row["exhibition_id"] ?>"  data-toggle="tooltip" data-placement="left" title="" data-original-title="In và lưu ảnh" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>

																					<li class="divider"></li>
																					<?php if(in_array("document;history", $corePrivilegeSlug['op'])) echo '<li><a href="javascript:;"    data-toggle="modal" data-target="#_calendar_modal"  data-placement="left" title="" onclick="document_history('.$row["exhibition_id"].')" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>'; ?> 

																					<?php if(in_array("document;delete", $corePrivilegeSlug['op']))  echo '<li><a href="javascript:;" onclick= "deleteOrder('.$row["exhibition_id"].');" class="xoahangngang"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xóa đơn hàng" ><i class="fa fa-trash-o"></i> Xóa </a></li>';?>	
																					  <?php if($role == 4 || $role == 1)  echo '<li><a href="/?ol=document&op=document_design&id='.$row["exhibition_id"].'" class="xacnhandonhang"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xác nhận đơn hàng" ><i class="fa fa-check-square-o"></i> Xác nhận đơn hàng </a></li>';?>										
																					</ul>

																				</li>

																			</ul>	
																		</td>
																	</tr>

																	<?php }

																} ?>
															</tbody>

														</table>

														<?php 
                
														} else if($fun=="tochuc") { ?>

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

															<tbody class="taplet" id="sortable">

																<?php
																
																$status = getKeyStatus($role);
																$stats = getStatusToRole($role);
																
																$user_ids = implode(',',array(0, $account['id']));
																$db->table="exhibition";
																if (($key = array_search(2, $roles)) !== false) {
																$db->condition = " `status` = ". $status . " AND  user_id NOT IN (".$user_ids.")";
																} else
																					
																$db->condition = " `status` = ". $status . " AND `user_id` <> " .$account['id'] ;
																$db->order = "`created_time` DESC ";
																$db->limit = "";
																$rows = $db->select();
																	$so=0;
																if($db->RowCount > 0 ) {
																	foreach($rows as $row) {
																		$so = $so + 1;
																		$info_customer = array();
																		$info_customer = getInfoCustomer($row['customer_id']+0);
																		$info_product_items = array();
																		$info_product_items = getInfoItems($row['exhibition_id']+0);
																		$userId = getCreatorId($row['exhibition_id']);
																	    $info_user = getInfoUser($userId);

																		?>

																		<tr class="bangkhachhang">

																			<td>
                                                                        <input class="id" type="hidden" value= "<?=$row['exhibition_id'];?>">
																				<span class="codeorder hostcode">
																					<?php 

																					if($row['urgent']+ 0  == 1)

																						echo '<span class="cangap"></span>';

																					else echo '';

																					if($row['pick_up']+ 0 == 1)

																						echo '<span class="denlay"></span>';

																					else echo '';
																					?> <a href="javascript:;"><?=stripslashes($row['code']);?></a>
																				</span>
																				<p class="hienhan">
																					<span>Hạn: <?php if($row['date_end'] == "") echo "Không rỏ"; else  $date->vnDate($row['date_end']); ?></span>

																					<span><? if($info_user == []) echo ""; else $info_user[0];?></span>							
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
																					<?php 
																					if($row['comment'] == "")
																						echo "Chưa có chú thích cho đơn hàng";
																					else
																						echo stripslashes($row['comment']);?>

																				</span>

																			</td>

																			<td style="position: relative;">
																				<select name="tech" class="tech form-control sectcustum1 " <?php if(in_array("document;status", $corePrivilegeSlug['op'])) echo ''; else echo 'disabled="disabled"';?> id="tech<?= $so ?>" onchange="change_state(this,<?=$row['exhibition_id'];?>,'<?=$row['code'];?>');" style="padding-left: 20px;">

																					<option value="<?=$status; ?>" selected="selected" data-image="<?= HOME_URL;?>/images/<?=getStatusColor($status);?>.png"><?=getStatusName($status) ?></option>

																					<?php

																					$i = 0;

																					foreach($stats as $stat) {

																						?>



																						<option value="<?=$stat?>" data-image="<?= HOME_URL;?>/images/<?=getStatusColor($stat);?>.png"><?=getStatusName($stat) ?></option>

																						<?php } ?>  							 

																					</select>
																				</td>

																				<td>
																					<div class="imea">


																						<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">

																				<select  class=" form-control sectcustum3 set1 <?php if(in_array("document;user", $corePrivilegeSlug['op'])) echo ''; else echo "ol-alert-core";?>">

																				  <option value="0" <?php  if ($row['user_id'] == 0)  echo 'selected' ?> >&nbsp;</option>
																					<?php
																				
																					$db->table="role_user";
																					$db->condition = "`role` = ".$role  ;
																					$db->order = "";
																					$db->limit = "";
																					$row2s  = $db->select();
																					foreach($row2s as $row2) {
																					?>
																					<option value="<?=$row2['user'];?>" <?php if($row2['user'] == $row['user_id'])  echo " selected='selected'" ;?>><?=getNameUser($row2['user']);?></option>
																					<?php } ?>
																				</select>
																				</div>
																			</td>

																	</tr>

																<?php }

															} ?>

														</tbody>
													</table>

											<?php } 	?>
										

									</div>

									<!-- /.table-responsive -->
								</div>

								<!-- /.panel -->
							</div>
							<!-- /.col-lg-6 -->
						</div>

		<script>
	

	 shortcut.add('F3', function() {
       $('.nutbamtim').css('display','inherit');
       $('.searchformthem').css('display','none');

		$('.hiendi').css('padding-left','20px')
		$('.hiendi').toggle( "slide" );

	});

	shortcut.add('F4', function() {
    $('.nutbamtim').css('display','none');
	$('.hiendi').toggle( "slide" );
	$('.searchformthem').css('display','inherit');

	});


    shortcut.add('F6', function() {
   
    Forward('<?=HOME_URL;?>/?ol=document&op=document_list&fun=canhan')

	});

	shortcut.add('F7', function() {
   
     Forward('<?=HOME_URL;?>/?ol=document&op=document_list&fun=tochuc')

	});


			$(function() {
		    $( "#sortable" ).sortable();
		    $( "#sortable" ).disableSelection();
		    });

		function document_history(id) {
		    showLoader();
			$.ajax({
				url:'/action.php',
				type: 'POST',
				data: 'url=document_modal_history&open=OK&id='+id,
				dataType: 'html',
				success: function(data){
					closeLoader();
					showResult('_calendar_modal', data);
				}
			});

			return false;
		}

		$('#myInput').on('keyup', function () {
			var table = $('#dataTablesList').DataTable();
			table.search(this.value).draw();
		});

		function get_note(id) {
			showLoader();
			$.ajax({
				url:'/action.php',
				type: 'POST',
				data: 'url=note_modal&open=OK&id='+id,
				dataType: 'html',
				success: function(data){
					closeLoader();
					showResult('_calendar_modal', data);
				}
			});
			return false;
		}

		function sendMail(id){
			confirm('Bạn có chắc muốn gửi mail xác nhận đơn hàng hay không', function() {
				if(this.data == true){
					showLoader()
					$.ajax({
						url:'/action.php',
						type: 'POST',
						data: 'url=sendmail_donhang&id='+id,
						dataType: "html",
						success: function(data){
							closeLoader()
							confirm(data, function() {
								if(this.data == true){
					                // window.location = "/?ol=document&op=document_list"
					            }
					        })
						}
					})  
				}
			})
		}

		function goKeToan() {

			showLoader();
			alert('Đã chuyển qua phòng kế toán xử lý');

			setTimeout('hiencuanhan()',1000); 

			closeLoader();

			goBack();

		}


		//Đổi trạng thái đơn hàng


		//Cho nhân viên thực hiện

		function giaonhanvien() {

			$("select.set1").change(function(e) {

				var nhanvien = $("select.set1").val();

				var tiude = $(this).parent().parent().parent().find('.codeorder').html();
			
				var han = 'Đơn hàng ' + tiude + ' : đã được chuyển cho nhan vien ' + nhanvien + ' cua phong ';

				$.ajax({

					url:'/action.php',

					type: 'POST',



					data: 'url=insert_message_notification&content='+han ,

					success: function(){

					showLoader();

						setTimeout(function(){

							alert('Đã giao việc thành công ' );

							closeLoader();

						}, 1000);

					}

				});

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


        // valfirst  =  $(".giaonv").val($(".giaonv option:first").val())

        // console.log(valfirst)

		function change_state(item,code,co) {

				var state = $(item).val();
				// var orderCode = $(item).parent().parent().parent().find('.codeorder').html();
				var newApartment = $(item).find('option:selected').text();	
				var nameApartment = newApartment.substr(4);	
				if(state != 12 && state != 13) {
			    confirm("Đơn hàng "+co+ " đã hoàn tất ở bộ phận <?=getStatusToAgency($status); ?>. Bạn có chắc muốn chuyển qua bộ phận "+nameApartment +" ?" ,function(){
					if(this.data === true)  {
					
					changeState(code, state,<?=$status; ?>);
				} else {
			          // $('.giaonv').msDropDown().setValueByIndex("selectedIndex", 0);
			           var oDropdown = $(".tech").msDropdown().data("dd");
                       oDropdown.set("selectedIndex", 0);

			         // $(".tech").prop("selectedIndex", 0);
			    }

			 });
				}
				else if(state == 12) {
					 confirm("Đơn hàng "+co+ " đã hoàn tất giao hàng.Bạn có chắc chắn không ?" ,function(){
					if(this.data === true)  {
					
					changeState(code, state,<?=$status; ?>);
				} else {
			          // $('.giaonv').msDropDown().setValueByIndex("selectedIndex", 0);
			           var oDropdown = $(".tech").msDropdown().data("dd");
                       oDropdown.set("selectedIndex", 0);

			         // $(".tech").prop("selectedIndex", 0);
			    }

			 });
				}
				else if(state == 13){
					 confirm("Đơn hàng "+co+ " bị tạm hoãn.Bạn có chắc chắn không ?" ,function(){
					if(this.data === true)  {
					
					changeState(code, state,<?=$status; ?>);
				} else {
			          // $('.giaonv').msDropDown().setValueByIndex("selectedIndex", 0);
			           var oDropdown = $(".tech").msDropdown().data("dd");
                       oDropdown.set("selectedIndex", 0);

			         // $(".tech").prop("selectedIndex", 0);
			    }

			 });
				}
			}


			function assign_employee(item, code, co) {

				var emp = $(item).val();
				// var orderCode = $(item).parent().parent().parent().find('.codeorder').html();
				var name = $(item).find('option:selected').text();
					
			    confirm("Đơn hàng "+co+" sẽ được chuyển cho nhân viên " +name+ ". Bạn có chắc chắn ?",function(){
					if(this.data === true)  {
					
					employeeAssign(code,emp,<?=$status;?>);
					
				    } else {
			         
					// window.location.reload();
			      }

				});

			}

		function deleteOrder(id){

		 confirm("Tất cả các dữ liệu liên quan sẽ được xóa và không thể phục hồi.\nBạn có muốn thực hiện không?", function() {

		    if(this.data === true){
		 
		      showLoader();
			            $.ajax({

						url:'/action.php',

						type: 'POST',

						data: 'url=delete_order&id='+id ,
						dataType: 'html',

						success: function(data){			
						
						 $('#bang'+id).remove()

						 closeLoader();

						}

					}); 

		           }

		        });        
		    }

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



