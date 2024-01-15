$(window).scroll(function () {
  var pos = $('main').offset();
  if ($(this).scrollTop() > pos.top) {
    $('header').fadeIn();
  } else {
    $('header').fadeOut();
  }
});
