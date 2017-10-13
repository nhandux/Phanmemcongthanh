<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
global  $role_id;
?>
<form id="core_document" method="post" onsubmit="return core_dashboard('core_document', 'document');">
	<?php
	echo showCoreDocument($role_id);
	?>
</form>
