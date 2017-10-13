<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
if(isset($_POST['value'])) {
	?>

	<select name="endtotal" class="tech1 form-control chaclangu" id="tech2" style="float: left;margin-top:10px;">		
		 <option value="0" selected data-image="<?= HOME_URL;?>/images/lich.png">Đến tổng giá trị...</span></option>
		  <?php 
			$ic = $_POST['value'];

                while($ic < 200000000){

			?>
			<option value="<?= $ic ?>" <?php if($ic == ($_POST['value']+ 10000000)) echo 'selected';?> ><?= number_format($ic,'0','','.') ?> VNĐ</option>
			<?php
			$ic = $ic + 1000000; 
		} 
	echo '</select>';
}