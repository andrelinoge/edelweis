//= require jquery
//= require jquery_ujs
//= require bootstrap_sb_admin_base_v2
//= require unslider

$(function() {
  $('#lang-switcher').mouseenter(function() {
    $('#lang-options').show();
  }).mouseleave(function() {
    $('#lang-options').hide();
  });

  $('#slider').unslider({
    animation: 'fade',
    autoplay: true,
    arrows: false,
    nav: false
  });

  $('.convert-links-to-buttons').find('a').addClass('btn green-btn');

  $('.add-ref-to-links').find('a').each(function(_i, el) {
    var link = $(el);
    link.attr('href', link.attr('href') + "?ref=" + window.ref_param);
  });

  $('#wind').click(function() {
    $('#sun').removeClass('active');
    $('#wind').addClass('active');
    $('.sun').hide();
    $('.wind').show();
  });

  $('#sun').click(function() {
    $('#wind').removeClass('active');
    $('#sun').addClass('active');
    $('.wind').hide();
    $('.sun').show();
  });

  $('#calc_input').keyup(function() {
    var value = $(this).val();
    $('#profit_result').html(Math.round(314 * value) / 100);
  });
});

