<?php 
	$ol = (isset($_GET['ol']) && $_GET['ol'] !== '')? $_GET['ol'] : 'document';

    $op = (isset($_GET['op']) && $_GET['op'] !== '')? $_GET['op'] : 'document_list_proposal';   

    

?>

<div class="row in-relative">
<div class="col-md-7 locdanhsach">		<div class="col-md-4">&nbsp;</div>		<!-- form tìm kiếm  -->				<!-- end form tìm kiếm -->				</div>

	<div class="col-lg-12  no-relative">
		<div class="panel panel-no-border">
			<div class="table-responsive">				
					<table class="table table-no-border table-ol-3w table-hover danhsachdonhangcanhan" id="dataTablesList">							<thead>
						
                        <tr class="panel-heading thantran" >
								<th><label class="form-lb-tp">STT</label></th>
								<th><label class="form-lb-tp">Vật liệu yêu cầu</label></th>
								<th width="200px;"><label class="form-lb-tp">Số lượng</label></th>
								<th ><label class="form-lb-tp">Ghi chú</label></th>
								<th><label class="form-lb-tp">Tình trạng</label></th>
								
					   </tr>
						</thead>
						<tbody class="taplet">
						<?php 
							$stt = 1;
							$list_items = array();
							$db->table = "proposal";
							$db->condition = "is_handled = 0";
							$db->order = "created_time DESC";
							$db->limit = "";
							$rows =$db->select();
							foreach($rows as $row) {
							$list_items = getInfoProposalItems($row['proposal_id']+0);
							$list_encode =json_encode($list_items);
						?>						
							<tr class="bangkhachhang">
								<td>
									
									<p class="hienhan">
										
	                                     <span><?=$stt++;?></span>									
									</p>
								</td>
								<td>
									<p class="bosungtiu">
										<?php
										foreach($list_items as $list_item) {
											echo '<span>'.$list_item["name"].'</span>';
										}										
										?>								
									</p>
								</td>
								<td>
									
									<p class="bosungtiu">
									   <?php
										foreach($list_items as $list_item) {
											echo '<span>'.$list_item["number"].' '. $list_item["unit"].'</span>';
										}										
										?>		
									</p>
								</td>
								<td>
									<span class="tghoanhthanh">
										<?=stripslashes($row['note']);?>
									</span>
								</td>
								<td>
								<script type="text/script">var x = <?=$list_encode; ?> </script>
								<select name="tech" class="tech form-control sectcustum1" id="tech<?=$stt++; ?>" style="padding-left: 20px;" onchange="return handleProposal(this, <?=stripslashes($row['proposal_id']);?>, x);">
								  <option value="0" selected="selected" data-image="<?= HOME_URL;?>/images/cam.png">Đang xử lý</option>
								  <option value="1" data-image="<?= HOME_URL;?>/images/hong.png">Đã mua nhập kho</option>								  
							    </select>
								</td>								
							</tr>
							<?php }
						?>
						</tbody>						
					</table>				
			</div>
			<!-- /.table-responsive -->
		</div>
	</div></div>
	<script>$(document).ready(function() {			table = $('#dataTablesList').dataTable( {				"language": {					"url": "/js/data-tables/de_DE.txt",					"decimal": ",",					"thousands": "."				},				"aoColumnDefs" : [ {					"bSortable" : false,					"aTargets" : [4, "no-sort" ]				} ],				"paging":   true,				"info":     true,				"order": [0, "desc" ],				"columns": [				null,				null,				null,				null,				{ "orderDataType": "dom-select" },				]			})		})
	function handleProposal(item,id, list) {
		var state = $(item).val();
		confirm(" Bạn có chắc chắn đề xuất đã được xử lý ?",function(){
		if(this.data === true)  {
		
		changeProposal(id, state, list);
	} else {
         
		
        window.location.reload();
    }

	});
	}
	
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
	</script>