<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

	$ol = (isset($_GET['ol']) && $_GET['ol'] !== '')? $_GET['ol'] : 'document';
    $op = (isset($_GET['op']) && $_GET['op'] !== '')? $_GET['op'] : 'document_finished';   
    $fun = isset($_GET['fun']) ? $_GET['fun'] : 'canhan';
// 
    // $nupage = isset($_GET['nupage']) ? $_GET['nupage'] : '5';

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

</div>
<div class="col-md-5">
<?php if(in_array(3, getRoleId($account['id'])) ) { ?><button class="btn btn-round color-1 material-design nuthemmuc" onclick="Forward('<?=HOME_URL;?>/?ol=document&op=document_add')" style="float: right;"  name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thêm đơn hàng mới"><i class="fa fa-plus" ></i> <span>Thêm đơn hàng</span></button>

<?php } ?>
	</div>
	<div class="col-lg-12 no-relative">
		<div class="panel panel-no-border">
		<div class="table-responsive">

				<!--<form action="<?php echo TTH_PATH_LK . $link_ol[1] . TTH_PATH_OP_LK . $link_op[1][1];?>" method="post" id="_ol_delete">-->
				<?php if($fun == "canhan"){ ?>
					 <table class="table table-no-border table-ol-3w table-hover danhsachdonhangcanhan" id="dataTablesList">
						<thead>

                        <tr class="panel-heading thantran" >

								<th><label class="form-lb-tp">Code</label></th>
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

						$agency = getHistoryColToRole($role);

						$db->table="exhibition_history";
						$db->condition =  $agency[1]."  = ". $account['id'];
						$db->order = "`created_time` DESC ";
						$db->limit = "";

						$rows = $db->select();

						if($db->RowCount > 0 ) {

							foreach($rows as $row) {
							$db->table="exhibition";

							$db->condition = " `status` = 12  AND `exhibition_id` = " . $row['id_exhibition'];

							$db->order = "`created_time` DESC ";

							$db->limit = "";

							$row2s = $db->select();

							if($db->RowCount > 0 ) {

								foreach($row2s as $row2) {

									$info_employee = getInfoUser($row['creator_id']+0);

									$info_customer = array();

									$info_customer = getInfoCustomer($row2['customer_id']+0);

									$info_product_items = array();

									$info_product_items = getInfoItems($row2['exhibition_id']+0);

						?>



							<tr class="bangkhachhang">



								<td>

									<input class="id" type="hidden" value= "<?=$row2['exhibition_id'];?>" />

									<span class="codeorder <?=($row2['urgent']+0 ==1)? 'hostcode': '';?>"> <?=stripslashes($row2['code']);?> </span>



									<p class="hienhan">



										<span>Hạn: <?= $date->vnDate($row2['date_end']);?></span>



	                                     <span><?=$info_employee[0];?></span>									



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

										<?=stripslashes($row2['comment']);?>

									</span>

								</td>

								<td style="position: relative;">

								<select name="tech" class="tech form-control sectcustum1 " <?php if(in_array("document;status", $corePrivilegeSlug['op'])) echo ''; else echo 'disabled="disabled"';?> id="tech<?=$stt++;?>" onchange="change_state(this,<?=$row2['exhibition_id'];?>);"style="padding-left: 20px;">

								  <option value="<?=$row2['status']+0; ?>" selected="selected" data-image="<?= HOME_URL;?>/images/<?=getStatusColor($row2['status']+0)?>.png"><?=getStatusName($row2['status']+0) ?></option>
                                                                 
                                 </select>							    

								</td>

								<td>



								<div class="imea">

								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">



								<select  class=" form-control sectcustum3 set1 <?php if(in_array("document;user", $corePrivilegeSlug['op'])) echo ''; else echo "ol-alert-core";?>">

								 

									<option value="<?=$account['id'];?>"><?= getNameUser($account['id']);?></option>

									

								</select>



								</div>



								<ul class="hienxuly">	



									<li class="dropdown">



											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">



												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>


											</a>



											<ul class="dropdown-menu extended logout nh_afterdrop">



												<li><a href="javascript:;"    data-placement="left" data-toggle="modal" data-target="#_calendar_modal" title="" onclick=" document_history(<?=$row2["exhibition_id"] ?>);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>

											

											</ul>



									</li>



								</ul>	



								</td>



							</tr>

							<?php }

							}

						} 

					}?>							



						</tbody>						



					</table>



				<?php } else if($fun=="tochuc") { ?>

					<table class="table table-no-border table-ol-3w table-hover danhsachdonhangcanhan" id="dataTablesList">



						<thead>


                                                    <tr class="panel-heading thantran" >



								<th><label class="form-lb-tp">Code</label></th>



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

					

						$status = getKeyStatus($role);

						$stats = getStatusToRole($status);

						$agency = getHistoryColToRole($role);

						$db->table="exhibition_history";

						$db->condition = $agency[1]."  <> ". $account['id'];

						$db->order = "`created_time` DESC ";

						$db->limit = "";

						$rows = $db->select();

						if($db->RowCount > 0 ) {

							foreach($rows as $row) {

							$db->table="exhibition";

							$db->condition = " `status` = 12 AND `exhibition_id` = " . $row['id_exhibition'];

							$db->order = "`created_time` DESC ";

							$db->limit = "";

							$row2s = $db->select();

							if($db->RowCount > 0 ) {

								foreach($row2s as $row2) {

									$info_employee = getInfoUser($row['creator_id']+0);

									$info_customer = array();

									$info_customer = getInfoCustomer($row2['customer_id']+0);

									$info_product_items = array();

									$info_product_items = getInfoItems($row2['exhibition_id']+0);

						?>



							<tr class="bangkhachhang">



								<td>

									<input class="id" type="hidden" value= "<?=$row2['exhibition_id'];?>" />

									<span class="codeorder <?=($row2['urgent']+0 ==1)? 'hostcode': '';?>"> <?=stripslashes($row2['code']);?> </span>



									<p class="hienhan">



										<span>Hạn: <?= $date->vnDate($row2['date_end']);?></span>



	                                                                       <span><?=$info_employee[0];?></span>									



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

										<?=stripslashes($row2['comment']);?>


									</span>

								</td>


								<td style="position: relative;">


								<select name="tech" class="tech form-control sectcustum1 " <?php if(in_array("document;status", $corePrivilegeSlug['op'])) echo ''; else echo 'disabled="disabled"';?> id="tech<?=$stt++;?>" onchange="change_state(this,<?=$row2['exhibition_id'];?>);"style="padding-left: 20px;">



								  <option value="<?=$row2['status']+0; ?>" selected="selected" data-image="<?= HOME_URL;?>/images/<?=getStatusColor($row2['status']+0)?>.png"><?=getStatusName($row2['status']+0) ?></option>



							         </select>

							    

								</td>



								<td>


									<div class="imea">



								<img src="<?= HOME_URL;?>/images/setinh.png" class="aoap">



								<select  class=" form-control sectcustum3 set1 <?php if(in_array("document;user", $corePrivilegeSlug['op'])) echo ''; else echo "ol-alert-core";?>">

								 

									<option value="<?=$row[$agency[1]];?>"><?= getNameUser($row[$agency[1]]+0);?></option>

									

								</select>



								</div>



								<ul class="hienxuly">	



									<li class="dropdown">



											<a data-toggle="dropdown" class="dropdown-toggle username" href="#">



												<i class="fa fa-pencil" data-toggle="tooltip" data-placement="left" title="" data-original-title="Công cụ" ></i>



												



											</a>



											<ul class="dropdown-menu extended logout nh_afterdrop">



												<li><a href="javascript:;"    data-placement="left" data-toggle="modal" data-target="#_calendar_modal" title="" onclick=" document_history(<?=$row2["exhibition_id"] ?>);" data-original-title="Lịch sử thực hiện" ><i class="fa fa-history"></i> Lịch sử </a></li>

											

											</ul>



									</li>



								</ul>	



								</td>



							</tr>

							<?php }

							}

						}

					}							?>

							



						</tbody>



					</table>



				<?php }  ?>

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



