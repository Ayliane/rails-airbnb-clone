$(document).ready(function() {
  $(".status-true").bind('change', function(){

  if (this.checked != undefined){
    $.ajax({
      url: '/bookings/'+this.value+'/toggle',
      type: 'PUT',
      data: {"confirmation_status": this.checked}
    });
  }
  else {
     alert("no");
  }
});
});
