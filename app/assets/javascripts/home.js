//Railscast #136 Jquery for Ajax. Currently unused/unncesseary
//jQuery.ajaxSetup({
//	'beforeSend': function (xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
//});
jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

$(function() {
  $( "#myDatePicker" ).datepicker({
  });
  $("#myDatePicker").change(function()
  {
    $.post(
      "/home",
      {
        date_selected: $("#myDatePicker").val()
      },
      null,
      "script"
    );
  });
});

