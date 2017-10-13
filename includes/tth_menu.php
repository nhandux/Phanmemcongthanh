<?php

if (!defined('TTH_SYSTEM')) { die('Please stop!'); }



// Dữ liệu menu

// global $tth;



$menu_ol[0]     = "Trang chủ";                      $link_ol[0]     = "home";                           $icon_ol[0] = "fa fa-home";


$menu_ol[1]     = "Quản lý đơn hàng";  


$menu_ol[6]     = "Thống kê";                       $link_ol[1]     = "document";                      $icon_ol[6] = "fa fa-bar-chart-o";
$menu_op[6][0]  = "Đơn hàng";                       $link_op[1][0]  = "document_add";
$menu_op[6][1]  = "Công việc";
$menu_op[6][2]  = "Biểu đồ";               		if(!in_array(9,$roles))$link_op[1][1]  = "document_list"; else $link_op[1][1]  = "document_list_accountant";

													 $link_op[1][2]  = "document_finished";
 $link_ol[6] 	= "statistic";												 $link_op[1][3]  = "document_proposal";
$link_op[6][0]	= "statistic_exhibition";												 $link_op[1][4]  = "document_proposal_list";
$link_op[6][1]	= "statistic_jobs";	
 
$link_op[6][2]	= "statistic_chart";											$link_op[1][5] = "document_list_move";
																				$link_op[1][6] = "document_list_stock";
																				$link_op[1][7] = "document_delayed";
$menu_ol[2]     = "Quản lý chung";                  $link_ol[2]     = "general";                        $icon_ol[2] = "fa fa-folder-open";

$menu_op[2][0]  = "Sản phẩm";                       $link_op[2][0]  = "general_level";

$menu_op[2][1]  = "Khách hàng";                     $link_op[2][1]  = "general_warning";

// $menu_op[2][2]  = "Thang điểm thưởng/phạt";         $link_op[2][2]  = "general_matches";

// $menu_op[2][3]  = "Tên công việc";                  $link_op[2][3]  = "general_jobs_name";

// $menu_op[2][4]  = "Địa điểm làm việc";              $link_op[2][4]  = "general_jobs_address";

// $menu_op[2][5]  = "Loại văn bản";                   $link_op[2][5]  = "general_document_type";



$menu_ol[3]     = "Quản trị hệ thống";              $link_ol[3]     = "core";                           $icon_ol[3] = "fa fa-dashboard";

$menu_op[3][0]  = "Người dùng nhân viên";           $link_op[3][0]  = "core_user";

$menu_op[3][1]  = "Nhóm nhân viên";                 $link_op[3][1]  = "core_role";



$menu_ol[4]     = "Cấu hình";                       $link_ol[4]     = "config";                         $icon_ol[4] = "fa fa-gears";

$menu_op[4][0]  = "Thông tin chung";                $link_op[4][0]  = "config_general";

$menu_op[4][1]  = "Thời gian";                      $link_op[4][1]  = "config_datetime";

$menu_op[4][2]  = "Thư điện tử";                    $link_op[4][2]  = "config_mail";

$menu_op[4][3]  = "Trình cắm bổ sung";              $link_op[4][3]  = "config_plugins";

$menu_op[4][4]  = "Mạng xã hội";                    $link_op[4][4]  = "config_social_network";

$menu_op[4][5]  = "Tệp tin tải lên";                $link_op[4][5]  = "config_upload";

$menu_op[4][6]  = "Phần bổ sung";                   $link_op[4][6]  = "plugin_page";



$menu_ol[5]     = "Dữ liệu";                        $link_ol[5]     = "backup";                          $icon_ol[5] = "fa fa-database";

$menu_op[5][0]  = "Tiến trình sao lưu";             $link_op[5][0]  = "backup_process";

$menu_op[5][1]  = "Cấu hình sao lưu";               $link_op[5][1]  = "backup_config";



?>

<aside>

	<div id="sidebar" class="nav-collapse <?php echo $hide_left_bar;?>">

		<!-- sidebar menu start-->

		<div class="leftside-navigation">

			<ul class="sidebar-menu menunhan" id="nav-accordion">


			  <?php if(isset($_GET['op'])) $getk = $_GET['op']; else $getk = ""; 

			  if(($role == 3) || ($role == 1) )

			  {

			  	?>

			  <li><a class="<?php if($getk == "" || $getk == "document_add")   echo 'active'; ?>" href="?ol=document&op=document_add"><img src="images/lich.png"> <span>Thêm đơn hàng</span><span class="dcjq-icon"></span></a></li>

               <?php } if(($role != 3) && ($role != 1)) { ?>

			 <li> <a class="<?php if((($role != 3 && $role != 1) && $getk == '') || ($role != 9  && $getk == 'document_list' )||($role ==9 && $getk == 'document_list_accountant') ) echo 'active'; ?>" href="?ol=document&op=document_list<?=in_array(9, $roles)? '_accountant' : '';?>"><img src="images/teptext.png"> <span><?if($role == 1 || $role == 3) echo 'Đơn hàng đang thực hiện'; else if($role == 9) echo 'Theo dõi công nợ'; else echo 'Đơn hàng mới nhận';?></span><span class="dcjq-icon"></span></a></li>
			 
			   <?php }
			 if($role == 3) {
			?>
			
			
				<li><a class="<?=(($getk == "document_list")?'active': '')?>" href="?ol=document&op=document_list"><i class="fa fa-lightbulb-o"></i><span>Đơn hàng đang xử lý</a></li>			
				
				<li><a class="<?=(($getk == "document_list_move")?'active': '')?>" href="?ol=document&op=document_list_move"><i class="fa fa-gg"></i><span>Đơn hàng đã chuyển</a></li>			
				
				<li><a class="<?=(($getk == "document_delayed")?'active': '')?>" href="?ol=document&op=document_delayed"><i class="fa fa-retweet"></i><span>Đơn hàng tạm hoãn</a></li>			
				
			 <?php
			 }
			 
			  if($role == 7 || $role == 3) {
			?>
			
			
				<li><a class="<?=(($getk == "document_list_stock")?'active': '')?>" href="?ol=document&op=document_list_stock"><i class="fa fa-sort-amount-asc"></i><span>Hàng tồn kho</a></li>			
				
				
				
			 <?php
			 }
			 ?>
			

			

			 <li> <a class="<?php if(($role != 9 && $getk == 'document_finished' )|| ($role == 9 && $getk == 'document_finished_accountant' ) ) echo 'active'; ?>" href="?ol=document&op=document_finished<?=in_array(9, $roles)? '_accountant' : '';?>"><img src="images/tich.png"> <span><?=($role== 9)?'Đơn hàng đã thanh toán':'Đơn hàng đã hoàn thành' ?></span><span class="dcjq-icon"></span></a></li>

	          <?php if($role == 5 ){

	          	?>

			 <li> <a class="<?php if($getk == 'document_proposal') echo 'active'; ?>" href="?ol=document&op=document_proposal"><img src="images/tich.png"> <span>Đề xuất</span><span class="dcjq-icon"></span></a></li>

	          	<?php 

	           }

			   if($role == 9 ){

	          	?>

			 <li> <a class="<?php if($getk == 'document_proposal_list') echo 'active'; ?>" href="?ol=document&op=document_proposal_list"><img src="images/tich.png"> <span>Đề xuất</span><span class="dcjq-icon"></span></a></li>

	          	<?php 

	           }

	          ?>

				<?php



				for ($i = 2; $i < count($menu_ol); $i++) {

					if(!empty($menu_op[$i])) {



						if(in_array($link_ol[$i], $corePrivilegeSlug['ol'])) {

						

							echo '<li class="sub-menu">';

							if ($tth[TTH_PATH] == $link_ol[$i])

								echo '<a class="active" href="javascript:;"><i class="' . $icon_ol[$i] . '"></i><span>' . $menu_ol[$i] . '</span></a>';

							else

								echo '<a href="javascript:;"><i class="' . $icon_ol[$i] . '"></i><span>' . $menu_ol[$i] . '</span></a>';

							echo '<ul class="sub">';

							for ($j = 0; $j < count($menu_op[$i]); $j++) {

								if ($tth[TTH_PATH_OP] == $link_op[$i][$j])

									echo '<li class="active"><a href="' . TTH_PATH_LK . $link_ol[$i] . TTH_PATH_OP_LK . $link_op[$i][$j] . '"><i class="fa fa-angle-double-right"></i><span>' . $menu_op[$i][$j] . '</a></li>';

								else

									echo '<li><a href="' . TTH_PATH_LK . $link_ol[$i] . TTH_PATH_OP_LK . $link_op[$i][$j] . '">

								         <i class="fa fa-angle-double-right"></i><span>' . $menu_op[$i][$j] . '</a></li>';



							}

							echo '</ul>';

							echo "</li>";

						}

					} else {

						if(in_array($link_ol[$i], $corePrivilegeSlug['ol'])) {

							echo '<li>';

							if ($tth[TTH_PATH] == $link_ol[$i])

								echo '<a class="active" href="' . TTH_PATH_LK . $link_ol[$i] . '"><i class="' . $icon_ol[$i] . '"></i><span>' . $menu_ol[$i] . '</span></a>';

							else

								echo '<a href="' . TTH_PATH_LK . $link_ol[$i] . '"><i class="' . $icon_ol[$i] . '"></i><span>' . $menu_ol[$i] . '</span></a>';

							echo "</li>";

						}

					}

				}



				?>

			</ul>

			<img src="<?= HOME_URL;?>/images/bonghoaleft.png" class="footerhinh">

		</div>

		<!-- sidebar menu end-->

	</div>

</aside>