$(document).on('ready page:load', function(){
	$('.rating').raty( { path: '/assets', scoreName: 'comment[rating]'} );
	$('.rated').raty({ path: '/assets',
		readOnly: true,
		score: function() {
			return $(this).attr('data-score');
		}
	}); // Raty rating stars
	

	$('.img-zoom').elevateZoom({
			
			scrollZoom 		: true,
			borderSize		: 2,
			borderColour 		: "rgb(136,136,136)",
			tintColour 		: "#e7e7e7",
			zoomWindowWidth 	: 200,
			zoomWindowHeight 	: 150,
			zoomWindowPosition	: 1,
			zoomWindowOffetx	: 12,
			zoomWindowOffety	: 0,
			//zoomWindowFadeIn	: 500,
			zoomWindowFadeOut	: 500,
			lensFadeIn		: 500,
			lensFadeOut		: 500 

			
			
			
	}); // elevateZoom on show page
});