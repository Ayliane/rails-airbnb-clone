$(document).ready(function () {
  if ($.trim($(".status").text()) == "Pending") {
    $(".status").addClass("pending")
  } else {
    $(".status").addClass("confirmed")
  };
});
