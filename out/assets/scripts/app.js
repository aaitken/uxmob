(function() {
  var $menu;

  impress().init();

  $(document).foundation();

  $menu = $("#ama-menu");

  $menu.on('click', 'a', function() {
    $menu.find('a').removeClass('ama-is-active');
    return $(this).addClass('ama-is-active');
  });

}).call(this);
