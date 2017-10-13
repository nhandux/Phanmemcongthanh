<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
global  $role_id;
?>

<form id="core_core" method="post" onsubmit="return core_dashboard('core_core', 'core');">
	<?php
	echo showCoreCore($role_id);
	?>
</form>
