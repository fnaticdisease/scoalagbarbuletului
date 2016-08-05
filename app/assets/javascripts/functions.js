$(document).ready(function(){


		$(".download-button").on("click",function(){

				$(".overlay-page").addClass("overlay-activ");
				$("body").css("overflow","hidden");

				var link= $(this).attr("data-link");

				$(".overlay-content iframe").attr('src',link);
		});


		$(".close-button .fa").on("click",function(){

				$(".overlay-page").removeClass("overlay-activ");
				$("body").css("overflow","visible");
		});


});