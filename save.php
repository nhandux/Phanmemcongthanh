<?php

$filteredData=substr($_POST['img_val'], strpos($_POST['img_val'], ",")+1);


$unencodedData=base64_decode($filteredData);


file_put_contents('ducnhan.png', $unencodedData);

?>

            <a href="img.png" target="blank">
            	Click Here to See The Image Saved to Server
            </a>
<?php
//Show the image
echo '<img src="'.$_POST['img_val'].'" />';
?>
