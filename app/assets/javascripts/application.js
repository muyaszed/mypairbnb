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
//= require jquery-ui
//= require jquery.turbolinks
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require turbolinks
//= require_tree .






$(document).ready(function () {
	if($("body").hasClass("lists") || $("body").hasClass("users") || $("body").hasClass("sessions") || $("body").hasClass("searches")) {
		$(".navbar-right").find("a").css("color", "#5E5E5E");
		$(".navbar-brand").css("color", "#5E5E5E");
	}

	$(window).scroll(function() {
   if($(window).scrollTop() + $(window).height() == $(document).height()) {
      $( ".social-wrapper" ).show( "slide", { direction: "down"}, 1000 );
   }
   if($(window).scrollTop() + $(window).height() <= $(document).height() - 50) {
      $( ".social-wrapper" ).hide( "slide", { direction: "down"}, 1000 );
   }
});

		
	

		


	
	

});