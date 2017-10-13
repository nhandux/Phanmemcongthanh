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

			<li> Điện thoại:  (0236) 3889 666 - (0236) 3680 777 Mobile: 0905 034 034 - 0913 404 414 </li>

			<li> Email: incongthanhdanang@gmail.com </li>

			</ul>
			</div>
			</div>
			<div style="text-align: center;width: 100%;padding-top: 15px;" class="titlenamein">
			<span class="namehoadon">LỊCH SỬ ĐƠN HÀNG</span><br>
			<span style="color: #007f3d;font-size:16px;" >Số : <?=stripslashes($row['exhibition_id']); ?> - <?=stripslashes($row['code']); ?> </span><br/>
			<span style="color: #007f3d;font-size:16px;"><?=$date->vnDate(time()); ?></span>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			
			
		
			<?php 
		    }
				?>
		
						
			<div class="modal-body colorbold">
			<div class="row">
				<table class="table table-no-border table-ol-3w table-hover danhsachdonhangcanhan banglichsu" style="border-bottom: none;">
					<thead>					
					<tr class="panel-heading thantran custummodel " >							
							<th width="300px"><label class="form-lb-tp">Bộ phận</label></th>
							<th width="500px"><label class="form-lb-tp">Nhân viên thực hiện</label></th>
							<th width="300px"><label class="form-lb-tp">Ngày hoàn thành</label></th>							
				   </tr>
					</thead>
					<?php   $db->table = "exhibition_history";
							$db->condition = "exhibition_id = " . $id;
							$db->limit = 1;
							$row4s = $db->select();
					if($row4s == "" || $row4s == [])
					{
                       ?>
                       <tbody class="taplet panel-body">
						<tr class="bangkhachhang">
							<td colspan="3" style="padding: 15px 0px;text-align: center;">
							Chưa có dữ liệu lịch sử vui lòng quay lại sau
							</td>
						</tr>
						</tbody>	
                       <?php
                    }else{
					
					foreach($row4s as $row4) {
					
				    ?>
					<tbody class="taplet panel-body">
						<tr class="bangkhachhang">
							<td>
								
								<p class="hienhan">
									
									 <span>Kinh doanh</span>									
								</p>
							</td>
							<td>
								<p class="bosungtiu">
									<span><?=($row4['sales_id']+0 != 0)?getInfoUser($row4['sales_id'])[0]:''; ?></span>	                                    									
								</p>
							</td>
							<td>
								
								<p class="bosungtiu">
								   
									<span><?=($row4['sales_date_end']+0 != 0)?$date->vnDate($row4['sales_date_end']):'';?></span>
															
								</p>
							</td>					
							
						</tr>
						<tr class="bangkhachhang">
							<td>
								
								<p class="hienhan">
									
									 <span>Thiết kế</span>									
								</p>
							</td>
							<td>
								<p class="bosungtiu">
									<span><?=($row4['design_id']+0 != 0)?getInfoUser($row4['design_id'])[0]:''; ?></span>	                                    									
								</p>
							</td>
							<td>
								
								<p class="bosungtiu">
								   
									<span><?=($row4['design_date_end']+0 != 0)?$date->vnDate($row4['design_date_end']):'';?></span>
															
								</p>
							</td>			
							
						</tr>
						<tr class="bangkhachhang">
							<td>
								
								<p class="hienhan">
									
									 <span>Xuất kẽm</span>									
								</p>
							</td>
							<td>
								<p class="bosungtiu">
									<span><?=($row4['offset_id']+0 != 0)?getInfoUser($row4['offset_id'])[0]:''; ?></span>	                                    									
								</p>
							</td>
							<td>
								
								<p class="bosungtiu">
								   
									<span><?=($row4['offset_date_end']+0 != 0)?$date->vnDate($row4['offset_date_end']):'';?></span>
															
								</p>
							</td>				
							
						</tr>
						<tr class="bangkhachhang">
							<td>
								
								<p class="hienhan">
									
									 <span>In</span>									
								</p>
							</td>
							<td>
								<p class="bosungtiu">
									<span><?=($row4['printing_id']+0 != 0)?getInfoUser($row4['printing_id'])[0]:''; ?></span>	                                    									
								</p>
							</td>
							<td>
								
								<p class="bosungtiu">
								   
									<span><?=($row4['printing_date_end']+0 != 0)?$date->vnDate($row4['printing_date_end']):'';?></span>
															
								</p>
							</td>					
							
						</tr>
						<tr class="bangkhachhang">
							<td>
								
								<p class="hienhan">
									
									 <span>Đóng gói</span>									
								</p>
							</td>
							<td>
								<p class="bosungtiu">
									<span><?=($row4['packaging_id']+0 != 0)?getInfoUser($row4['packaging_id'])[0]:''; ?></span>	                                    									
								</p>
							</td>
							<td>
								
								<p class="bosungtiu">
								   
									<span><?=($row4['packaging_date_end']+0 != 0)?$date->vnDate($row4['packaging_date_end']):'';?></span>
															
								</p>
							</td>				
							
						</tr>
						<tr class="bangkhachhang">
							<td>
								
								<p class="hienhan">
									
									 <span>Giao hàng</span>									
								</p>
							</td>
							<td>
								<p class="bosungtiu">
									<span><?=($row4['delivery_id']+0 != 0)?getInfoUser($row4['delivery_id'])[0]:''; ?></span>	                                    									
								</p>
							</td>
							<td>
								
								<p class="bosungtiu">
								   
									<span><?=($row4['delivery_date_end']+0 != 0)?$date->vnDate($row4['delivery_date_end']):'';?></span>
															
								</p>
							</td>				
							
						</tr>
					</tbody>
					<?php }
					} ?>								
				</table>
			</div>
			</div>
	
			<div class="modal-footer">
			<div class="row">
			<button class="btn btn-round color-1 material-design nuthemmuc nutquaylai" type="button" onclick="goBack()"  name="login_admin" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Quay lại đơn hàng ">
			<i class="fa fa-reply-all" ></i>
			<span>Quay lại</span>
			</button>			
			</div>
			</div>
				
			
			</div>		
			
			</div>
	<?php }
}	?>