<?php
@session_start();
// System
define( 'TTH_SYSTEM', true );
//----------------------------------------------------------------------------------------------------------------------
require_once(str_replace( DIRECTORY_SEPARATOR, '/', dirname( __file__ ) ) . '/define.php');
require_once(ROOT_DIR . DS ."lang" . DS . TTH_LANGUAGE . ".lang");
include_once(_F_FUNCTIONS . DS . "Function.php");
try {
	$db =  new ActiveRecord(TTH_DB_HOST, TTH_DB_USER, TTH_DB_PASS, TTH_DB_NAME);
}
catch(DatabaseConnException $e) {
	echo $e->getMessage();
}

require_once(ROOT_DIR . DS . '_ck_login.php');
$account["id"] = empty($_SESSION["user_id"]) ? 0 : $_SESSION["user_id"]+0;
//---------------------------------------------------
include_once(_F_INCLUDES . DS . "_tth_constants.php");
include_once(_F_INCLUDES . DS . "_tth_online_daily.php");
if($login_true) {
	$date = new DateClass();

	$monthStatic = isset($_GET['month']) ? $_GET['month'] : $date->vnOther(time(),'Y-m');
   
    $first_month = $monthStatic . '-01';

    $last_month = date("Y-m-t", strtotime($first_month));

	$first_month = strtotime($first_month);

	$last_month = strtotime($last_month)+86400;


	$data = '"Day,Tổng đơn hàng,Tổng doanh thu,Tổng nợ,Tổng chiết khấu \n';


	for($i=$first_month; $i<$last_month; $i=$i+86400) {

	$total =0;
	$no = 0;
	$ck = 0;

     $start_date = strtotime(date("Y-m-d",$i)." 0:0");

	     $end_date = strtotime(date("Y-m-d",$i)." 23:59");

	     $db->table = "exhibition";
		
		$db->condition = "`created_time` >= $start_date AND `created_time` < $end_date";

		$db->order = "";

		$db->limit = "";
   
		$rows = $db->select();

	    $count_row = $db->RowCount;

	    if($count_row > 0 )
	    {
	    	foreach ($rows as $key) {
	    		# code...

	    		$total += $key['money_undiscounted'];
	    		$no += $key['debtor'];
	    		$ck += $key['discount'];
	    	}
	    	$data .= date('M/d/y',$i).','.($count_row).','.$total.','.$no.','.$ck.'\n';

	    }
	   }

	// foreach ($rows as $row){
	// 	$data .= date('M/d/y',strtotime($row['date'])).','.($row["count"]+0).'\n';
	// }
	$data .= '"';


		$callback = (string)$_GET['callback'];
	if (!$callback) $callback = 'callback';

	header('Content-Type: text/javascript');
	echo "$callback($data);";
}