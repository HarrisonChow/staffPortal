$(document).ready(function() {
  $('body').find('.parent-btn:first').css('border-radius','5px 5px 0 0');
  $('body').find('.parent-btn:last').css('border-radius','0 0 5px 5px');
  $('body').find('.child-btn:last').css('border-radius','0 0 5px 5px');

  current_width = $(window).width();
  if(current_width < 768){
    $("#user-details").removeClass('in');
    $("#user-text .info-btn").text('SHOW');
    $("#group-details").removeClass('in');
    $("#group-text .info-btn").text('SHOW');
  } else {
    $("#user-details").addClass('in');
    $("#user-text .info-btn").text('HIDE');
    $("#group-details").addClass('in');
    $("#group-text .info-btn").text('HIDE');
  }
  //onResize
  $(window).resize(function(){
  var current_width = $(window).width();
  if(current_width < 768){
    $("#user-details").removeClass('in');
    $("#user-text .info-btn").text('SHOW');
    $("#group-details").removeClass('in');
    $("#group-text .info-btn").text('SHOW');
  } else {
    $("#user-details").addClass('in');
    $("#user-text .info-btn").text('HIDE');
    $("#group-details").addClass('in');
    $("#group-text .info-btn").text('HIDE');
  }
  });
});

function collapsing(x) {
  if ($('body').find('.child-btn:last').parent().attr('class') === 'collapse' && $('body').find('.parent-btn:last').parent().attr('id') === x) {
    $('body').find('.parent-btn:last').css('border-radius','0');
  } else {
    $('body').find('.parent-btn:last').css('border-radius','0 0 5px 5px');
  }
}
function toggle(x, y) {
  $( "#"+x+" .child-btn:first" ).toggleClass( "highlight" );
  if ($( "#"+y ).find('.parent-btn').length) {
    $( "#"+y+" .parent-btn:first" ).toggleClass( "darkback" );
  } else {
    $( "#"+y+" .child-btn:first" ).toggleClass( "highdark" );
  }
}
function toggletext(x){
  if ($("#"+x+ " .info-btn").text() === 'HIDE') {
    $("#"+x+ " .info-btn").text('SHOW');
  } else {
    $("#"+x+ " .info-btn").text('HIDE');
  }
}
