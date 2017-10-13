<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }

    $date = new DateClass();
	$stringObj = new String();

	$id = $_POST['id'];
  
	$db->table = "commentex";
	$db->condition = "exhibition_id = '".$id."'";
	$db->order = "comment_id DESC";
	$db->limit = "";
	$rows = $db->select();
    $v = 0;
    foreach ($rows as $row) {
    	if($row['content'] == "")
    		$v = 0;
    	else
    	   $v = $v + 1; 		      
    }
    if($v == 0)
    	$sl = $db->RowCount - 1;
    else 
    	$sl = $db->RowCount;
    
    $db->table = "exhibition";
	$db->condition = "exhibition_id = '".$id."'";
	$db->order = "";
	$db->limit = 1;

	 $rows1 = $db->select();
    $name = $rows1[0]['code'];  
		
?>
	<div class="modal-dialog">
		<form id="_form_calendar" method="post" onsubmit="return add_calendar('_form_calendar', 'calendar_add');" enctype="multipart/form-data">
			<div class="modal-content">
				<div class="modal-header personal">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel"><i class="fa fa-file-text-o"></i> &nbsp;Ghi chú danh sách</h4>
				</div>
				<div class="modal-body">
					<div class="form-responsive">
						<table class="table table-no-border table-ol-3w table-hover tabnhan notenhan" style="max-width: 500px;">
						<tr><td colspan="2" style="padding:5px;">
							<span class="hienthi">Tổng số :</span>  <span class="soluongtinnhan" > <?= $sl ?> </span> ghi chú cho đơn hàng <span style="color:#903030;font-weight: 600;"><?= $name; ?></span>
						</td></tr>
						<tr>
							<td colspan="2">
								<div class="contentnote">
								<?php foreach ($rows as $row) { 
                                 
                                 if($row['content'] == "")
                                 	echo "<span class='ankhisukien'>&nbsp;</span>";
                                 else{
								?>
									<span class="kytuad"><?php
									   $info_user = array();

									   $info_user = getInfoUser($_SESSION["user_id"]);

									   $name =  $info_user[0];
									   echo $name;
                                         
									?> : </span><?= $row['content'] ?> <small><i class="fa fa-clock-o"></i> <?= date('d/m/Y',$row['created_time']) ?></small>.<br/>
							    <?php }
							    } ?>
								</div>
							</td>
						</tr>
						<tr>
								<td width="100px"><label class="form-lb-tp">Thêm ghi chú:</label></td>
								<td>
                                <input type="hidden" value="<?= $id ?>" class="idgt">

                                <input type="hidden" value="<?= $sl ?>" class="soluong">

                                <input type="hidden" value="<?= $name ?>" class="fullname">
								<textarea class="form-control" type="text" name="title" id="noidungtinnhan" maxlength="250"  required="required" autocomplete="off" rows="4" style="border-radius: 0px"></textarea></td>
						</tr>
						<tr>
							
						</tr>
							
						</table>
					</div>
				</div>
				<div class="modal-footer">
				<button class="btn btn-round color-1 material-design   btn-nhan" id="guichuthich" type="button" name="login_admin" data-color="#004740"><i class="fa fa-send" ></i> <span>Gửi</span></button>
				</div>
			</div>
		</form>

		<script>

		function scrolltop(){

			var wtf = $('.contentnote');
		    var height = wtf[0].scrollHeight;
		    wtf.scrollTop(height);
		}
		scrolltop()
		sl = $('.soluong').val()
		fullname = $('.fullname').val()
        $('#guichuthich').click(function(event) {
        	
        	id= $('.idgt').val()

         	/* Act on the event */
         	han = $('#noidungtinnhan').val();
             if(han !=""){
             	$('.ankhisukien').remove()
             	sl = Number(sl) + 1
             	  $.ajax({
			        url:'/action.php',
			        type: 'POST',
			        data: 'url=note_add&id='+id+'&value='+han,
			        dataType: 'html',
			        success: function(data){
			           $('.contentnote').append('<span class="kytuad">'+fullname+' : </span> '+han+' <small><i class="fa fa-clock-o"></i> </small> '+data+'<br/>')
         	           scrolltop()
         	           $('.soluongtinnhan').text(sl)
			        }
			    });
            

            $('.soluongtinnhan').text(sl)

            $('#noidungtinnhan').val("")
          
            }else{

            }
            $('#noidungtinnhan').focus()

        });

		
		</script>
	</div>
