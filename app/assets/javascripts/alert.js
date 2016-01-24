$(document).ready(function() {
	setTimeout(function(){
		$('#alert, #notice_wrapper').fadeOut("slow", function(){
			$('#alert, #notice_wrapper').remove();
		})
	}, 4500);
});