$(function() {
    var clock = document.querySelector('digiclock');
    var date = document.querySelector('digidate');
    var pad = function(x) {
        return x < 10 ? '0'+x : x;
    };

    var ticktock = function() {
        var now = new Date();
        var h = pad(now.getHours());
        var m = pad(now.getMinutes());
        var s = pad(now.getSeconds());

        var current_time = [h,m,s].join(':');
        clock.innerHTML = current_time;
    };

    var tickdate = function() {
        var now = new Date();
        var d_names = new Array("Chủ nhật", "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7");
        var t = d_names[now.getDay()];

        var d = pad(now.getDate());
        var m = pad(now.getMonth()+1);
        var y = pad(now.getFullYear());
        var g = pad(now.getFullYear());

        var current_date = t + ', ' + [d,m,y].join('/');

        date.innerHTML = current_date;

    };
    ticktock();
    tickdate();
    setInterval(ticktock, 1000);
    setInterval(tickdate, 1000);
});

function $$$(id) {
    return document.getElementById(id);
}
function    Forward(url) {
    window.location.href = url;
}
function    ForwardPlus(path) {
    window.location.pathname = path;
}
function    _postback() {
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
        var t = $(obj).find("input").eq(i);
        if ((t.attr("type") != "checkbox") && (t.attr("type") != "radio") && (t.attr("type") != "file") ) {
            if (t.attr("type") != "password") {
                query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
            } else {
                query += "&"+t.attr("name")+"="+document.getElementsByName(t.attr("name"))[0].value;
            }
        }
        else {
            if(t.attr("type") == "checkbox") {
                if (t.is(":checked"))
                    query += "&"+t.attr("name")+"="+t.attr("value");
            } else if (t.attr("type") == "radio") {
                if (t.is(":checked"))
                    query += "&"+t.attr("name")+"="+t.attr("value");
            } else if (t.attr("type") == "file") {
                query += "&"+t.attr("name")+"="+document.getElementsByName(t.attr("name")).files;
            }
        }
    });
    $(obj).find("textarea").each(function(i) {
        var t = $(obj).find("textarea").eq(i);
        query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
    });
    $(obj).find("select").each(function(i) {
        var t = $(obj).find("select").eq(i);
        query += "&"+t.attr("name")+"="+encodeURIComponent(t.val());
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
    $("#_loading").html("").hide().fadeOut();
    block = false;
}

function showResult(type,data) {
    closeLoader();
    $("#"+type+"").html(data).hide().fadeIn();
    block = false;
}

function header_notify() {
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=notify&type=header',
        success: function(data){
            $("#header_inbox_bar").html(data);
            return true;
        }
    });
    return false;
}

function open_notify(el, id) {
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=notify&type=open&id='+id,
        dataType: 'html',
        success: function(data){
            el.removeClass("new");
            el.find(".fa").removeClass("fa-eye").addClass("fa-eye-slash").attr("data-original-title","Đã xem");
            if(!isNaN(data)) open_calendar('personal', data);
        }
    });
    return false;
}
function open_notify2(id) {
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=notify&type=open&id='+id,
        dataType: 'html',
        success: function(data){
            if(!isNaN(data)) open_calendar('personal', data);
        }
    });
    return false;
}

function marked_notify(el, id) {
    var status = el.attr("rel");
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=notify&type=marked&id='+id+'&status='+status,
        dataType: 'html',
        success: function(){
            if(status==1) {
                el.parent().children('a').removeClass('new');
                el.removeClass("fa-eye").addClass("fa-eye-slash").attr("data-original-title","Đã xem").attr("rel","0");
            } else {
                el.parent().children('a').addClass('new');
                el.removeClass("fa-eye-slash").addClass("fa-eye").attr("data-original-title","Chưa xem").attr("rel","1");
            }
        }
    });
    return false;
}

(function ($) {
    "use strict";
    $(document).ready(function () {
        $('#header_inbox_bar .dropdown-menu').click(function(e) {
            e.stopPropagation();
        });
        // Load data notify...
        header_notify();

        $("#header_inbox_bar").click(function () {
            $(this).find(".badge").remove();
        });
        /*== Cookie Sidebar
         var sidebar = getCookie("sidebar");
         if (sidebar=='hide') {
         $('#sidebar').addClass('hide-left-bar');
         $(".leftside-navigation").getNiceScroll().hide();
         $('#main-content').addClass('merge-left');
         } else {
         $('#sidebar').removeClass('hide-left-bar');
         $(".leftside-navigation").getNiceScroll().show();
         $('#main-content').removeClass('merge-left');
         }
         ==*/
        /*==Left Navigation Accordion ==*/
        if ($.fn.dcAccordion) {
            $('#nav-accordion').dcAccordion({
                idParent: 'sidebar',
                eventType: 'click',
                autoClose: true,
                saveState: true,
                speed: 'slow',
                autoExpand: true
            });
        }
        /*==Nice Scroll ==*/
        if ($.fn.niceScroll) {
            $(".leftside-navigation").niceScroll({
                cursorcolor: "#0092dd",
                cursorborder: "0px solid #fff",
                cursorborderradius: "0px",
                cursorwidth: "3px"
            });

            $(".leftside-navigation").getNiceScroll().resize();
            if ($('#sidebar').hasClass('hide-left-bar')) {
                $(".leftside-navigation").getNiceScroll().hide();
            }
            $(".leftside-navigation").getNiceScroll().show();
        }

        /*==Sidebar Toggle==*/
        $(".leftside-navigation .sub-menu > a").click(function () {
            var o = ($(this).offset());
            var diff = 80 - o.top;
            if (diff > 0)
                $(".leftside-navigation").scrollTo("-=" + Math.abs(diff), 500);
            else
                $(".leftside-navigation").scrollTo("+=" + Math.abs(diff), 500);
        });

        $('.sidebar-toggle-box .fa-bars').click(function (e) {
            $(".leftside-navigation").niceScroll({
                cursorcolor: "#1FB5AD",
                cursorborder: "0px solid #fff",
                cursorborderradius: "0px",
                cursorwidth: "3px"
            });
            $('#sidebar').toggleClass('hide-left-bar');
            if ($('#sidebar').hasClass('hide-left-bar')) {
                setCookie('sidebar', 'hide', 10);
                $(".leftside-navigation").getNiceScroll().hide();
            } else {
                setCookie('sidebar', 'show', 10);
            }
            $(".leftside-navigation").getNiceScroll().show();
            $('#main-content').toggleClass('merge-left');
            e.stopPropagation();
            if ($('#container').hasClass('open-right-panel')) {
                $('#container').removeClass('open-right-panel')
            }
            if ($('.right-sidebar').hasClass('open-right-bar')) {
                $('.right-sidebar').removeClass('open-right-bar')
            }
            if ($('.header').hasClass('merge-header')) {
                $('.header').removeClass('merge-header')
            }
        });

        $('.header,#main-content,#sidebar').click(function () {
            if ($('#container').hasClass('open-right-panel')) {
                $('#container').removeClass('open-right-panel')
            }
            if ($('.right-sidebar').hasClass('open-right-bar')) {
                $('.right-sidebar').removeClass('open-right-bar')
            }
            if ($('.header').hasClass('merge-header')) {
                $('.header').removeClass('merge-header')
            }
        });

        $('.panel .tools .fa').click(function () {
            var panel = $(this).parents(".panel");
            var el = panel.children(".panel-body");
            panel.addClass('panel-loader-active');
            setTimeout(function() {
                panel.removeClass('panel-loader-active');
            }, 500);
            if ($(this).hasClass("fa-times")) {
                panel.parent().remove();
            } else if ($(this).hasClass("fa-chevron-down")) {
                $(this).removeClass("fa-chevron-down").addClass("fa-chevron-up");
                el.slideUp(200);
            } else if ($(this).hasClass("fa-chevron-up")) {
                $(this).removeClass("fa-chevron-up").addClass("fa-chevron-down");
                el.slideDown(200);
            } else if ($(this).hasClass("fa-eye")) {
                $(this).removeClass("fa-eye").addClass("fa-eye-slash");
                panel.find(".fa-times").addClass("link-disabled");
                panel.addClass("panel-focus-enabled");
                $('<div id="focus-overlay"></div>').hide().appendTo("body").fadeIn(300);
            } else if ($(this).hasClass("fa-eye-slash")) {
                $(this).removeClass("fa-eye-slash").addClass("fa-eye");
                panel.find(".fa-times").removeClass("link-disabled");
                $("body").find('#focus-overlay').fadeOut(function(){
                    $(this).remove();
                    panel.removeClass("panel-focus-enabled");
                });
            } else if ($(this).hasClass("fa-compress")) {
                $(this).removeClass("fa-compress").addClass("fa-expand");
                panel.find(".fa-times").addClass("link-disabled");
                $("body").addClass("panel-fullscreen-active");
                panel.addClass("panel-fullscreen");
            } else if ($(this).hasClass("fa-expand")) {
                $(this).removeClass("fa-expand").addClass("fa-compress");
                panel.find(".fa-times").removeClass("link-disabled");
                $("body").removeClass('panel-fullscreen-active');
                panel.removeClass("panel-fullscreen");
            }
        });

        if(window.Notification) Notification.requestPermission();
    });

    function setCookie (cname, cvalue, exdays) {
	    $.ajax({
		    url:'/action.php',
		    type: 'POST',
		    data: 'url=sidebar_cookie&name='+cname+'&value='+cvalue+'&ex_days='+exdays,
		    dataType: 'html',
		    success: function(data){}
	    });
	    return false;
    }

})(jQuery);

var page = 0;
$(document).ajaxComplete(function () {
    var bar_notify = $("#header_inbox_bar .inbox .list-notify");
    var heightW = window.innerHeight - 150;
    $('#header_inbox_bar .dropdown-menu').click(function(e) {
        e.stopPropagation();
    });

    bar_notify.css('height', heightW+'px');
    $(window).resize(function(){
        var heightW = window.innerHeight - 150;
        bar_notify.css('height', heightW+'px');
    });
    bar_notify.niceScroll({
        autohidemode: false,
        cursorcolor: "#0092dd",
        cursorborder: "0px solid #fff",
        cursorborderradius: "0px",
        cursorwidth: "3px"
    });
    bar_notify.getNiceScroll().resize();
    bar_notify.getNiceScroll().show();

    bar_notify.niceScroll().onscrollend = function (data) {
        if (data.end.y >= this.page.maxh) {
            page = parseInt(page)+1;
            $.ajax({
                url:'/action.php',
                type: 'POST',
                data: 'url=notify&type=load&page='+page,
                dataType: 'html',
                success: function(data){
                    bar_notify.append(data);
                }
            });
        }
    };
});

var hidden, visibilityChange;
if (typeof document.hidden !== "undefined") {
    hidden = "hidden";
    visibilityChange = "visibilitychange";
} else if (typeof document.mozHidden !== "undefined") {
    hidden = "mozHidden";
    visibilityChange = "mozvisibilitychange";
} else if (typeof document.msHidden !== "undefined") {
    hidden = "msHidden";
    visibilityChange = "msvisibilitychange";
} else if (typeof document.webkitHidden !== "undefined") {
    hidden = "webkitHidden";
    visibilityChange = "webkitvisibilitychange";
}
function handleVisibilityChange(id) {
    if (document[hidden]) {
        window.open('/notify/' + id);
    } else {
        open_notify2(id);
    }
}

setInterval(function(){
    var open = $("#header_inbox_bar").hasClass("open");
    if(!open) {
        header_notify();
        page = 0;
    }

    var notify;
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=notify&type=pop',
        dataType: 'json',
        success: function(data){
            for(var i=0;i<data.length;i++){
                notify = new Notification(data[i].title, {
                    tag: data[i].tag,
                    body: data[i].body,
                    icon: data[i].icon
                });
                notify.onclick = function(e){
                    document.addEventListener(visibilityChange, handleVisibilityChange(e.target.tag), false);
                };
            }
        }
    });
}, 5000);

// toggle function
$.fn.clickToggle = function( f1, f2 ) {
    return this.each( function() {
        var clicked = false;
        $(this).bind('click', function() {
            if(clicked) {
                clicked = false;
                return f2.apply(this, arguments);
            }

            clicked = true;
            return f1.apply(this, arguments);
        });
    });

};

$.fn.shiftSelectable = function() {
    var lastChecked,
        $boxes = this;
    $boxes.click(function(evt) {
        if(!lastChecked) {
            lastChecked = this;
            return;
        }
        if(evt.shiftKey) {
            var start = $boxes.index(this),
                end = $boxes.index(lastChecked);
            $boxes.slice(Math.min(start, end), Math.max(start, end) + 1)
                .attr('checked', lastChecked.checked)
                .trigger('change');
        }

        lastChecked = this;
    });
};

$(document).ready(function() {
    $('#go-top').hide();
    $(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 0) {
                $('#go-top').removeClass().addClass('animated fadeInRight').show();
            } else {
                $('#go-top').removeClass().addClass('animated fadeOutRight').show();
            }
        });
        $('#go-top').click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });
    });
    $('#container').tooltip({
        selector: "[data-toggle=tooltip]",
        container: "body"
    });
    $('#dataTablesList').find('input[type="checkbox"]').shiftSelectable();
    $('#_ol_select_all').change(function () {
        $("input.ol-checkbox-js").prop('checked', $(this).prop("checked"));
    });
    var heightW = window.innerHeight - 168;
    $('#wrapper').css('min-height', heightW+'px');
});
jQuery(function($) {
    $('.auto-number').autoNumeric('init');
    $('.colorpicker-default').colorpicker({
        format: 'hex'
    });
    $('.colorpicker-rgba').colorpicker();

    $('.btn-onoff input[type=checkbox]').change(function() {
        showLoader();
        var type = $(this).attr("name");
        if(this.checked) {
            $.ajax({
                url:'/action.php',
                type: 'POST',
                data: 'url=notify_onoff&type='+type+'&val=1',
                dataType: 'html',
                success: function(){
                    closeLoader();
                }
            });
        } else {
            $.ajax({
                url:'/action.php',
                type: 'POST',
                data: 'url=notify_onoff&type='+type+'&val=0',
                dataType: 'html',
                success: function(){
                    closeLoader();
                }
            });
        }
        return false;
    });
});

function getSlug(table) {
    var name  = $('#name').val();
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=get_slug&id='+table+'&name='+name,
        dataType: 'html',
        success: function(data){
            $('#slug').val(data);
            closeLoader();
        }
    });
    return false;
}

function getSlugOther() {
    var name  = $('#name').val();
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=get_slug_other&name='+name,
        dataType: 'html',
        success: function(data){
            $('#slug').val(data);
            closeLoader();
        }
    });
    return false;
}

function performSort(id, sort, table) {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=perform_sort&q='+id+'&sort='+sort+'&type='+table,
        dataType: 'html',
        success: function(data){
            window.location.reload();
        }
    });
    return false;
}

function performSortCore(id, sort, table) {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=perform_sort_user&q='+id+'&sort='+sort+'&type='+table,
        dataType: 'html',
        success: function(data){
            window.location.reload();
        }
    });
    return false;
}

function edit_status(el, id, type, table) {
    var status = el.attr("rel");
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=edit_status&id='+id+'&type='+type+'&table='+table+'&status='+status,
        dataType: 'html',
        success: function(data){
            if(status==1) {
                el.removeClass("btn-event-close").addClass("btn-event-open");
                el.attr("rel","0");
                el.html(1);
                el.attr("data-original-title","Đóng");
            } else {
                el.removeClass("btn-event-open").addClass("btn-event-close");
                el.attr("rel","1");
                el.html(0);
                el.attr("data-original-title","Mở");
            }
        }
    });
    return false;
}

function edit_status_core(el, id, type, table, qr) {
    var status = el.attr("rel");
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=edit_status_core&id='+id+'&type='+type+'&table='+table+'&qr='+qr+'&status='+status,
        dataType: 'html',
        success: function(data){
            if(status==1) {
                el.removeClass("btn-event-close").addClass("btn-event-open");
                el.attr("rel","0");
	            el.html(1);
                el.attr("data-original-title","Đóng");
            } else {
                el.removeClass("btn-event-open").addClass("btn-event-close");
                el.attr("rel","1");
	            el.html(0);
                el.attr("data-original-title","Mở");
            }
        }
    });
    return false;
}

function edit_core_ol(el, role, slug) {
	var status = el.attr("rel");
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: 'url=edit_core_ol&role='+role+'&slug='+slug+'&status='+status,
		dataType: 'html',
		success: function(data){
			if(status==1) {
				el.removeClass("btn-event-close").addClass("btn-event-open");
				el.attr("rel","0");
				el.html(1);
				el.attr("data-original-title","Đóng");
			} else {
				el.removeClass("btn-event-open").addClass("btn-event-close");
				el.attr("rel","1");
				el.html(0);
				el.attr("data-original-title","Mở");
			}
		}
	});
	return false;
}

function core_dashboard(id, type) {
	var dataList = $query('#'+id);
	showLoader();
	$.ajax({
		url:'/action.php',
		type: 'POST',
		data: 'url=core_dashboard&'+dataList+'&type='+type,
		dataType: "html",
		success: function(data){
			showResult(id, data);
		}
	});
	return false;
}

function backup_database(id) {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=backup_data',
        dataType: 'html',
        success: function(data){
            showResult(id,data);
        }
    });
    return false;
}

function ol_filter(inp, result, type) {
    var dataList = $query('#'+inp);
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url='+type+'&'+dataList,
        dataType: 'html',
        success: function(data){
            showResult(result, data);
        }
    });
    return false;
}

function ol_filter1(inp, result, type) {
    var dataList = $query('#'+inp);
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url='+type+'&'+dataList,
        dataType: 'html',
        success: function(data){
            showResult(result, data);
        }
    });
}

function change_agency(id) {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=get_member&id='+id,
        dataType: "html",
        success: function(data){
            showResult('_member', data);
        }
    });
    return false;
}

function add_calendar_modal() {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=calendar_modal&open=OK',
        dataType: 'html',
        success: function(data){
            showResult('_calendar_modal', data);
        }
    });
    return false;
}

function add_calendar(inp, type) {
    showLoader();
    var dataList = new FormData($('#'+inp)[0]);
    var list_to = $('.selectpicker[name="to"]').val();
    dataList.append("list_to", list_to);
    dataList.append("url", type);
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: dataList,
        async: false,
        cache: false,
        processData: false,
        contentType: false,
        dataType: 'json',
        success: function(data){
            closeLoader();
            if(data.msg_process==true) window.location.href = data.msg_txt;
            else alert(data.msg_txt);
        },
        error: function() {
            closeLoader();
            alert('Thao tác không hợp lệ, vui lòng kiểm tra lại.');
        }
    });
    return false;
}

function add_document(inp) {
   
    var values = $('#'+inp).serialize();
	// var dataList = new FormData($('#'+inp)[0]);
	// dataList.append("url", type);
	
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=document_edit&'+ values,
       
        dataType: 'json',
        success: function(data){
            //closeLoader();
         if(data.msg_process==true) window.location.href = data.msg_txt;
         else alert(data.msg_txt);
		 
			
        },
        error: function() {
            //closeLoader();
            alert('Thao tác không hợp lệ, vui lòng kiểm tra lại.');
        }
    });
  return false;
	
}
function add_payment(inp) {
   
    var values = $('#'+inp).serialize();
	
	
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=payment_edit&'+ values,
       
        dataType: 'json',
        success: function(data){
            closeLoader();
         if(data.msg_process==true) {			
			 
			 window.location.reload();
			 
		 }
         else alert(data.msg_txt);
			
        },
        error: function() {
            //closeLoader();
            alert('Thao tác không hợp lệ, vui lòng kiểm tra lại.');
        }
    });
  return false;
	
}

function add_payment2(inp) {
   
    var values = $('#'+inp).serialize();
	
	
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=payment_edit2&'+ values,
       
        dataType: 'html',
        success: function(data){
            
			$('#_calendar_modal').modal('hide');
			
			$('#dataTablesList').empty();
			
			$('#dataTablesList').html(data);
		
         
			
        },
        error: function() {
            //closeLoader();
            alert('Thao t�c kh�ng h&#7907;p l&#7879;, vui l�ng ki&#7875;m tra l&#7841;i.');
        }
    });
  return false;
	
}
function open_calendar(type, id) {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=calendar_open&open=OK&type='+type+'&id='+id,
        dataType: 'html',
        success: function(data){
            showResult('_calendar_modal', data);
            $('#_calendar_modal').modal('show');
        }
    });
    return false;
}
function report_calendar(inp, type) {
    var dataList = new FormData($('#'+inp)[0]);
    dataList.append("url", 'calendar_report');
    dataList.append("type", type);
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: dataList,
        async: false,
        cache: false,
        processData: false,
        contentType: false,
        dataType: 'json',
        success: function(data){
            closeLoader();
            if(data.msg_process==true && !isNaN(data.msg_txt)) open_calendar('personal', data.msg_txt);
            else alert(data.msg_txt);
        },
        error: function() {
            closeLoader();
            alert('Thao tác không hợp lệ, vui lòng kiểm tra lại.');
        }
    });
    return false;
}

function edit_calendar(id) {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=calendar_modal_edit&id='+id,
        dataType: 'html',
        success: function(data){
            showResult('_calendar_modal', data);
        }
    });
    return false;
}
function edit_document(id) {
   // showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=document_modal_edit&id='+id,
        dataType: 'html',
        success: function(data){
            showResult('_calendar_modal', data);
        }
		
		
    });
    return false;
}


function edit_payment(id) {
   // showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=payment_modal_edit&id='+id,
        dataType: 'html',
        success: function(data){
			
            showResult('_calendar_modal', data);
        }
		
		
    });
    return false;
}


function edit_payment2(id) {
   // showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=payment_modal_edit2&id='+id,
        dataType: 'html',
        success: function(data){
			$("#dataTablesList :input ").filter(function(){return this.value== id}).parent().parent().find('.theodoithanhtoan').removeClass('changepayment');
            showResult('_calendar_modal', data);
			
        }
		
		
    });
    return false;
}


function delete_calendar(id) {
    showLoader();
    confirm("Dữ liệu sau khi xóa sẽ không thể phục hồi lại được.\nBạn có chắc chắn thực hiện điều này không?", function() {
        if(this.data == true) {
            $.ajax({
                url:'/action.php',
                type: 'POST',
                data: 'url=calendar_delete&id='+id,
                dataType: 'html',
                success: function(data){
                    closeLoader();
                    window.location.reload();
                }
            });
        } else {
            closeLoader();
            return false;
        }
    });
    return false;
}

function extend_modal(id, type) {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=extend_modal&type='+type+'&id='+id,
        dataType: 'html',
        success: function(data){
            showResult('_calendar_modal', data);
        }
    });
    return false;
}

function extend_calendar(inp, type) {
    showLoader();
    confirm("Thao tác này sau khi hoàn tất sẽ không thay đổi được.\nBạn có chắc chắn thực hiện điều này không?", function() {
        if(this.data == true) {
            var dataList = $query('#'+inp);
            $.ajax({
                url:'/action.php',
                type: 'POST',
                data: 'url=extend&type='+type+'&'+dataList,
                dataType: 'json',
                success: function(data){
                    closeLoader();
                    if(data.msg_process==true && !isNaN(data.msg_txt)) extend_modal(data.msg_txt, 'view_manage');
                    else alert(data.msg_txt);
                },
                error: function() {
                    closeLoader();
                    alert('Thao tác không hợp lệ, vui lòng kiểm tra lại.');
                }
            });
        } else {
            closeLoader();
            return false;
        }
    });
    return false;
}

function complete_calendar(id, type) {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=calendar_complete&type='+type+'&id='+id,
        dataType: 'html',
        success: function(data){
            showResult('_calendar_modal', data);
        }
    });
    return false;
}

function open_popover(type, id) {
    var result = $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=role_user&type='+type+'&id='+id,
        dataType: "html",
        cache: true,
        async: false,
        success: function(data){
            return data;
        },
        error: function() {
            return false;
        }
    });
    return result.responseText;
}

function change_agency_cal(id, type) {
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=get_role&type=' + type + '&agency='+id,
        dataType: "html",
        success: function(data){
            showResult('_role', data);
        }
    });
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=get_member&type=' + type + '&agency='+id,
        dataType: "html",
        success: function(data){
            showResult('_member', data);
        }
    });
    if(type=='calendar_list') load_calendar(0);
    return false;
}
// Validate form thêm đơn hàng
function check_order(name){
	var input = document.forms[name].getElementsByTagName('input');
	var err_field = 'Mọi thông tin phải điền đầy đủ';
	var err_email = 'Email không hợp lệ';
	var err_phone = 'Số điện thoại không hợp lệ';

	var inputs = new Array();
	for(var i=0; i<(input.length); i++){
		inputs[i]=input[i];
		
	}
	var run_onchange = false;
	var email_filter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
	function valid(){
		var errors = false;
		for(var i=0; i<inputs.length; i++){
			var value = inputs[i].value;
			var name = inputs[i].getAttribute('name');

			var span = document.createElement('span');
			var p = inputs[i].parentNode;
			if(p.lastChild.nodeName == 'span') {p.removeChild(p.lastChild);}
			var input_unt = ['address', 'number', 'submit'];
			var cke = input_unt.indexOf(name);
			if( value == '' && cke < 0){
				span.innerHTML = err_field;
				
			}
			if(name == 'email' && value != '') {
				var return_val = email_filter.test(value);
				if(return_val == false){ span.innerHTML = err_email;
				}
			}
			if(name == 'tel' && value != ''){
				if(isNaN(value) == true || value.indexOf('.')!=-1 || value < 0){span.innerHTML = err_phone;}
				if(isNaN(value) == false && value.length < 8){span.innerHTML = err_phone;}
			}

			if(span.innerHTML != ''){
				
				inputs[i].parentElement.appendChild(span);
				span.setAttribute('class', 'show-error');
				errors = true;
				run_onchange = true;
			}
		}
		return !errors;
	}

	var register1 = document.getElementById('indonhang');
	register1.onclick = function(){
		
		return valid();
		
	}
	var register2 = document.getElementById('luudonhang');
	register2.onclick = function(){
		
		return valid();
	}
	var register3 = document.getElementById('guimaildonhang');
	register3.onclick = function(){
		
		return valid();
	}
	
}
//End of validation
function change_role_cal(id, type) {
    var agency = $('#_agency').val();
    showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=get_member&type=' + type + '&agency=' + agency + '&role='+id,
        dataType: "html",
        success: function(data){
            showResult('_member', data);
            if(type=='calendar_list') load_calendar(0);
        }
    });
    return false;
}

function open_document(type, id) {
    showLoader();
    if(type=='delete') {
        confirm("Dữ liệu sau khi xóa sẽ không thể phục hồi lại được.\nBạn có chắc chắn thực hiện điều này không?", function() {
            if(this.data == true) {
                $.ajax({
                    url: '/action.php',
                    type: 'POST',
                    data: 'url=document_open&open=OK&type='+type+'&id='+id,
                    dataType: 'html',
                    success: function(data){
                        closeLoader();
                        window.location.reload();
                    }
                });
            } else {
                closeLoader();
                return false;
            }
        });
    } else {
        $.ajax({
            url: '/action.php',
            type: 'POST',
            data: 'url=document_open&open=OK&type=' + type + '&id=' + id,
            dataType: 'html',
            success: function (data) {
                showResult('_document_modal', data);
                $('#_document_modal').modal('show');
            }
        });
    }
    return false;
}

function ol_print_export(frm, type) {
    var dataList = $query('#'+frm);
    var url = '/?ol=print&op='+type+'&'+dataList;
    window.open(url);
    return false;
}
//Format Currency Number
function numberWithDots(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}
//chuyển trạng thái

function changeState(code, state,lastValue) {
	
	$.ajax({
                    url: '/action.php',
                    type: 'POST',
                    data: 'url=status_change&code='+code + '&new_state='+state + '&last_state='+lastValue,
                    dataType: 'html',
                    success: function(data){

                      $('#bang'+code).remove()

                    },
					error : function() {
						// alert('Lỗi hệ thống không thể thực hiện');
                        // no action
					},
                });
}
function changeStateAfterDelay(code, state,resume) {
	
	$.ajax({
                    url: '/action.php',
                    type: 'POST',
                    data: 'url=status_resume&code='+code + '&new_state='+state+'&resume='+resume ,
                    dataType: 'html',
                    success: function(data){

                      $('#bang'+code).remove()

                    },
					error : function() {
						// alert('Lỗi hệ thống không thể thực hiện');
                        // no action
					},
                });
}
function employeeAssign(code, emp,state) {
	
	$.ajax({
                    url: '/action.php',
                    type: 'POST',
                    data: 'url=employee_change&code='+code + '&new_employee='+emp + '&state=' + state,
                    dataType: 'html',
                    success: function(data){
						
                       // window.location.reload();
                       
                      $('#bang'+code).remove()
                    },
					error : function() {
						//alert('Lỗi hệ thống không thể thực hiện');
                        // no action
					},
                });
}
function employeeAssign2(code, emp) {
	
	$.ajax({
                    url: '/action.php',
                    type: 'POST',
                    data: 'url=employee_change_accountant&code='+code + '&new_employee='+emp ,
                    dataType: 'html',
                    success: function(data){
						
                       
                        window.location.reload();
                    },
					error : function() {
						alert('Lỗi hệ thống không thể thực hiện');
					},
                });
}
function add_proposal(inp) {
   
    var values = $('#'+inp).serialize();		
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=proposal_add&'+ values,       
        dataType: 'html',
        success: function(data){
            $('.form_proposal').empty();
			$('.form_proposal').html(data);
        },
        error : function() {
			 alert('Thao t? kh?g h&#7907;p l&#7879;');
		},
    });
  return false;
	
}

function changeAgency(id, newagency) {
	
	$.ajax({
                    url: '/action.php',
                    type: 'POST',
                    data: 'url=agency_change&id='+id + '&new_agency='+newagency,
                    dataType: 'html',
                    success: function(data){						
                      window.location.reload();
                    },
					error : function() {
						alert('Lỗi hệ thống, không thể thực hiện được');
					},
                });
}

function document_history(id) {
	 $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=document_modal_history&id='+id,
        dataType: 'html',
        success: function(data){
            showResult('_calendar_modal', data);
        }	
		
    });
    return false;
}
function goBack() {
		$("#_calendar_modal").modal('hide');
    }
function edit_stock(id) {
   // showLoader();
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=stock_modal_edit&id='+id,
        dataType: 'html',
        success: function(data){
			
            showResult('_calendar_modal', data);
        }
		
		
    });
    return false;
}
function add_stock(inp) {
   
    var values = $('#'+inp).serialize();
	
	
    $.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=stock_edit&'+ values,       
        dataType: 'json',
        success: function(data){
			alert(data);
            closeLoader();
         if(data.msg_process==true) {			
			 
			 window.location.reload();
			 
		 }
         else alert(data.msg_txt);
		
       },	   
        error: function() {
            //closeLoader();
            alert('Thao tác không hợp lệ, vui lòng kiểm tra lại.');
        }
    });
  return false;
	
}
function item_image_open(id, code) {
	$.ajax({
        url:'/action.php',
        type: 'POST',
        data: 'url=stock_image_open&id='+id +'&code='+ code,
        dataType: 'html',
        success: function(data){
			
            showResult('_calendar_modal', data);
        }	
		
    });
    return false;
}
function send_image(id) {
	 var file_data = $('#image'+id)[0].files[0];   
	var dataList = new FormData();  
	
    dataList.append('file', file_data);
	 dataList.append("url", 'send_item_image');
	 dataList.append("id", id);
	$.ajax({
                    url: '/action.php',
                    type: 'POST',
                    data: dataList,
					async: false,
					cache: false,
					processData: false,
					contentType: false,
                    dataType: 'html',
                    success: function(data){                    
                    },
					error : function() {
						alert('Lỗi không upload file ảnh được');
					},
                });
}
