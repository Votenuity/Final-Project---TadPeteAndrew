$(document).on("click",".parties", function(){
  $("#user_party").val($(this).parent().attr("id"));
  $(".edit_user").submit();
});
