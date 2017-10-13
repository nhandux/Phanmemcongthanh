$.urlParam = function(name, url) {
    if (!url) {
        url = window.location.href;
    }
    var results = new RegExp('[\\?&]' + name + '=([^&#]*)').exec(url);
    if (!results) {
        return undefined;
    }
    return results[1] || undefined;
};
var Script = function () {
    var filter = $.urlParam('filter');
    $.ajax({
        url: '/action.php',
        type: 'POST',
        data: 'url=calendar_load&type=personal&filter='+filter,
        async: false,
        success: function(s){
            json_events = s;
        }
    });

    $('#calendar').fullCalendar({
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
                open_calendar('personal', event.id);
                return false;
            }
        },
        axisFormat: 'HH:mm',
        timeFormat: 'H(:mm)'
    });


}();