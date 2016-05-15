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
    var $target, ancestor, i, id, len, makeAncestors, ref;
    id = document.location.href.split('#/')[1];
    $target = $("[href='#/" + id + "']");
    window.$targetChildren = $target.next();
    window.$menu = $('#ama-menu');
    window.ancestors = [];
    $menu.find('a').removeClass('ama-is-active');
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
    $target.addClass('ama-is-active');
    makeAncestors();
    ancestors.reverse();
    ref = ancestors.slice(1);
    for (i = 0, len = ref.length; i < len; i++) {
      ancestor = ref[i];
      $menu.foundation('down', ancestor);
    }
    if ($targetChildren.length) {
      return $menu.foundation('down', $targetChildren);
    }
  });

}).call(this);
