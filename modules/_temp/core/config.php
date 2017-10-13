<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
global  $role_id;
?>
<!-- Nav tabs -->
<form id="core_config" method="post" onsubmit="return core_dashboard('core_config', 'config');">
	<?php
	echo showCoreConfig($role_id);
	?>
</form>
