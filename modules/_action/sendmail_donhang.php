<?php

	$date = new DateClass();
	$stringObj = new String();
    
    $id = $_POST['id'];

	$db->table = "customer";
	$db->condition = "customer_id=".$id;
	$db->order = "customer_id DESC";
	$db->limit = 1;
	$rows = $db->select();

  if($rows[0]['company_name'] != "")

	$txtName    = $rows[0]['company_name'];

  else

  	$txtName    = $rows[0]['full_name'];
    
    $txtEmail   = $rows[0]['email'];

    $txtAddress = $rows[0]['address'];

    $txtTell    = $rows[0]['phone'];

    $txtTime    = $rows[0]['created_time'];

    $txtTime    = $date->vnDate($txtTime);

    $txtContent = "Xác nhận đơn hàng";

 	if(empty($HTTP_X_FORWARDED_FOR)) $IP_NUMBER = getenv("REMOTE_ADDR");

	else $IP_NUMBER = $HTTP_X_FORWARDED_FOR;

	$domain = $_SERVER['HTTP_HOST'];

	$emailTo = getConstant('email_contact');

	$time_now = time();

	$datetime_now = $date->vnDateTime(time());

	    $db->table     = "exhibition";

	    $db->condition = "";

	    $db->order     = "`created_time` DESC";

	    $db->limit     = "1";

	    $rows          = $db->select();

	    $id_don        = $rows[0]['exhibition_id'];
    
        $tongtien      = $rows[0]['into_money'];

        $daend         = $rows[0]['date_end'];

        $daend         = $date->vnDateTime($daend);


	$subject = "[Xác nhận] ".$txtName." (". $datetime_now .")";
	$message = '<div style="line-height: 20px;"><b>------ THÔNG TIN KHÁCH HÀNG ------</b><br/>Họ và tên: <b>'.$txtName.'</b><br/>Địa chỉ: <b>'.$txtAddress.'</b><br/>Email: <b>'.$txtEmail.'</b><br/>Số điện thoại: <b>'.$txtTell.'</b><br/>Yêu cầu: <b>'.$txtContent.'</b><br/><b>'.$txtName.'</b> đặt hàng tại công ty chúng tôi vào ngày: '.$txtTime.'<br/> Ngày giao hàng : '.$daend.' </div><p>&nbsp;</p>';

	$message .= '<div><p><b>------ ĐƠN ĐẶT HÀNG ------</b></p>';
	$message .= '<table cellpadding="5" cellspacing="0" class="form-order" style="box-sizing: border-box; border-width: 0px 1px 1px 0px; border-right-style: solid; border-bottom-style: solid; border-right-color: rgb(221, 221, 221); border-bottom-color: rgb(221, 221, 221); max-width: 100%;" width="100%"><thead style="box-sizing: border-box; border: 0px;"><tr align="center" style="box-sizing: border-box; border: 0px;padding:10px 0px;"><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #007f3d;padding:10px 0px;" width="20%">Tên sản phẩm</td><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #007f3d;padding:10px 0px;">Kích thước</td><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #007f3d;padding:10px 0px;">Đơn giá</td><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #007f3d;padding:10px 0px;" width="20%">Số lượng</td><td style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); color: rgb(255, 255, 255); font-weight: bold; background: #007f3d;padding:10px 0px;">Thành tiền</td></tr></thead>';

       $db->table     = "itemproduct";

	    $db->condition = "exhibition_id = ".$id_don;

	    $db->order     = "";

	    $db->limit     = "";

	    $rowsp          = $db->select();

	    foreach ($rowsp as $rowp) {
	$message .= '<tr style="box-sizing: border-box; border: 0px;"><td align="center" class="img" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); line-height: 0;">'.$rowp['product_name'].'</td><td align="center" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);">'.$rowp['size'].'</td><td align="center" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);">'.number_format($rowp['unit_price'],'0','','.').' '.$rowp['type'].'</td><td align="center" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);">'.number_format($rowp['count_number'],'0','','.').'</td><td align="center" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);">'.number_format($rowp['total'],'0','','.').' VNĐ</td></tr>';

       }
	$message .= '<tr style="box-sizing: border-box; border: 0px;"><td align="right" colspan="4" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221);"><strong style="box-sizing: border-box; border: 0px;"><strong>Tổng tiền:</strong></td><td align="center" class="total" style="box-sizing: border-box; padding: 5px; border-width: 1px 0px 0px 1px; border-top-style: solid; border-left-style: solid; border-top-color: rgb(221, 221, 221); border-left-color: rgb(221, 221, 221); font-weight: bold; color: 007f3d; text-transform: none; text-decoration: none;">'.number_format($tongtien,'0','','.').' VNĐ</td></tr></table>';
   $message .= '<div style="margin-top"20px;><p><b>------ LỜI CẢM ƠN ------</b></p><span>Xin chân thành cảm ơn quý khách đã đặt hàng tại công ty chúng tôi. <br/> Nếu có thắc mắc gì hảy liên hệ trực tiếp cho chúng tôi theo hostline: 01679960030</span>';
	$send_mail = sendMailFn($emailTo, $txtName, $txtEmail, '', $subject, $message);

	if($send_mail == TRUE) {

		echo 'Xin chân thành cảm ơn Quý khách đã quan tâm và sử dụng dịch vụ của chúng tôi!Xác nhận của Quý khách đã gửi thành công. Chân thành cảm ơn!';
	}
	else { 

		echo 'Đã gặp lổi trong quá trình gửi mail. Bạn hảy thử lại sau hoặc liên hệ trực tiếp với chúng tôi';
	}

