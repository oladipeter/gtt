// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function (){

    /*SLIDER*/

    $('.sliderWrap').liteSlider({
	content : '.sliderContent',	// The sliding content selector. Can be a list also. eg:li
	width : 950,			// Width of the slider
	height : 250,			// Height of the slider
	autoplay : true,		// Autoplay the slider. Values, true & false
	delay : 5,			// Transition Delay. Default 3s
	buttonsClass : 'buttons',	// Button's class
	activeClass : 'active',		// Active class
	controlBt : '.control',		// Control button selector
	playText : 'Play',		// Play text
	pauseText : 'Stop'		// Stop text
});



});
