
$(".parties").on("click", function(){
  alert("Hi There");
  $("#user_party").val($(this).parent.id);
  $(".edit_user").submit;
});
