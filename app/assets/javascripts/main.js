$(document).ready(function() {

	$(window).on("scroll", function() {
		if($(window).scrollTop() > 50) {
			$("header").addClass("active");
		}
		else{
			$("header").removeClass("active");
		}
	})

	$('#menu-btn').click(function() {
		$('nav').toggle('fast');
		$("header").addClass("active");
	});

	$('a.dropdown-menu').click(function(e) {
		e.preventDefault();
		$('ul.dropdown-content').toggle('fast');
		$("header").addClass("active");
	});

	var thisButton = $('.fa-share-alt');

	$(thisButton).click(function(e) {
		e.preventDefault();
		$('.share-btns').toggle('fast').css('display: inline');
	});

});

//AIzaSyDLdCBtXz_BjUcDASbdl_7Iox7aalBsZrs

function initMap() {
  var customMapType = new google.maps.StyledMapType([{"stylers":[{"saturation":-100},{"gamma":1}]},{"elementType":"labels.text.stroke","stylers":[{"visibility":"off"}]},{"featureType":"poi.business","elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"poi.business","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"poi.place_of_worship","elementType":"labels.text","stylers":[{"visibility":"off"}]},{"featureType":"poi.place_of_worship","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"road","elementType":"geometry","stylers":[{"visibility":"simplified"}]},{"featureType":"water","stylers":[{"visibility":"on"},{"saturation":50},{"gamma":0},{"hue":"#50a5d1"}]},{"featureType":"administrative.neighborhood","elementType":"labels.text.fill","stylers":[{"color":"#333333"}]},{"featureType":"road.local","elementType":"labels.text","stylers":[{"weight":0.5},{"color":"#333333"}]},{"featureType":"transit.station","elementType":"labels.icon","stylers":[{"gamma":1},{"saturation":50}]}], {
      name: 'Custom Style'
  });

  var customMapTypeId = 'custom_style';

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 10,
    center: {lat: 39.012510, lng: -76.444740}, // Annapolis.
    disableDefaultUI: true, 
    scrollwheel: false, 
    draggable: false,
    mapTypeControlOptions: {
      mapTypeIds: [google.maps.MapTypeId.ROADMAP, customMapTypeId]
    }
  });
  

  map.mapTypes.set(customMapTypeId, customMapType);
  map.setMapTypeId(customMapTypeId);
}