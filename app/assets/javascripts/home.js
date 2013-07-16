jQuery.ajaxSetup({
	'beforeSend': function (xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});

$(function() {
  $( "#myDatePicker" ).datepicker({
  });
  $("#myDatePicker").change(function(){
  	days_array = myFunction($("#myDatePicker").val());
  	$("#dayMon").text(
  		days_array[1]
  	);	
  	$("#dayTue").text(
  		days_array[2]
  	);	
  	$("#dayWed").text(
  		days_array[3]
  	);	
  	$("#dayThu").text(
  		days_array[4]
  	);	
  	$("#dayFri").text(
  		days_array[5]
  	);	
  	$("#daySat").text(
  		days_array[6]
  	);
  	$("#daySun").text(
  		days_array[7]
  	);		
  });
});

function myFunction(date)
{
var day = moment(date, "MM-DD-YYYY").day();
var week_days = Array(7);

if(day>0){
	var days_since_monday = (day-1);
}
else{
	var days_since_monday = 6;
}

week_days[1] = new moment(date).add('d',-days_since_monday);
week_days[2] = new moment(date).add('d',-days_since_monday + 1);
week_days[3] = new moment(date).add('d',-days_since_monday + 2);
week_days[4] = new moment(date).add('d',-days_since_monday + 3);
week_days[5] = new moment(date).add('d',-days_since_monday + 4);
week_days[6] = new moment(date).add('d',-days_since_monday + 5);
week_days[7] = new moment(date).add('d',-days_since_monday + 6);

return week_days;
}