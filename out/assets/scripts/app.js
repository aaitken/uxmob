(function() {
  $("ul").on("click", "a", function(e) {
    var $this, target;
    $this = $(this);
    e.preventDefault();
    $('a').removeClass('ama-is-active');
    $this.addClass('ama-is-active');
    target = $this.attr('data-hook');
    $('img').addClass('is-hidden');
    return $("#" + target).removeClass('is-hidden');
  });

}).call(this);
