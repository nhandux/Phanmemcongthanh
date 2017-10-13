function load_calendar(filter) {
    var element = '#calendar';
    var agency = $('#_agency').val();
    var role = $('#_role').val();
    var member = $('#_member').val();
    $(element).html("").hide().fadeIn(100);
    $.ajax({
        url: '/action.php',
        type: 'POST',
        data: 'url=calendar_load&type=manage&agency='+agency+'&role='+role+'&member='+member+'&filter='+filter,
        async: false,
        success: function(s){
            json_events = s;
        }
    });
    $(element).fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,basicWeek,basicDay'
        },
        disableDragging: true,
        editable: true,
        scrollTime: "07:00:00",
        events: JSON.parse(json_events),
        eventClick: function(event) {
            if (event.id) {
                open_calendar('manage', event.id);
                return false;
            }
        },
        axisFormat: 'HH:mm',
        timeFormat: 'H(:mm)'
    });
}
var Script = function () {
    load_calendar(0);
}();