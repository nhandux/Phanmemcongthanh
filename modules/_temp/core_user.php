<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
function memberUser($act, $typeFunc, $user_id, array $role_id, $user_name, $full_name, $gender, $birthday, $identity_card, $date_of_issue, $apply, $email, $phone, $address, $city, $comment, $is_show, $img, $is_active, $vote, $error) {
	global  $link_ol,  $link_op, $tth_province;
	$pg_agency  = "";
	if(isset($_GET['agency'])) {
		$agency = $_GET['agency']+0;
		$pg_agency = "&agency=" . $agency;
	}
?>
<div class="row">
	<div class="col-lg-12 col-md-12">
		<div class="panel">
			<div class="panel-heading">
				<i class="fa fa-user fa-fw"></i> Thông tin thành viên
				<span class="tools pull-right">
		            <a href="javascript:;" class="fa fa-spinner fa-spin"></a>
		            <a href="javascript:;" class="fa fa-chevron-down"></a>
		            <a href="javascript:;" class="fa fa-eye"></a>
		            <a href="javascript:;" class="fa fa-compress"></a>
		            <a href="javascript:;" class="fa fa-times"></a>
	            </span>
			</div>
			<div class="panel-body">
				<div class=" row chucnangsaoluu">
					<form id="memberUser" class="form-ol-3w" action="<?php echo $act?>" method="post" enctype="multipart/form-data" name="member">
						<input type="hidden" name="typeFunc" value="<?php echo $typeFunc?>" />
						<input type="hidden" name="userId" value="<?php echo $user_id?>" />
						<input type="hidden" name="img" value="<?php echo $img?>" />
						
						<div class="panel-show-error">
							<?php echo $error?>
						</div>
						<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Tên đăng nhập:</label></div>
						<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="user_name" id="user_name" <?php echo ($typeFunc=='edit') ? "readonly" : "" ?> placeholder="Nhập tên đăng nhập" autocomplete="off" value="<?php echo stripslashes($user_name)?>" maxlength="16" ></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Mật khẩu mới:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control"  placeholder="Nhập mật khẩu"  type="password" name="password" id="password" value="" autocomplete="off" maxlength="16"></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Nhập lại mật khẩu:</label></div>
								<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control"  placeholder="Nhập lại mật khẩu"  type="password" name="rePassword" id="rePassword" value="" autocomplete="off" maxlength="16"></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Nhóm nhân viên:</label></div>
								<div class="col-md-9 col-sm-8 col-xs-12"><?php echo groupAdminSelect($role_id); ?></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Họ và tên:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="full_name" id="full_name" value="<?php echo stripslashes($full_name)?>"  placeholder="Nhập họ và tên"  autocomplete="off" maxlength="150" ></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Giới tính:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<select class="form-control" name="gender" id="gender" >
										<option value="0" <?php echo $gender==0?"selected":""?>>Khác...</option>
										<option value="1" <?php echo $gender==1?"selected":""?>>Nam</option>
										<option value="2" <?php echo $gender==2?"selected":""?>>Nữ</option>
									</select>
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Ngày sinh:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control input-datetime" type="text" name="birthday" value="<?php echo $birthday?>"></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Số CMND:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control auto-number" type="text" name="identity_card" value="<?php echo $identity_card;?>" data-a-sep="" data-a-dec="," data-v-max="999999999999999" data-v-min="0" maxlength="15"></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Ngày cấp:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control input-datetime" type="text" name="date_of_issue" value="<?php echo $date_of_issue;?>"></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Email:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="email" name="email" id="email" value="<?php echo stripslashes($email)?>" autocomplete="off"  placeholder="Nhập vào email"  maxlength="200" ></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Số điện thoại:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control"  placeholder="Nhập vào số điện thoại"  type="text" name="phone" id="phone" value="<?php echo stripslashes($phone)?>" autocomplete="off" maxlength="20"></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Địa chỉ:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control"  placeholder="Nhập vào địa chỉ"  type="text" name="address" id="address" value="<?php echo stripslashes($address)?>" autocomplete="off" maxlength="200" ></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Thành phố:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<?php
									echo '<select class="form-control" name="city" id="city">';
									for($i=0; $i<count($tth_province); $i++) {
										if($city==$tth_province[$i])
											echo '<option value="' . $tth_province[$i] . '" selected>' . $tth_province[$i] . '</option>';
										else
											echo '<option value="' . $tth_province[$i] . '">' . $tth_province[$i] . '</option>';
									}
									echo '</select>';
									?>
							</div>

							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Vị trí (công ty):</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12"><input class="form-control" type="text" name="apply" id="apply" value="<?php echo stripslashes($apply)?>"  placeholder="Nhập  vào vị trí công ty"  autocomplete="off" maxlength="255"></div>

							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Giới thiệu:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">	
									<textarea class="form-control" name="comment" id="comment" placeholder="Nhập giới thiệu bản thân"><?php echo stripslashes($comment)?></textarea></div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp">Hình đại diện:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<input class="form-control file file-img" type="file" name="img" data-show-upload="false" data-max-file-count="1" accept="image/*">
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp selecr">Hiển thị:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<label class="radio-inline selecr"><input type="radio" name="is_show" value="0" <?php echo $is_show==0?"checked":""?> > Đóng</label>
									<label class="radio-inline selecr"><input type="radio" name="is_show" value="1" <?php echo $is_show==1?"checked":""?> > Mở</label>
							</div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp" style="line-height: 40px;">Sao *:</label></div>
							<div class="col-md-9 col-sm-8 col-xs-12">
									<select class="form-control" name="vote" style=" color: #fcdf26; font-size: 1.3em; line-height: 1em;">
										<option value="1" <?php if($vote==1) echo 'selected'; ?>>★</option>
										<option value="2" <?php if($vote==2) echo 'selected'; ?>>★ ★</option>
										<option value="3" <?php if($vote==3) echo 'selected'; ?>>★ ★ ★</option>
										<option value="4" <?php if($vote==4) echo 'selected'; ?>>★ ★ ★ ★</option>
										<option value="5" <?php if($vote==5) echo 'selected'; ?>>★ ★ ★ ★ ★</option>
									</select>
								</div>
							<div class="col-md-3 col-sm-4 col-xs-12"><label class="form-lb-tp selecr">Trạng thái:</label></div>
								<div class="col-md-9 col-sm-8 col-xs-12">
										<label class="radio-inline selecr" ><input type="radio" name="is_active" value="0" <?php echo $is_active==0?"checked":""?> > Đóng</label>
										<label class="radio-inline selecr"><input type="radio" name="is_active" value="1" <?php echo $is_active==1?"checked":""?> > Mở</label>
								</div>
								

							<div class="col-md-12 col-sm-12 col-xs-12 chuanutconfig"> 

							<button class="btn btn-round color-1 material-design nuthemmuc" id="user"  type="submit" name="update"  style="margin-top: 10px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Lưu thiết lập"><i class="fa fa-save" ></i> <span>Lưu lại</span></button>

							<button class="btn btn-round color-1 material-design nuthemmuc nutlammoi"  type="reset"  style="margin-top: 10px;"  data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Làm mới "><i class="fa fa-recycle" ></i> <span>Nhập lại</span></button>

							<button class="btn btn-round color-1 material-design nuthemmuc saoluudulieu"  onclick="location.href='/'"  style="margin-top: 10px;" data-color="#004740" data-toggle="tooltip" data-placement="top" title="" data-original-title="Thoát khỏi cấu hình"><i class="fa fa-reply" ></i> <span>Thoát</span></button>
							</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript" src="<?php echo HOME_URL;?>/js/members.js"></script>
<script>
	CKEDITOR.replace('comment', {
	height: 150,
		toolbar: [
		[ 'Bold', 'Italic', '-', 'NumberedList', 'BulletedList', '-', 'Link', 'Unlink' ],
		[ 'FontSize', 'TextColor', 'BGColor' ]
	]
	});
	$('.input-datetime').datetimepicker({
		mask:'39/19/9999',
		lang:'vi',
		timepicker: false,
		format:'<?php echo TTH_DATE_FORMAT;?>'
	});
	$('.file-img').fileinput({
		<?php if($img!='no' && $img!='') { ?>
		initialPreview: [
			"<img src='../uploads/user/<?php echo $img?>' class='file-preview-image' title='<?php echo $img?>' alt='<?php echo $img?>'>"
		],
		<?php } ?>
		allowedFileExtensions : ['jpg', 'png','gif']
	});
	<?php echo ($typeFunc=='add') ? "window.onload = check_add_user();" : "window.onload = check_edit_user();" ?>
</script>
<?php
}

function groupAdminSelect(array $id) {
	global $db;
	echo '<select name="role_id[]" id="role" class="selectpicker" multiple data-live-search="true" data-selected-text-format="count" data-live-search-placeholder="Tìm..." title="Nhóm nhân viên..."  required="required">';
	$db->table = "core_role";
	$db->condition = "`is_active` = 1";
	$db->order = "`role_id` ASC";
	$db->limit = "";
	$rows = $db->select();
	foreach($rows as $row) {
		echo "<option value='".$row["role_id"]."'";
		if (in_array($row["role_id"], $id)) echo " selected ";
		echo ">".stripslashes($row["name"])."</option>";
	}
	echo '</select>';
}

function sortUser(){
	global $db;
	$db->table = "core_user";
	$db->condition = "is_active = 1";
	$db->order = "`sort` ASC";
	$db->limit = "";
	$db->select();
	return $db->RowCount;
}