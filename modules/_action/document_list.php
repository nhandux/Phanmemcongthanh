<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
$requestData = $_REQUEST;
$date = new DateClass();
$columns = array(
		0 => '`created_time`',
		1 => '`title`',
		2 => '`type`',
		3 => '`symbols`',
		4 => '`date_issued`',
		5 => '`modified_time`'
);
$query = "1 ";
if( !empty($requestData['search']['value']) ) {
	$query .= " AND CONCAT_WS(`title`, `symbols`, `comment`, `content`) LIKE '%" . $requestData['search']['value'] . "%'";
}

if( !empty($requestData['columns'][1]['search']['value']) ) {
	$query .= " AND `title` LIKE '%" . $requestData['columns'][1]['search']['value'] . "%'";
}
if( !empty($requestData['columns'][2]['search']['value']) ) {
	$query .= " AND `type` = " . $requestData['columns'][2]['search']['value'] . "";
}
if( !empty($requestData['columns'][3]['search']['value']) ) {
	$query .= " AND `symbols` LIKE '%" . $requestData['columns'][3]['search']['value'] . "%'";
}
if( !empty($requestData['columns'][4]['search']['value']) ) {
	$date_search = strtotime($date->dmYtoYmd($requestData['columns'][4]['search']['value']));
	$query .= " AND `date_issued` = $date_search";
}

$db->table = "document";
$db->condition = $query;
$db->order = "";
$db->limit = "";
$db->select();
$totalData = $db->RowCount;
$totalFiltered = $totalData;

$db->table = "document";
$db->condition = $query;
$db->order = $columns[$requestData['order'][0]['column']]." ".$requestData['order'][0]['dir'];
$db->limit = $requestData['start'] . " ," . $requestData['length'];
$rows = $db->select();
$data = array();
$i = $requestData['start'];
foreach($rows as $row) {
	$i++;
	$nestedData =   array();
	$nestedData[] = $i;
	$nestedData[] = stripslashes($row['title']);
	$nestedData[] = getTableDocumentType($row['type']);
	$nestedData[] = stripslashes($row['symbols']);
	$nestedData[] = $date->vnDate($row['date_issued']);
	$nestedData[] = $date->vnDateTime($row['modified_time']);
	$nestedData[] = getUserName($row['user_id']);
	$nestedData[] = '<div class="checkbox"><a href="' . TTH_PATH_LK . 'document' . TTH_PATH_OP_LK . 'document_edit&id=' . $row['document_id'] . '" class="btn btn-pink btn-xs" data-toggle="tooltip" data-placement="left" title="Chỉnh sửa"><i class="fa fa-cog"></i></a>&nbsp;<button type="button" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="right" title="Xem văn bản" onclick="return open_document(\'document\', ' . $row['document_id'] . ');"><i class="fa fa-eye"></i></button> &nbsp; <label class="checkbox-inline"><input type="checkbox" data-toggle="tooltip" data-placement="top" title="Xóa" class="ol-checkbox-js" name="idDel[]" value="' . $row['document_id'] . '"></label></div>';
	$data[] = $nestedData;
}

$json_data = array(
		"draw"            => intval( $requestData['draw'] ),
		"recordsTotal"    => intval( $totalData ),
		"recordsFiltered" => intval( $totalFiltered ),
		"data"            => $data
);

echo json_encode($json_data);