<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
global  $role_id;
?>
<form id="core_general" method="post" onsubmit="return core_dashboard('core_general', 'general');">
	<?php
	echo showCoreGeneral($role_id);
	?>
</form>
