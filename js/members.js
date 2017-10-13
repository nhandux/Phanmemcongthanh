function check_add_user(){
	var input = document.forms['member'].getElementsByTagName('input');
	var select = document.forms['member'].getElementsByTagName('select');
	var inputs = new Array();
	for(var i=0; i<(input.length+select.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=select[i-input.length];
	}
	var run_onchange = false;
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var userfilter= /^[A-z0-9_-]+$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var id = inputs[i].getAttribute('id');

			// Tạo phần tử span lưu thông tin lỗi
			var span = document.createElement('span');
			// Nếu span đã tồn tại thì remove
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if(id == 'user_name' && value == ''){span.innerHTML ='Tên đăng nhập của thành viên?';}
			if(id == 'password' && value == ''){span.innerHTML ='Mật khẩu của thành viên?';}
			if(id == 'full_name' && value == ''){span.innerHTML ='Họ và tên của thành viên?';}
			if(id == 'role' && value == ''){span.innerHTML ='Chọn nhóm nhân viên?';}
			if(id == 'role' && value != '') {
				var list_to = $('.selectpicker[name="role"]').val();
				$('input[name="role_id"]').val(list_to);
			}
			if(id == 'email' && value != '') {
				var returnval=emailfilter.test(value);
				if(returnval==false){span.innerHTML ='Địa chỉ email không hợp lệ!';}
			}
			if(id == 'user_name' && value != ''){
				if(value.length < 3 || value.length > 16 ){
					span.innerHTML ='Tên đăng nhập phải có từ 3 đến 16 ký tự!';
				} else {
					var returnval=userfilter.test(value);
					if(returnval==false){span.innerHTML ='Tên đăng nhập không hợp lệ! (không được chứa các kí tự đặc biệt)';}
				}
			}
			if(id == 'password' && value != ''){
				if(value.length < 3 || value.length > 16 ){
					span.innerHTML ='Mật khẩu phải có từ 3 đến 16 ký tự!';
				}
				else pass = value;
			}
			if(id == 'rePassword' && pass!=value){span.innerHTML ='Mật khẩu nhập lại không khớp!';}
			if(id == 'phone' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML ='Số điện thoại không hợp lệ!';}
				if(isNaN(value) == false && value.length < 10){span.innerHTML ='Số điện thoại không hợp lệ!';}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid #903030';
				inputs[i].style.background = '#fff';
			}
		}
		return !errors;
	}// end valid()

	// Chạy hàm kiểm tra valid()
	var register = document.getElementById('user');
	register.onclick = function(){
		return valid();
	}

	// Kiểm tra lỗi với sự kiện onchange -> gọi lại hàm valid()
	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #e2e2e4';
				this.style.background = '#ffffff';
				valid();
			}
		}
	}// end for
}

//----------------------------------------------------------------------------------------------------------------------
function check_edit_user(){
	var input = document.forms['member'].getElementsByTagName('input');
	var select = document.forms['member'].getElementsByTagName('select');
	var inputs = new Array();
	for(var i=0; i<(input.length+select.length); i++){
		if(i<input.length) inputs[i]=input[i];
		else inputs[i]=select[i-input.length];
	}
	var run_onchange = false;
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var id = inputs[i].getAttribute('id');

			// Tạo phần tử span lưu thông tin lỗi
			var span = document.createElement('span');
			// Nếu span đã tồn tại thì remove
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if(id == 'email' && value == ''){span.innerHTML ='Email để liên lạc với thành viên?';}
			if(id == 'phone' && value == ''){span.innerHTML ='Số điện thoại liên lạc?';}
			if(id == 'full_name' && value == ''){span.innerHTML ='Họ và tên của thành viên?';}
			if(id == 'role' && value == ''){span.innerHTML ='Chọn nhóm nhân viên?';}
			if(id == 'role' && value != '') {
				var list_to = $('.selectpicker[name="role"]').val();
				$('input[name="role_id"]').val(list_to);
			}
			if(id == 'email' && value != '') {
				var returnval=emailfilter.test(value);
				if(returnval==false){span.innerHTML ='Địa chỉ email bạn nhập không hợp lệ!';}
			}
			if(id == 'password' && value != ''){
				if(value.length < 3 || value.length > 16 ){
					span.innerHTML ='Mật khẩu phải có từ 3 đến 16 ký tự!';
				}
				else pass = value;
			}
			if(id == 'rePassword' && pass!=value){span.innerHTML ='Mật khẩu nhập lại không khớp!';}
			if(id == 'phone' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML ='Số điện thoại không hợp lệ!';}
				if(isNaN(value) == false && value.length < 10){span.innerHTML ='Số điện thoại không hợp lệ!';}
			}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid rgba(249, 180, 173, 0.7)';
				inputs[i].style.background = 'rgba(252, 204, 200, 0.5)';
			}
		}
		return !errors;
	}// end valid()

	// Chạy hàm kiểm tra valid()
	var register = document.getElementById('user');
	register.onclick = function(){
		return valid();
	}

	// Kiểm tra lỗi với sự kiện onchange -> gọi lại hàm valid()
	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #e2e2e4';
				this.style.background = '#ffffff';
				valid();
			}
		}
	}// end for
}

//----------------------------------------------------------------------------------------------------------------------
function use_change_password(){
	var inputs = document.forms['change_pass'].getElementsByTagName('input');
	var run_onchange = false;
	var pass ='';
	var passOld = '';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var id = inputs[i].getAttribute('id');

			// Tạo phần tử span lưu thông tin lỗi
			var span = document.createElement('span');
			// Nếu span đã tồn tại thì remove
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}


			if(id == 'password2old' && value == ''){span.innerHTML ='Mật khẩu hiện tại của bạn?';}
			if(id == 'password2old' && value != ''){passOld = value;}
			if(id == 'password' && value == ''){span.innerHTML ='Mật khẩu mới mà muốn bạn đổi?';}
			if(id == 'password' && value != ''){
				if(value.length < 6 || value.length > 16 ){
					span.innerHTML ='Mật khẩu phải có từ 6 đến 16 ký tự!';
				}
				else {
					pass = value;
					if(pass == passOld){span.innerHTML ='Mật khẩu mới không được trùng với mật khẩu hiện tại!';}
				}
			}
			if(id == 'rePassword' && pass!=value){span.innerHTML ='Mật khẩu nhập lại không khớp!';}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid rgba(249, 180, 173, 0.7)';
				inputs[i].style.background = 'rgba(252, 204, 200, 0.5)';
			}
		}
		return !errors;
	}// end valid()

	// Chạy hàm kiểm tra valid()
	var register = document.getElementById('btn_change_pass');
	register.onclick = function(){
		return valid();
	}

	// Kiểm tra lỗi với sự kiện onchange -> gọi lại hàm valid()
	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #e2e2e4';
				this.style.background = '#ffffff';
				valid();
			}
		}
	}// end for
}

//----------------------------------------------------------------------------------------------------------------------
function use_change_profile(){
	var inputs = document.forms['change_info'].getElementsByTagName('input');
	var run_onchange = false;
	var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	var pass ='';
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var id = inputs[i].getAttribute('id');

			// Tạo phần tử span lưu thông tin lỗi
			var span = document.createElement('span');
			// Nếu span đã tồn tại thì remove
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'SPAN') {p.removeChild(p.lastChild);}

			if(id == 'email' && value == ''){span.innerHTML ='Email để liên lạc với bạn?';}
			if(id == 'full_name' && value == ''){span.innerHTML ='Họ và tên của bạn?';}
			if(id == 'email' && value != '') {
				var returnval=emailfilter.test(value);
				if(returnval==false){span.innerHTML ='Địa chỉ email bạn nhập không hợp lệ!';}
			}
			if(id == 'phone' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML ='Số điện thoại không hợp lệ!';}
				if(isNaN(value) == false && value.length < 10){span.innerHTML ='Số điện thoại không hợp lệ!';}
			}

			if(id == 'passwordold' && value == ''){span.innerHTML ='Mật khẩu hiện tại của bạn?';}

			if(span.innerHTML != ''){
				inputs[i].parentNode.appendChild(span);
				span.setAttribute('class', 'error');
				errors = true;
				run_onchange = true;
				inputs[i].style.border = '1px solid rgba(249, 180, 173, 0.7)';
				inputs[i].style.background = 'rgba(252, 204, 200, 0.5)';
			}
		}
		return !errors;
	}// end valid()

	// Chạy hàm kiểm tra valid()
	var register = document.getElementById('btn_change_info');
	register.onclick = function(){
		return valid();
	}

	// Kiểm tra lỗi với sự kiện onchange -> gọi lại hàm valid()
	for(var i=0; i<inputs.length; i++){
		var id = inputs[i].getAttribute('id');
		inputs[i].onchange = function(){
			if(run_onchange == true){
				this.style.border = '1px solid #e2e2e4';
				this.style.background = '#ffffff';
				valid();
			}
		}
	}// end for
}

function change_profile(id) {
	var dataList = new FormData($('#'+id)[0]);
	showLoader();
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: dataList,
		dataType: "html",
		success: function(data){
			showResult(id, data);
		},
		cache: false,
		contentType: false,
		processData: false
	});
	return false;
}