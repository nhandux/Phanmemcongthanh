function $$$(id) {
	return document.getElementById(id);
}
function	Forward(url) {
	window.location.href = url;
}
function	_postback() {
	return void(1);
}

function ajaxFunction() {
	var xmlHttp=null;
	try {
		// Firefox, Internet Explorer 7. Opera 8.0+, Safari.
		xmlHttp = new XMLHttpRequest();
	}
	catch (e) {
		// Internet Explorer 6.
		try {
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e) {
			try{
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e) {
				return false;
			}
		}
	}
}

function $query(obj) {
	var query = "";
	$(obj).find("input").each(function(i){
		if (($(obj).find("input").eq(i).attr("type") != "checkbox") && ($(obj).find("input").eq(i).attr("type") != "button") && ($(obj).find("input").eq(i).attr("type") != "radio") ) {
			var t = $(obj).find("input").eq(i);
			if ($(obj).find("input").eq(i).attr("type") != "password") {
				query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
			} else {
				query += "&"+t.attr("name")+"="+document.getElementById(t.attr("name")).value;
			}
		}
		else {
			if ($(obj).find("input").eq(i).attr("type") == "checkbox") {
				var t = $(obj).find("input").eq(i);
				if (t.is(":checked"))
					query += "&"+t.attr("name")+"="+t.attr("value");
			}
			else if ($(obj).find("input").eq(i).attr("type") == "radio") {
				var t = $(obj).find("input").eq(i);
				if (t.is(":checked"))
					query += "&"+t.attr("name")+"="+t.attr("value");
			}
		}
	});
	$(obj).find("textarea").each(function(i) {
		var t = $(obj).find("textarea").eq(i);
		query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
	});

	$(obj).find("select").each(function(i) {
		var t = $(obj).find("select").eq(i);
		query += "&"+t.attr("name")+"="+encodeURIComponent(t.attr("value"));
	});

	return query.substring(1);
}

function $query_unt(obj) {
	var query = "";
	$(obj).find("input").each(function(i){
		var t = $(obj).find("input").eq(i);
		if((t.attr("type") != "button") && (t.attr("type") != "submit") && (t.attr("type") != "reset") && (t.attr("type") != "hidden")) {
			if ((t.attr("type") != "checkbox") && (t.attr("type") != "radio") ) {
				t.val('');
			} else {
				t.attr("checked", false);
			}
		} else {}
	});
	$(obj).find("textarea").each(function(i) {
		var t = $(obj).find("textarea").eq(i);
		t.val('');
	});
	return true;
}

function showLoader() {
	$("#_loading").html("<div class=\"loading-body\"><div class=\"windows8\"> <div class=\"wBall\" id=\"wBall_1\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_2\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_3\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_4\"> <div class=\"wInnerBall\"> </div> </div> <div class=\"wBall\" id=\"wBall_5\"> <div class=\"wInnerBall\"> </div> </div> </div></div>").hide().fadeIn(10);
	block = true;
}

function closeLoader() {
	$("#_loading").html("").hide().fadeOut(100);
	block = false;
}

function showResult(type,data) {
	closeLoader();
	$("#"+type+"").html(data).hide().fadeIn(100);
	block = false;
}

$(document).ready(function() {
	$("#sign-in-form").validate();
	$(function(){
		$("#click-forgot-password").click(function(){
			$("#sign-in-form").slideUp();
			$("#forgot-password-form").slideDown();
		});
		$("#click-sign-in").click(function(){
			$("#forgot-password-form").slideUp();
			$("#sign-in-form").slideDown();
		});
	});
	var heightW = window.innerHeight - 275;
	$('.login-wrap').css('min-height', heightW+'px');
});

function send_lost_forgot(id) {
	var dataList = $query('#'+id);
	showLoader();
	$.ajax({
		url:'/reset_password.php',
		type: 'POST',
		data: dataList,
		dataType: "html",
		success: function(data){
			closeLoader();
			$query_unt('#'+id);
			alert(data);
		}
	});
	return false;
}

function open_page(value) {
	showLoader();
	$.ajax({
		url:'/open_pages.php',
		type: 'POST',
		data: 'value='+value,
		dataType: 'html',
		success: function(data){
			showResult('_pages', data);
		}
	});
	return false;
}

