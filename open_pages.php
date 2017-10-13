<?php
@session_start();

// System
define( 'TTH_SYSTEM', true );

require_once(str_replace( DIRECTORY_SEPARATOR, '/', dirname( __file__ ) ) . '/define.php');
require_once(ROOT_DIR . DS ."lang" . DS . TTH_LANGUAGE . ".lang");
include_once(_F_FUNCTIONS . DS . "Function.php");
try {
	$db =  new ActiveRecord(TTH_DB_HOST, TTH_DB_USER, TTH_DB_PASS, TTH_DB_NAME);
}
catch(DatabaseConnException $e) {
	echo $e->getMessage();
}
include_once(_F_INCLUDES . DS . "_tth_constants.php");

$url =  isset($_POST['url']) ? $_POST['url'] : 'not-found';

if(isset($_POST['value'])) {
	$value = $_POST['value'];
	?>
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel"><?php echo getConstant($value, 'name');?></h4>
			</div>
			<div class="modal-body">
				<?php echo getConstant($value);?>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Đóng</button>
			</div>
		</div>
	</div>
	<?php
} else die();


