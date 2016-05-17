(function() {
  var $menu;

  impress().init();

  $(document).foundation();

  $menu = $("#ama-menu");

  $menu.on('click', 'a', function() {
    $menu.find('a').removeClass('ama-is-active');
    return $(this).addClass('ama-is-active');
  });

  document.addEventListener('impress:stepenter', function() {
    var $target, ancestor, href, i, id, len, makeAncestors, ref, scroll;
    href = document.location.href.split('#/')[1];
    id = href.split('?')[0];
    scroll = document.location.href.split('?')[1];
    $target = $("[href='#/" + href + "']");
    window.$targetChildren = $target.next();
    window.$menu = $('#ama-menu');
    window.ancestors = [];
    makeAncestors = function() {
      var $ancestor;
      $ancestor = $target.parent().parent();
      console.log($ancestor.attr('id'));
      if ($ancestor.is('ul')) {
        ancestors.push($ancestor);
        $target = $ancestor;
        return makeAncestors();
      }
    };
    $menu.find('a').removeClass('ama-is-active');
    $target.addClass('ama-is-active');
    makeAncestors();
    ancestors.reverse();
    ref = ancestors.slice(1);
    for (i = 0, len = ref.length; i < len; i++) {
      ancestor = ref[i];
      $menu.foundation('down', ancestor);
    }
    if ($targetChildren.length) {
      $menu.foundation('down', $targetChildren);
    }
    if (scroll) {
      return $(window).scrollTop(scroll);
    }
  });

}).call(this);
