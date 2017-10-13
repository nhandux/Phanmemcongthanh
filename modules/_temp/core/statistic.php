<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
global  $role_id;
?>
<form id="core_statistic" method="post" onsubmit="return core_dashboard('core_statistic', 'statistic');">
	<?php
	echo showCoreStatistic($role_id);
	?>
</form>
