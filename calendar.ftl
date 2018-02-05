<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.5.1/fullcalendar.css">


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css">
<script>
    define._amd = define.amd;
    define.amd = false;
</script>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.2/moment.min.js'></script>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.7.0/fullcalendar.js'></script>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.7.0/gcal.js'></script>

  <script src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js'></script>

<script>
    define.amd = define._amd;
</script>

  <style media="screen">

    .calendar-tile {
      border: solid 1px #ededed;
    }
    #calendar {
      padding-top: 15px;
    }
    .tooltipevent {
      width:100px;height:100px;background:#ccc;position:absolute;z-index:10001;
    }
    .fc-month-view .fc-event-container{
      display: none;
    }
    .fc .fc-row .fc-content-skeleton table, .fc .fc-row .fc-content-skeleton td, .fc .fc-row .fc-helper-skeleton td {
      text-align: center;
    }
    .fc-ltr .fc-basic-view .fc-day-top .fc-day-number {
      float: none;
    }
    .fc th, .fc td {
      border: 0;
    }
    .fc-basic-view .fc-body .fc-row {
      height: 35px !important;
      display: list-item;
      min-height: 48px !important
    }

    .fc-unthemed td.fc-today {
       color: #fff;
       background: #33cf59;
       border-radius: 35px;
    }

    #select-day-event-title {
      width: 100%;
    	height: 42px;
    	background-color: #33cf59;
    	border: solid 1px #ededed;
      font-family: Montserrat;
      font-size: 16px;
      font-weight: 300;
      letter-spacing: 0.6px;
      text-align: left;
      color: #ffffff;
      padding-left: 15px !important;
      line-height: 42px;
    }
    #select-day-event-list li {
      list-style: none;
    }
    #select-day-event-list li span{
      font-family: Montserrat;
      font-size: 12px;
      letter-spacing: 0.5px;
      text-align: left;
      color: #38384a;
    }
    #select-day-event-list li p{
      opacity: 0.6;
      font-family: Montserrat;
      font-size: 11.3px;
      letter-spacing: 0.4px;
      text-align: left;
      color: #343441;
    }
    #select-day-event-list .event-time {
      font-family: Montserrat;
      font-size: 20px;
      font-weight: 300;
      text-align: center;
      color: #38384a;
      height: 76.6px;
      line-height: 76.6px;
    }
    .select-day-event-list ul, .agenda ul {
      -webkit-padding-start: 0 !important;
    }
    .select-day-event-list ul {
      margin-bottom:0 !important;
    }
    .agenda-header {
      height: 42px;
    	background-color: #fafafa;
      border-top: solid 1px #ededed;
      border-bottom: solid 1px #ededed;
      width: 100%;
      padding-left: 15px !important;
      line-height: 42px;
      font-family: Montserrat;
      font-size: 16px;
      font-weight: 300;
      letter-spacing: 0.6px;
      text-align: left;
      color: #38384a;
    }
    .agenda-header i, #select-day-event-title i {
      margin-top: 12px;
    }
    #select-day-event-title i {
      color: #ffffff;
    }
    .agenda-header i {
      color: #6b7897
    }

    #agenda-list li {
      list-style: none;
      border-bottom: solid 1px #ededed;
    }
    .agenda-details, .event-details {
      margin-top: 18px;
    }
    .agenda-day {
      opacity: 0.6;
      font-family: Montserrat;
      font-size: 36.3px;
      font-weight: 300;
      letter-spacing: 1.4px;
      text-align: center;
      color: #343441;
      padding-left: 35px;
      height: 76.6px;
      line-height: 76.6px;
    }
    .agenda-date {
      opacity: 0.6;
      font-family: Montserrat;
      font-size: 11.3px;
      letter-spacing: 0.4px;
      text-align: left;
      color: #343441;
    }
    .agenda-title {
      font-family: Montserrat;
      font-size: 11.3px;
      letter-spacing: 0.4px;
      text-align: left;
      color: #343441;
    }
    .no-event {
      height: 76.6px;
      line-height: 76.6px;
    }
    .past-event-dot, .future-event-dot , .today-event-dot, .space-dot {
      width: 5px;
      height: 5px;
      border-radius: 5px;
      margin-left: auto;
      margin-right: auto;
    }
    .future-event-dot {
      background-color: #ff5b5b;
    }
    .past-event-dot {
      background-color: rgba(52, 72, 94, 0.54);
    }
    .today-event-dot {
      background-color: #ffffff;
    }
    .fc-next-button, .fc-prev-button {
      border: 0;
      background: none;
      box-shadow: none;
    }
    .fc-next-button:focus, .fc-prev-button:focus {
      outline: none;
    }
    .fc-icon-right-single-arrow, .fc-icon-left-single-arrow {
      background: #fafafa;
      border-radius: 11px;
      height: 22px;
      width: 22px;
      vertical-align: middle;
      padding-top: 5px;
    }
    .fc-state-default {
      text-shadow: none;
    }
    .fc-header-toolbar .fc-left h2{
      font-family: Montserrat;
      font-size: 15px !important;
      letter-spacing: 0.6px;
      text-align: center;
      color: #6b7897;
      margin: 6px;
    }
    .fc-header-toolbar .fc-left i {
      margin-top: 7px;
    }
    .fc-header-toolbar .fc-left .dropdown-menu {
      width: 252px;
      left: -144px;
      height: 190px;
      overflow: auto;
      padding: 0;
      border: 0;
    }
    .monthSelector-year {
	    height: 19px;
	    background-color: #ededed;
    }
    #monthSelector {
      font-family: Montserrat;
      font-size: 12px;
      letter-spacing: 0.5px;
      text-align: left;
    }
    #monthSelector a{
      color: #38384a;
    }
    #monthSelector .col-xs-3 {
      margin-bottom: 10px;
      margin-top: 10px;
    }
    #monthSelector .previousMonth a{
      color: #9b9b9b !important;
    }
    .calendar-tile .calendar-header .pull-right .add-event {
      width: 25px;
    	height: 25px;
    	background-color: #33cf59;
      border-width: 0 !important;
      border-radius: 25px;
      font-size: 18px;
      font-weight: 600;
      color: #fff;
      padding: 0 !important;
      margin-right: 10px;
    }
    .calendar-tile .calendar-header .pull-right input:focus {
      outline: none;
    }
    .calendar-tile .calendar-header .pull-right .dropdown-menu {
      width: 328px;
      left: -303px;
      height: 187px;
      overflow: auto;
      padding: 0;
      border: solid 1px #ededed;
    }
    .calendar-tile .calendar-header .pull-right .closeAddEventWindow, .calendar-tile .calendar-header .pull-right .submitEvent{
      height: 47px;
    	border: solid 1px #ededed;
      font-family: Montserrat;
      font-size: 12px;
      font-weight: bold;
      text-align: center;
      color: #ffffff;
    }
    .calendar-tile .calendar-header .pull-right .closeAddEventWindow{
      border-radius: 0 0 0 5px;
    }
    .calendar-tile .calendar-header .pull-right .submitEvent{
      border-radius: 0 0 5px 0;
    }
    .calendar-tile .calendar-header .pull-right  .containers {
      padding: 15px;
      width: 100%;
    }
    .calendar-tile .calendar-header .pull-right  .containers span {
      font-family: Montserrat;
      font-size: 12px;
      font-weight: 600;
      text-align: left;
      color: #6b7897;
      margin-bottom: 15px;
    }
    .calendar-tile .calendar-header .pull-right .inputEvent {
      height: 42px;
      border-radius: 4px;
      background-color: #ffffff;
      border: solid 1px #ededed;
      margin-bottom: 15px;
    }
    .calendar-tile .calendar-header .pull-right .closeAddEventWindow{
      background-color: #6b7897;
    }
    .calendar-tile .calendar-header .pull-right .submitEvent {
      background-color: #33cf59;
    }
    .calendar-header .calendar-title .dropdown-menu {
      border: solid 1px #ededed;
      padding: 0;
    }
    .calendar-header .calendar-title .dropdown-menu a {
      font-family: Montserrat;
      font-size: 12px;
      letter-spacing: 0.5px;
      text-align: left;
      color: #38384a;
    }
    .calendar-header .calendar-title .dropdown-menu a:hover {
      text-decoration: none;
    }
    .calendar-header .calendar-title li {
      padding: 15px;
      width: 232px;
      border-bottom: solid 1px #ededed;
    }
    .calendar-header .calendar-title li .calendar-dot {
      width: 10px;
    	height: 10px;
      border-radius: 10px;
    	background-color: #33cf59;
    	border: solid 1px #ededed;
      display: inline-block;
      margin-right: 15px;
    }

  </style>

  <script type="text/javascript">

      $(document).ready(function() {
        $('#calendar').fullCalendar({
            googleCalendarApiKey: 'AIzaSyABvxeFnwG4_2QlYk7EJD5hb0Zuj4HaZ8Q',
            events: {
                googleCalendarId: 'five.test@test-det-edu.com',
                className: 'gcal-event',
                success: function (data) {

                      var futureEvents = [];
                      var todayEvents = [];
                      for (var i = 0; i < data.length; i++) {
                        var today = new Date().setHours(0,0,0,0);
                        var eventDate = new Date(data[i].start).setHours(0,0,0,0);
                        if (eventDate > today) {
                          futureEvents.push(data[i]);
                        } else if (eventDate === today) {
                          todayEvents.push(data[i]);
                        }
                      }

                      futureEvents.sort(function(a,b){
                        return new Date(a.start) - new Date(b.start) ;
                      });

                      $('#agenda-list').empty();
                      if (futureEvents.length >0) {
                        futureEvents.slice(0, 5).forEach(function(element) {
                          var agendadate = element.title ? '<span class="agenda-date">'+moment(element.start).format("MMMM YYYY")+'</span>': "";
                          var title = element.title ? '<p class="agenda-title">'+element.title+'</p>': "";
                          $('#agenda-list').append('<li><a href="'+element.url+'"><div class="row"><div class="col-xs-3 agenda-day">'+moment(element.start).format("D")+'</div><div class="col-xs-9 agenda-details">'+agendadate+title+'</div></div></a></li>');
                        });
                      } else {
                        $('#agenda-list').append('<div class="no-event">No Events</div>');
                      }

                      if (todayEvents.length>0) {
                        todayEvents.forEach(function(element) {
                          $('#select-day-event-title span').empty();
                          $('#select-day-event-list').empty();
                          $('#select-day-event-title span').append(moment(element.start).format('Do MMMM YYYY'));
                          var title = element.title ? '<span class="event-title">'+element.title+'</span>': "";
                          var description = element.description ? '<p class="event-description">'+element.description+'</p>':"";
                          $('#select-day-event-list').append('<li><a href="'+element.url+'"><div class="row"><div class="col-xs-3 event-time">'+moment(element.start).format("HH:mm")+'</div><div class="col-xs-9 event-details">'+title+description+'</div></div></a></li>');
                        });
                      } else {
                        $('#select-day-event-title span').empty();
                        $('#select-day-event-list').empty();
                        $('#select-day-event-title span').append(moment().format('Do MMMM YYYY'));
                        $('#select-day-event-list').append('<div class="no-event">No Events Today</div>');
                      }
                    },
            },
            header: {
              left: 'title',
              center: '',
              right: 'prev, next'
            },
            dayNamesShort: ['S','M','T','W','T','F','S'],
            fixedWeekCount: false,
            aspectRatio: 1,

            eventRender: function (event, element, view) {
              var selectDate = moment(event.start).format('YYYY-MM-DD');
              var today = moment(new Date()).format('YYYY-MM-DD');
              var teventCount = $('#calendar').find('.fc-day-top[data-date="' + selectDate + '"]').children('div.today-event-dot').length;
              var peventCount = $('#calendar').find('.fc-day-top[data-date="' + selectDate + '"]').children('div.past-event-dot').length;
              var feventCount = $('#calendar').find('.fc-day-top[data-date="' + selectDate + '"]').children('div.future-event-dot').length;
              if (selectDate === today && teventCount === 0) {
                $('#calendar').find('.fc-day-top[data-date="' + selectDate + '"]').prepend('<div class="today-event-dot"></div>');
              } else if (selectDate < today && peventCount === 0) {
                $('#calendar').find('.fc-day-top[data-date="' + selectDate + '"]').prepend('<div class="past-event-dot"></div>');

              } else if (selectDate > today && feventCount === 0) {
                $('#calendar').find('.fc-day-top[data-date="' + selectDate + '"]').prepend('<div class="future-event-dot"></div>');
              }
            },

            eventAfterAllRender: function(view) {

              $('.fc-header-toolbar .fc-left a').remove();
              $('.fc-header-toolbar .fc-left .dropdown').remove();
              $('.fc-header-toolbar .fc-left').append('<div class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-caret-down" aria-hidden="true"></i></a><div id="monthSelector" class="dropdown-menu row"></div></div>');

              var theMonths = new Array("JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC");
              var today = new Date();
              var aMonth = 0;
              var aYear = today.getFullYear();
              var monthSelector=[]
              var i;
              for (i=0; i<96; i++) {
                monthSelector.push({"month":theMonths[aMonth],"year":aYear})
                aMonth++;
                if (aMonth > 11) {
                  aMonth = 0;
                  aYear += 1;
                }
              }

              monthSelector.forEach(function(element, index, array) {
                if (index===0 || array[index-1].year != element.year) {
                  $("#monthSelector").append("<div class='col-xs-12 monthSelector-year'>"+element.year+"</div>");
                }
                if (element.month===theMonths[today.getMonth()] && element.year === today.getFullYear()) {
                  $("#monthSelector").append("<div class='col-xs-3' id='currentMonth'><a href='#' id='goto"+(index+1)%12+'-15-'+element.year+"'>"+element.month+"</a></div>");
                } else if(index < today.getMonth() && element.year === today.getFullYear()){
                  $("#monthSelector").append("<div class='col-xs-3 previousMonth'><a href='#' id='goto"+(index+1)%12+'-15-'+element.year+"'>"+element.month+"</a></div>");
                } else {
                  $("#monthSelector").append("<div class='col-xs-3'><a href='#' id='goto"+(index+1)%12+'-15-'+element.year+"'>"+element.month+"</a></div>");
                }
              });

              $('.fc-event-container a').attr('target', '_blank');

              $('[id^=goto]').click(function() {
                var gotoMonth = this.id.replace("goto", '');
                $('#calendar').fullCalendar('gotoDate', gotoMonth);
              });

              $(".fc-day-top").not(":has(.future-event-dot)").not(":has(.today-event-dot)").not(":has(.past-event-dot)").prepend('<div class="space-dot"></div>');

            },
            eventMouseover: function(calEvent, jsEvent) {
                var tooltip = '<div class="tooltipevent">' + calEvent.title + '</div>';
                var $tooltip = $(tooltip).appendTo('body');

                $(this).mouseover(function(e) {
                    $(this).css('z-index', 10000);
                    $tooltip.fadeIn('500');
                    $tooltip.fadeTo('10', 1.9);
                }).mousemove(function(e) {
                    $tooltip.css('top', e.pageY + 10);
                    $tooltip.css('left', e.pageX + 20);
                });
            },

            eventMouseout: function(calEvent, jsEvent) {
                $(this).css('z-index', 8);
                $('.tooltipevent').remove();
            },
            dayClick: function(date, allDay, jsEvent, view) {
              $("#calendar").find("td").css( "background", "#33cf59" ).attr('style', 'background: none !important; color: #000');
              $('#calendar').find('.today-event-dot').attr('style', 'background-color: #33cf59;');
              $('#calendar').find('.future-event-dot').attr('style', 'background-color: #ff5b5b;');
              $('#calendar').find('.past-event-dot').attr('style', 'background-color: rgba(52, 72, 94, 0.54);');
              var selectDate = moment(date).format('YYYY-MM-DD');
              var today = moment(new Date()).format('YYYY-MM-DD');
              if (selectDate === today) {
                $('#calendar').find('.fc-day-top[data-date="' + today + '"] .today-event-dot').attr('style', 'background-color: #ffffff;');
              } else if(selectDate > today){
                $('#calendar').find('.fc-day-top[data-date="' + today + '"] .today-event-dot').attr('style', 'background-color: #33cf59;');
                $('#calendar').find('.fc-day-top[data-date="' + selectDate + '"] .future-event-dot').attr('style', 'background-color: #fff;');
              } else if (selectDate < today) {
                $('#calendar').find('.fc-day-top[data-date="' + today + '"] .today-event-dot').attr('style', 'background-color: #33cf59;');
                $('#calendar').find('.fc-day-top[data-date="' + selectDate + '"] .past-event-dot').attr('style', 'background-color: #fff;');
              }
              $('#calendar').find('.fc-day[data-date="' + selectDate + '"]').attr('style', 'background: #33cf59 !important; border-radius: 35px;');
              $('#calendar').find('.fc-day-top[data-date="' + selectDate + '"]').attr('style', 'color: #fff; border-radius: 35px;');

              var dayEvents = $('#calendar').fullCalendar( 'clientEvents', function(event){
                return new Date(event.start).setHours(0, 0, 0, 0) === new Date(date).setHours(0, 0, 0, 0);
              });

              $('#select-day-event-list').empty();
              if (dayEvents.length>0) {
                dayEvents.forEach(function(element) {
                $('#select-day-event-title span').empty();
                $('#select-day-event-title span').append(moment(element.start).format('Do MMMM YYYY'));
                var title = element.title ? '<span class="event-title">'+element.title+'</span>': "";
                var description = element.description ? '<p class="event-description">'+element.description+'</p>':"";
                $('#select-day-event-list').append('<li><a href="'+element.url+'"><div class="row"><div class="col-xs-3 event-time">'+moment(element.start).format("HH:mm")+'</div><div class="col-xs-9 event-details">'+title+description+'</div></div></a></li>');
                });

              } else {
                $('#select-day-event-title span').empty();
                $('#select-day-event-title span').append(moment(date).format('Do MMMM YYYY'));
                $('#select-day-event-list').append('<div class="no-event">No Events Today</div>');
              }

            }

        });

      });

      var clientId = '608000671846-9t2lkeer37116og42u3l5lv5numk60b6.apps.googleusercontent.com';
      var apiKey = 'AIzaSyABvxeFnwG4_2QlYk7EJD5hb0Zuj4HaZ8Q';
      var scopes = 'https://www.googleapis.com/auth/calendar';
      var calendarId = 'five.test@test-det-edu.com';


      function handleClientLoad() {
        gapi.client.setApiKey(apiKey);
        window.setTimeout(checkAuth,1);
      }

      function checkAuth() {
        gapi.auth.authorize({'client_id': clientId, 'scope': scopes, 'immediate': true}, handleAuthResult);

      }

      function handleAuthResult(authResult) {
         if (authResult && !authResult.error) {
           $("#submitEvent").click(function() {
             var description = $("#inputEvent").val();
             var start = $("#startTime").val();
             var end = $("#endTime").val();

             stateDate = new Date(start).toISOString();
             endDate = new Date(end).toISOString();
              var resource = {
                  "summary": description,
                  "start": {
                    "dateTime": stateDate
                  },
                  "end": {
                    "dateTime": endDate
                  }
                };
                makeRpcRequest(resource);
           });
         } else {
            handleAuthClick();
         }
      }

      function handleAuthClick() {
         gapi.auth.authorize(
            {
               client_id: clientId,
               scope: scopes,
               immediate: false
            }, handleAuthResult);
         return false;
      }

  function makeApiCall() {

           requestList = gapi.client.calendar.events.list({
              'calendarId': calendarId
           });

           eventsList = [];

           requestList
              .then(function (resp) {
                 if (resp.result.error) {
                    reportError('Google Calendar API: ' + data.error.message, data.error.errors);
                 } else if (resp.result.items) {
                    resp.result.items.forEach(function (entry, index) {
                       eventsList.push({
                          id: entry.id,
                          title: entry.summary,
                          start: entry.start.dateTime || entry.start.date,
                          end: entry.end.dateTime || entry.end.date,
                          url: "http://127.0.0.1:8081/calendar-tile.html",
                          location: entry.location,
                          description: entry.description
                       });
                    });
                 }

                 if (eventsList.length > 0) {
                 }

              }, function (reason) {
                 console.log('Error: ' + reason.result.error.message);
              });
        }

        function makeRpcRequest(eventData) {
           gapi
              .client
              .load('calendar', 'v3')
              .then(function () {
                console.log("sss");
                 request = gapi.client.calendar.events.insert({
                    'calendarId': calendarId,
                    'resource': eventData
                 });
                 request.then(function (resp) {
                    if (resp.result.error) {
                       reportError('Google Calendar API: ' + data.error.message, data.error.errors);
                    } else {
                       makeApiCall();
                       var creator = resp.result.creator.email;
                       var calendarEntry = resp.result.htmlLink;
                    }
                 }, function (reason) {
                    console.log('Error: ' + reason.result.error.message);

                 });
              });
        }


</script>
<script src="https://apis.google.com/js/client.js?onload=handleClientLoad"></script>
    <div class="tile-content">
      <div class="row calendar-tile">
        <div class="calendar-header row">
          <div class="pull-left calendar-title">
            <div class="dropdown">
              <i class="fa fa-calendar" aria-hidden="true"></i> CALENDAR
              <a class="dropdown-toggle" data-toggle="dropdown" href="#"><i class="fa fa-caret-down" aria-hidden="true"></i></a>

              <ul class="dropdown-menu">
                <a href="#"><li><span class="calendar-dot"></span>My Calendar</li></a>
                <a href="#"><li><span class="calendar-dot"></span>Milson's Park Public</li></a>
                <a href="#"><li><span class="calendar-dot"></span>NSW State Holidays</li></a>
              </ul>
            </div>
          </div>
          <div class="pull-right">
            <div class="dropdown">
              <input class="btn add-event dropdown-toggle" type="button" data-toggle="dropdown" id="add-event" value="+">
              <div class="dropdown-menu">
                <div class="containers">
                  <span>ENTER EVENT</span>
                  <input class="col-xs-12 inputEvent" id="inputEvent" type="text" name="" value="">
                  <div class='col-sm-6'>
                      <div class="form-group">
                          <div class='input-group date' id='datetimepicker1'>
                              <input type='text' class="form-control" id="startTime" />
                              <span class="input-group-addon">
                                  <i class="fa fa-calendar" aria-hidden="true"></i>
                              </span>
                          </div>
                      </div>
                  </div>
                  <div class='col-sm-6'>
                      <div class="form-group">
                          <div class='input-group date' id='datetimepicker2'>
                              <input type='text' class="form-control" id="endTime"/>
                              <span class="input-group-addon">
                                  <i class="fa fa-calendar" aria-hidden="true"></i>
                              </span>
                          </div>
                      </div>
                  </div>
                </div>

                <input class="col-xs-6 closeAddEventWindow" type="button" name="" value="CANCEL">
                <input class="col-xs-6 submitEvent" id="submitEvent" type="button" name="" value="SAVE">
              </div>
            </div>
          </div>
        </div>




        <div id='calendar'></div>

        <div class="row select-day-event">
          <div class="col-xs-12" id="select-day-event-title">
            <span></span>
            <a href="#"><i class="fa fa-caret-down pull-right" aria-hidden="true" data-toggle="collapse" data-target="#select-event"></i></a>
          </div>
          <div class="select-day-event-list col-xs-12 collapse in" id="select-event">
            <ul id="select-day-event-list">

            </ul>
          </div>
        </div>

        <div class="row agenda">
          <div class="agenda-header col-xs-12">
            Agenda
            <a href="#"><i class="fa fa-caret-down pull-right" aria-hidden="true" data-toggle="collapse" data-target="#agenda"></i></a>
          </div>
          <div class="agenda-list collapse in" id="agenda">
            <ul id="agenda-list">

            </ul>
          </div>
        </div>

      </div>
    </div>

<script type="text/javascript">
  $(".agenda-header a").click(function() {
    $(this).find('i').toggleClass('fa-caret-down fa-caret-right');
  });

  $("#select-day-event-title a").click(function() {
    $(this).find('i').toggleClass('fa-caret-down fa-caret-right');
  });

  $(function () {
    $(".closeAddEventWindow").on("click", function (e) {
      $("#add-event").dropdown("toggle");
    });

    $("#submitEvent").on("click", function (e) {
      $("#add-event").dropdown("toggle");
    });

  });

  $('#datetimepicker1').datetimepicker();
  $('#datetimepicker2').datetimepicker();

  $(function() {
      $(".calendar-header .pull-right .dropdown").on("click", "#datetimepicker1", function(e) {
          e.stopPropagation();
      });
      $(".calendar-header .pull-right .dropdown").on("click", "#datetimepicker2", function(e) {
          e.stopPropagation();
      });
  });

</script>
