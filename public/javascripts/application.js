// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){

  $("#slider2").easySlider({
				controlsBefore:	'<p id="controls2">',
				controlsAfter:	'</p>',
				prevId: 'prevBtn2',
				nextId: 'nextBtn2',

        prevText: 'Previous',
        nextId: 'nextBtn',
        nextText: 'Next',
        controlsShow: true,
        controlsFade: true,
        firstId: 'firstBtn',
        firstText: 'First',
        firstShow: false,
        lastId: 'lastBtn',
        lastText: 'Last',
        lastShow: false,
        vertical: false,
        speed: 800,
        auto: true,
        pause: 5000,
        continuous: true

	});

});
