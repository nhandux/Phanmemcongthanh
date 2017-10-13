<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
global  $role_id;
?>

<form id="core_backup" method="post" onsubmit="return core_dashboard('core_backup', 'backup');">
	<?php
	echo showCoreBackup($role_id);
	?>
</form>