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
//= require backend/bootstrap
//= require backend/app
//= require backend/jquery.slimscroll
//= require backend/fastclick
//= require backend/picker
//= require backend/picker.date
//= require backend/bootstrap-datepicker
//= require backend/bootstrap-timepicker
//= require select2
//= require_tree .

$('.select').select2();

$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
