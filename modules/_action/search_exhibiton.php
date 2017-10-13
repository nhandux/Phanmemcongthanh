<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if($account["id"]>0) {
	// -- Bảng phân quyền :)
	$corePrivilegeSlug  = array();
	$corePrivilegeSlug  = corePrivilegeSlug($account["id"]);
	$date               = new DateClass();	
	$status             = isset($_POST['status']) ? ($_POST['status']+0) : 0;
	$overdue 			= isset($_POST['overdue']) ? $_POST['overdue'] : "";
	$member             = isset($_POST['member']) ? ($_POST['member']+0) : 0;

	$custion            = isset($_POST['namecustom']) ? ($_POST['namecustom']) : "";
	$queryStatus = '';
	$queryMember = '';
	$queryCustom = '';
	$cusarray    = array();
	
	 if($custion != "")
    {
    	$db->table="customer";
			$db->condition = "company_name like '%".$custion."%' OR full_name like '%".$custion."%'";
			$db->order = "";
			$db->limit = "";
			$row2s = $db->select();
			if($row2s != []){
			foreach ($row2s as $row) {
				array_push($cusarray, $row['customer_id']+0);
			}
			    $cusarray = implode(',', $cusarray);

			    $queryCustom = " AND `customer_id` IN ($cusarray)";
			}
			else  $queryCustom = " AND `customer_id` IN ('')";
    }
    else{
    	$queryCustom = "";
    }

	if($overdue == 'ok') 
	$queryOverdue = " AND status < 12 AND date_end < ".time();
   else $queryOverdue ="";
	if($status != 0 )
	$queryStatus = " AND status = $status";
	if($member != 0 )
    $queryMember = " AND user_id = $member";
    
	?>
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
							$db->table="exhibition";
							$db->condition = "1 = 1 ". $queryStatus . $queryMember. $queryOverdue.$queryCustom;
							$db->order = "`created_time` DESC ";
							$db->limit = "";
							$row2s = $db->select();
							if($db->RowCount > 0 ) {
								foreach($row2s as $row2) {
                                                                        
									$info_employee =  getCreatorId($row2['exhibition_id']+0);

									$info_customer = array();
									$info_customer = getInfoCustomer($row2['customer_id']+0);

									$info_product_items = array();
									$info_product_items = getInfoItems($row2['exhibition_id']+0);

                                  if(getInfoUser($info_employee))
									$nv = getInfoUser($info_employee)[0];
								  else $nv = "";

						?>

						

										<tr class="bangkhachhang"  id="bang<?=  $row2['exhibition_id']  ?>" >
											<td>
											<input class="id" type="hidden" value= "<?=$row2['exhibition_id'];?>">
												<span class="codeorder hostcode">
													<?php 

													if($row2['urgent']+ 0  == 1)

														echo '<span class="cangap"></span>';

													else echo '';

													if($row2['pick_up']+ 0 == 1)

														echo '<span class="denlay"></span>';

													else echo '';
													?>

													<a href="javascript:;" <?php if((in_array("document;edit", $corePrivilegeSlug['op']))) echo 'data-toggle="modal" data-target="#_calendar_modal"  data-placement="left" title="" onclick="edit_document('.$row2["exhibition_id"].')" data-original-title="Chỉnh sửa" '; ?>><?=stripslashes($row2['code']);?> </a></span>

													<p class="hienhan">

														<span>Hạn: <?php if($row2['date_end'] == 0) echo "Không rỏ"; else  $date->vnDate($row2['date_end']); ?></span>

														<span><?= $nv ?></span>									

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
														if($row2['comment'] == "")
															echo "Chưa có ghi chú cho đơn hàng này";
														else echo stripslashes($row2['comment']);

														?>
													</span>
													<span data-toggle="tooltip" class = "hienpopup <?php if(in_array("document;note", $corePrivilegeSlug['op'])) echo ''; else echo "chanevent";?>" data-placement="right" title="" data-original-title="Xem ghi chú">
														<i class="fa fa-file-text-o" aria-hidden="true" data-toggle="modal" data-target="#_calendar_modal" onclick="return get_note(<?= $row2['exhibition_id'] ?>);"  title="In chú thích"></i></span>
													</td>
													<td style="position: relative;">



												<select name="tech" class="tech form-control sectcustum1 " <?php if(in_array("document;status", $corePrivilegeSlug['op'])) echo ''; else echo 'disabled="disabled"';?> id="tech<?=$stt++;?>" onchange="change_state(this,<?=$row2['exhibition_id'];?>);"style="padding-left: 20px;">

													<option value="<?=$row2['status']+0; ?>" selected="selected" data-image="<?= HOME_URL;?>/images/<?=getStatusColor($row2['status'])?>.png"><?=getStatusName($row2['status']+0) ?></option>
														 

												</select>
										
											<div style="height: 30px; width: 30px; position: absolute; top:50px; right: 0; border-radius: 15px;background-color:<?=($row2['debtor'] == 0)?'#007f3d':'#ff1200'?>; border: 1px solid #111;cursor: pointer; " class="theodoithanhtoan <?php if(in_array("document;trip", $corePrivilegeSlug['op'])) echo ''; else echo "chanevent";?>"  data-toggle="tooltip" data-placement="top" title="" data-original-title="Theo dõi thanh toán"  >
																<a  onclick="edit_payment(<?=$row2["exhibition_id"]?>)"  data-toggle="modal" data-target="#_calendar_modal" title="Theo dõi thanh toán" style="color: #fff; text-transform: none;text-align:center; position: absolute; top: 5px; left: 8px"><i class="fa fa-usd " style="font-size:20px" ></i></a>

											</div>
											
												</td>

												<td>

												<div class="imea">

								

												<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">

												<select  class=" form-control sectcustum3 set1 <?php if(in_array("document;user", $corePrivilegeSlug['op'])) echo ''; else echo "ol-alert-core";?>">

								 
													<option value="<?=$row2['user_id'];?>"><?=($row2['user_id']+0 > 0) ? getNameUser($row2['user_id']): '';?></option>
									
												</select>

												</div>

											<ul class="hienxuly">	

											<li class="dropdown">

											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">

												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>

												

											</a>

											<ul class="dropdown-menu extended logout nh_afterdrop">

											<?php if(in_array("document;email", $corePrivilegeSlug['op'])) echo '<li><a href="javascript:;" onclick="sendMail('.$row2["customer_id"].')"><i class="fa fa-envelope-o"></i>Mail xác nhận</a></li>';?>

											<li><a href="/?ol=document&op=document_view&id=<?= $row2["exhibition_id"] ?>"  data-toggle="tooltip" data-placement="left" title="" data-original-title="In và lưu ảnh" ><i class="fa fa-file-text-o"></i> Xem chi tiết</a></li>

											<?php if(in_array("document;edit", $corePrivilegeSlug['op'])) echo '<li><a href="javascript:;" style="position: relative; padding-left: 25px" data-toggle="modal" data-target="#_calendar_modal"  data-placement="left" title="" onclick="edit_document('.$row2["exhibition_id"].')" data-original-title="Chỉnh sửa"><span style="top: 8px; left: 11px" data-toggle="tooltip" class = "hienpopup" data-placement="left" title="" data-original-title="Chỉnh sửa đơn hàng"><i class="fa fa-paint-brush"></i></span>Chỉnh sửa</a></li>';?>

											<li class="divider"></li>
											 <?php if(in_array("document;history", $corePrivilegeSlug['op'])) echo '<li><a href="javascript:;"    data-toggle="modal" data-target="#_calendar_modal"  data-placement="left" title="" onclick="document_history('.$row2["exhibition_id"].')" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>'; ?> 

											<?php if(in_array("document;delete", $corePrivilegeSlug['op']))  echo '<li><a href="javascript:;" onclick= "deleteOrder('.$row2["exhibition_id"].');" class="xoahangngang"  data-toggle="tooltip" data-placement="left" title="" data-original-title="Xóa đơn hàng" ><i class="fa fa-trash-o"></i> Xóa </a></li>';?>										
										       </ul>

											</li>

											</ul>	

											</td>
										</tr>

									<?php }

						 } ?>
										</tbody>

										</table>
	
	<script>
			
		function valselect(id){
                      $.ajax({
				    url:'/action.php',
				    type: 'POST',
				    data: 'url=getusername2&value='+id,
				    success: function(data){
				    	
				    	$('.getusername').html(data)
				    	var setval1 = $(".tech2").msDropdown().data("dd")
				            setval1.refresh()
				       }
				    })
				}

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
					
			    confirm("Đơn hàng "+co+ " đã hoàn tất ở bộ phận <?=getStatusToAgency($status); ?>. Bạn có chắc muốn chuyển qua bộ phận khác ?",function(){
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
<?php
}