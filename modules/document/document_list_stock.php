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


		$op = (isset($_GET['op']) && $_GET['op'] !== '')? $_GET['op'] : 'document_list_stock';


		

	
		?>

	</div>

	<div class="col-md-5">			

	</div>

		<div class="col-lg-12 no-relative" >

			<div class="panel panel-no-border">

				<div class="table-responsive">
				

						

						<table class="table table-no-border table-ol-3w table-hover danhsachdonhangcanhan" id="dataTablesList">

							<thead>

							<tr class="panel-heading thantran">



									<th width="50px"><label class="form-lb-tp">STT</label></th>



									<th width="180px"><label class="form-lb-tp">Đơn hàng</label></th>



									<th width="150px"><label class="form-lb-tp">Khách hàng</label></th>



									<th><label class="form-lb-tp">Hàng tồn</label></th>



									<th><label class="form-lb-tp">Số lượng</label></th>


									
									<th><label class="form-lb-tp">Hình ảnh</label></th>

								</tr>



							</thead>

 
							<tbody class="taplet" id="sortable">

								<?php						
						$db->table = "exhibition";
						$db->condition = "";
						$db->order = "`created_time` DESC ";
						$db->limit = "";
						$rows = $db->select();
						if($db->RowCount > 0) {
							foreach($rows as $row) {
							$db->table="itemproduct";
							$db->condition = " stock_count > 0 AND exhibition_id = ". $row['exhibition_id'];
							$db->order = "`itemproduct_id` ASC ";
							$db->limit = "";
							$row2s = $db->select();
							if($db->RowCount > 0) {
								
								$info_customer = array();
								$info_customer = getInfoCustomer($row['customer_id']+0);
								 $info_U = getCreatorId($row['exhibition_id']);
								$info_user = getInfoUser($info_U);
								?>
								<tr class="bangkhachhang"  id="bang<?=  $row['exhibition_id']  ?>" >
											<td>
												<span>
												<?=$stt++;?>
												</span>
											</td>
											<td>
											<input class="id" type="hidden" value= "<?=$row['exhibition_id'];?>">
												<span class="codeorder hostcode">													

													<a href="javascript:;" <?php if((in_array("document;edit", $corePrivilegeSlug['op']))) echo 'data-toggle="modal" data-target="#_calendar_modal"  data-placement="left" title="" onclick="edit_document('.$row["exhibition_id"].')" data-original-title="Chỉnh sửa" '; ?>><?=stripslashes($row['code']);?> </a>
												
												</span>

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

														foreach($row2s as $row2) {

															echo '<span>'.stripslashes($row2['product_name']).'</span>';
															

														}
														?>
													</p>
												</td>
																									

												<td>
													<p class="text-center">
														<?php

														foreach($row2s as $row2) {

															echo '<span>'.stripslashes($row2['stock_count']).'</span><br />';
															

														}
														?>
													</p>	
												</td>
												
												<td>
													<span class="tghoanhthanh">

														<?php
														foreach($row2s as $row2) {

															if($row2['img'] !="") {
																echo '<a class="hover-image" href="javascript:{0}" style="position: relative;" data-toggle="modal" data-target="#_calendar_modal"  data-placement="left"  onmouseover="show_thumbnail('.$row2['itemproduct_id'].')"  onmouseout="hide_thumbnail('.$row2['itemproduct_id'].')" onclick="item_image_open('.$row2["itemproduct_id"].',\''.stripslashes($row["code"]).'\')" data-original-title="Hình ảnh sản phẩm">Hình ảnh sản phẩm</a><br>';
																echo '<div class="photo-hidden" id="photo'.$row2['itemproduct_id'].'"><div class="img"><img src="/uploads/order_items/thumb_'.$row2['img'].'" alt="'.$row2['product_name'].'" title="'.$row2['product_name'].'" /></div></div>';
															}
															else {
																echo '<a href="javascript:{0}" >Chưa có hình ảnh cho đơn hàng</a><br>';
															}
														}
														?>
													</span>
													
												</td>
							</tr>
								
						<?php	}
							
						}
					}
						?>
								</tbody>
							</table>
						</div>

						<!-- /.table-responsive -->
					</div>

					<!-- /.panel -->
				</div>
				<!-- /.col-lg-6 -->
			</div>

		<script>
			

		$(function() {
		    $( "#sortable" ).sortable();
		    $( "#sortable" ).disableSelection();
		    });

		$('#myInput').on('keyup', function () {
			var table = $('#dataTablesList').DataTable();
			table.search(this.value).draw();
		});
		function show_thumbnail(id) {
			
        $('#photo'+id).show();      
    
		}
		function hide_thumbnail(id) {
			
        $('#photo'+id).hide();      
    
		}
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
					"aTargets" : [5, "no-sort" ]
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



