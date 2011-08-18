// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function(){

  $("#mikrovoks_tip").tipTip({
    defaultPosition: 'bottom',
    delay: 200
  });

  $("#mikrokam_tip").tipTip({
    defaultPosition: 'bottom',
    delay: 200
  });

  $("#sequence_tip").tipTip({
    defaultPosition: 'bottom',
    delay: 200
  });

  $("#edtr_tip").tipTip({
    defaultPosition: 'bottom',
    delay: 200
  });

  $("#mvmonitor_tip").tipTip({
    defaultPosition: 'bottom',
    delay: 200
  });

  $("#digirat_tip").tipTip({
    defaultPosition: 'bottom',
    delay: 200
  });

  /* SLIDER */

  $(".slidetabs").tabs(".images > div", {

        // enable "cross-fading" effect
        effect: 'fade',
        fadeOutSpeed: "slow",

        // start from the beginning after the last tab
        rotate: true

        // use the slideshow plugin. It accepts its own configuration
    }).slideshow();

    $(".slidetabs").data("slideshow").play();

});
