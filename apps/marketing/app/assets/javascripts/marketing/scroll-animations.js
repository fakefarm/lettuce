/* global WOW */

$(function() {
  if (Modernizr.cssanimations) {
    new WOW({
      mobile: false
    }).init();
  }
});
