$(document).ready(function() {
  $(".status-true").bind('change', function() {
    if (this.checked != undefined){
      $.ajax({
        url: '/bookings/'+this.value+'/toggle',
        type: 'PUT',
        data: { "confirmation_status": this.checked },
        success: function(event) {
          $('.alert').remove();
          if ($("#confirmation-checkbox").is(':checked')) {
            $(".wrapper").prepend("<div class='alert alert-info alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='lose'><span aria-hidden='true'>×</span></button>Your dog-sitting is confirmed !</div>");
           } else {
            $(".wrapper").prepend("<div class='alert alert-warning alert-dismissible' role='alert'><button type='button' class='close' data-dismiss='alert' aria-label='Close'><span aria-hidden='true'>&times;</span></button>Your dog-sitting is now pending.</div>");
          }
        }
       });
    } else {
       alert("no");
    }
  });
});
