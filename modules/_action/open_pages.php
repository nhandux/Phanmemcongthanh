<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
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
} else echo '-Error-';