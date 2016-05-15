(function() {
  var $menu;

  impress().init();

  $(document).foundation();

  $menu = $("#ama-menu");

  $menu.on('click', 'a', function() {
    $menu.find('a').removeClass('ama-is-active');
    return $(this).addClass('ama-is-active');
  });

  $(document).ready(function() {
    var $target, id, setUpwardStates;
    id = document.location.href.split('#/')[1];
    $target = $("[href='#/" + id + "']");
    $target.addClass('ama-is-active');
    $target.next().css('display', 'block');
    setUpwardStates = function() {
      var $targetGreatGrand;
      $target.parent().attr('aria-expanded', 'true');
      $target.parent().parent().css('display', 'block');
      $targetGreatGrand = $target.parent().parent().parent();
      if ($targetGreatGrand.is('li')) {
        $target = $targetGreatGrand.find('a:eq(0)');
        return setUpwardStates();
      }
    };
    return setUpwardStates();
  });

}).call(this);
