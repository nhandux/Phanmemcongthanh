
(function ($) {
	"use strict";
	$(document).ready(function () {
		/*==Slim Scroll ==*/
		if ($.fn.slimScroll) {
			$('.event-list').slimscroll({
				height: '340px',
				wheelStep: 20
			});
			$('.notification-list').slimscroll({
				height: '395px',
				wheelStep: 35
			});
		}

	});
})(jQuery);

$(document).on('click', '.event-close', function () {
	$(this).closest("li").remove();
	return false;
});