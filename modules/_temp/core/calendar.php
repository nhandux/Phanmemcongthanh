<?php
if (!defined('TTH_SYSTEM')) { die('Please stop!'); }
//
global  $role_id;
?>
<form id="core_calendar" method="post" onsubmit="return core_dashboard('core_calendar', 'calendar');">
	<?php
	echo showCoreCalendar($role_id);
	?>
</form>
