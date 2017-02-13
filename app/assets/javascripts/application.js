//= require jquery
//= require jquery_ujs
//= require bootstrap_sb_admin_base_v2
//= require unslider

$(function() {
  $('#lang-switcher').mouseenter(function() {
    $('#lang-options').show();
  })
  .mouseleave(function() {
    $('#lang-options').hide();
  });

  $('#slider').unslider({
    animation: 'fade',
    autoplay: true,
    arrows: false,
    nav: false
  });

});

