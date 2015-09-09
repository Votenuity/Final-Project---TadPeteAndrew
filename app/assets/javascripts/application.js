// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
    $('.navbar .dropdown').hover(function() {
        $(this).find('.dropdown-menu').first().stop(true, true).delay(250).slideDown();
    }, function() {
        $(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideUp()
    });
})

$(document).on("change",".votemachine", function(){
  var runner_one = ($("input.runner_one:checked").length);
  var runner_two = ($("input.runner_two:checked").length);
  var runner_three = ($("input.runner_three:checked").length);

$("div.candidate_one_total").html("You have agreed with the first candidate" + " " + (runner_one / (runner_two + runner_one + runner_three))* 100);
$("div.candidate_two_total").html("You have agreed with the second candidate" + " " + (runner_two / (runner_two + runner_one + runner_three))* 100);
$("div.candidate_three_total").html("You have agreed with the third candidate" + " " + (runner_three / (runner_two + runner_one + runner_three))* 100);

});
