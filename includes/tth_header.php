<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
?>

<header class="header fixed-top clearfix">
	<!--logo start-->
	<div class="brand topheader" >
		<a href="<?php echo HOME_URL_LANG;?>" class="logo logo-sm">
			<img src="<?php echo HOME_URL.getConstant('file_logo');?>" alt="<?php echo getConstant('title');?>">
		</a>
		<div class="sidebar-toggle-box">
			<div class="fa fa-bars" id="tichnut">
				<i class="fa fa-caret-left faleft" aria-hidden="true"></i>
				<i class="fa fa-caret-down fadown" aria-hidden="true"></i>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	
	function nhandu() {

		      if($('.nav-collapse').hasClass('hide-left-bar'))
				{
                   $('.faleft').css('display','none')
                   $('.fadown').css('display','block')
                   $('#sidebar').css('background','#fff')
				}
				else{
                   $('.faleft').css('display','block')
                   $('.fadown').css('display','none')
                   $('#sidebar').css('background','none')
				}
	        }
		$(document).ready(function() {
			 nhandu()
			$('#tichnut').click(function(event) {
				/* Act on the event */
                nhandu()
			});
		});

	</script>
	<!--logo end-->
	<div class="nav info-row">
	
     <form class="searchform">
     	<button type="submit"><i class="fa fa-search"></i></button><input type="text" name="keyword" placeholder="Tìm kiếm">
     </form>

	</div>
  
	<div class="top-nav clearfix">
	
	<div class="settitle">
    <?php 
	$temp_role =  getCurrentAgency($account['id']+0);
	 if($temp_role > 0) $roles[] =$temp_role;
	 else $roles[] = $agency_roles[0];
	 
	if (($key = array_search(2, $roles)) === 0) {
		$role = $roles[1];
	} 
	else 
	$role = $roles[0];
	echo '<span class="andi">';
	echo '<select name="tech" class="tech form-control sectcustum1 " id="tech00000" '. ((count($agency_roles) > 1)? (' onchange="pick_agency(this, '.$account["id"].');" ') : ('disabled')). '>';
	foreach($agency_roles as $agency_role) {
		echo '<option value="'.$agency_role. '" '. (($agency_role == $temp_role )? 'selected': '').'>'.getRoleName($agency_role).'</option>';
	}
	echo '</select>';
	echo ' </span>';
	// Title on header
	echo '<span class="spantrencung">';
      $op = isset($_GET['op']) ? $_GET['op'] : '';
     if(($op == "" || $op == "document_add")  && ($role == 3 || $role == 1))
     	echo ' - Thêm mới đơn hàng';
     else { if($op == "document_list" && ($role == 3 || $role == 1))
     	echo ' - Tình trạng đơn hàng';
			else if(($op == "document_list" || $op == "") && ($role!= 3 || $role!=1))
				echo ' - Đơn hàng mới';
		    else if ($op == "document_finished" )
				echo ' - Đơn hàng đã hoàn thành';
			else if ($op == "document_proposal" || $op == "list_proposal")
				echo ' - Đề xuất'; 
			else if ($op == "document_list_accountant" )	
				echo ' - Theo dõi công nợ';											
			else if ($op == "document_finished_accountant" )	
				echo ' - Đơn hàng đã thanh toán';
			else if ($op == "document_design" )	
				echo ' - Xác nhận đơn hàng';
			else if ($op == "document_view" )	
				echo ' - Chi tiết đơn hàng';
			else if ($op == "document_list_move")
				echo ' - Đơn hàng đang theo dõi';
			else if ($op == "statistic_exhibition")
				echo ' - Thống kê đơn hàng';
			else if ($op == "statistic_jobs")
				echo ' - Thống kê công việc';
			else if ($op == "document_proposal_list")
				echo ' - Xử lý đề xuất';
			else if ($op == "document_delayed")
				echo ' - Đơn hàng tạm hoãn';
			else if ($op == "document_list_stock")
				echo ' - Hàng tồn kho';
	 }
    ?>

    </span></div>
		<!--clock & user info start-->
		<ul class="nav pull-right top-menu">
			<li class="clock">
				<div class="clockcenter">
					
					<digidate style="white-space: nowrap;">Thứ 2, 01/01/2014</digidate><br/>
					<digiclock>12:45:25</digiclock>
				</div>
			</li>
			<li>
				<div class="nav notify-row" id="top_menu">
		<!--  notification start -->
		<ul class="nav pull-right top-menu">
			<!-- inbox dropdown start-->
			<li id="header_inbox_bar" class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;"><i class="fa fa-bell"></i></a>
				<div class="dropdown-menu extended inbox">
					<ul class="list-notify"><li>&nbsp;</li></ul>
				</div>
			</li>
			<!-- inbox dropdown end -->
		</ul>
		<!--  notification end -->
	</div>
			</li>
			<!-- user login dropdown start-->
			<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle username" href="#">
					<?php
					$info_user = array();
					$info_user = getInfoUser($account["id"]);
					echo $info_user[4] . '&nbsp <span>' . $info_user[0] . '</span>';
					?>
					<b class="caret"></b>
				</a>
				<ul class="dropdown-menu extended logout">					
					<li><a href="javascript:_postback();" onclick="Forward('?ol=user&op=user_profile&active=profile');"><i class="fa fa-user"></i>Thông tin cá nhân</a></li>
					<li><a href="javascript:_postback();" onclick="Forward('?ol=user&op=user_profile&active=password');"><i class="fa fa-key"></i>Đổi mật khẩu</a></li>
					<li class="divider"></li>
					<li><a href="javascript:_postback();" onclick="Forward('?ol=page&op=view&active=regulation');"><i class=" fa fa-book"></i>Quy định chung</a></li>
					<li><a href="javascript:_postback();" onclick="Forward('?ol=page&op=view&active=tutorial');"><i class="fa fa-question-circle"></i>Hướng dẫn sử dụng</a></li>
					<li class="divider"></li>
					<?php
					if($account["id"]==1) echo '<li><a href="javascript:_postback();" onclick="Forward(\'?ol=page&op=hosting_domain\');"><i class=" fa fa-server"></i>Hosting & Domain</a></li>';
					?>
					<li><a href="javascript:_postback();" onclick="Forward('?lock=OK');"><i class="fa fa-lock"></i> Khóa màn hình</a></li>
					<li><a href="javascript:_postback();" onclick="Forward('?logout=OK');"><i class="fa fa-sign-out"></i> Đăng xuất</a></li>
				</ul>
			</li>
			<!-- user login dropdown end -->
		</ul>
		<!--clock & user info end-->
	</div>
	<script type="text/javascript">
	var previousApartment = $('#tech0').val();
	 var nameApartment = $('#tech0 option:selected').text();	
	$(document).ready(function() {
	 
	
	 //Beautify js
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
	
	});
	function pick_agency(item,id) {		
		
		var val = $(item).val();
		var newname =  $('#tech0 option:selected').text();
		
		confirm("Bạn đang hoạt động ở bộ phận " + nameApartment +" . Bạn muốn chuyển sang bộ phận " + newname + " ?",function(){
		if(this.data === true)  {
		
		changeAgency(id,val);
	} else {        
		
      window.location.reload();
    }

	}); 
}
	</script>
</header>