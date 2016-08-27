$(document).ready(function() {
  $('#flash').hide().delay(800).fadeIn(800).delay(4000).fadeOut(800)

  $('#show-new-comment').click(function() {
    $('#new-comment').toggleClass('hidden');
  })
});
