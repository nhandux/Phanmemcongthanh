<?php
define( 'TTH_SYSTEM', true );

$filteredData=substr($_POST['img_val'], strpos($_POST['img_val'], ",")+1);


$unencodedData=base64_decode($filteredData);

$nameimg = isset($_POST['value_id']) ? $_POST['value_id'] : "";
?>
 <form>

 	<input type="hidden" id="nameimg" value="<?= $nameimg ?>" ?>
 
 </form>

<?php
file_put_contents('congthanh_'.$nameimg.'_luuanh.png', $unencodedData);


//Show the image
// echo '<img src="'.$_POST['img_val'].'" />';
?>

<script type="text/javascript" src="/js/jquery.boxes.js"></script>

<script type="text/javascript">

	id = document.getElementById('nameimg').value

	window.location = "/?ol=document&op=document_view&id="+id+'&s=1'
	
</script> 

