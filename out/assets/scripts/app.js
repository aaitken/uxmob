(function() {
  $("ul").on("click", "a", function(e) {
    var target;
    e.preventDefault();
    target = $(this).attr('data-hook');
    $('img').addClass('is-hidden');
    return $("#" + target).removeClass('is-hidden');
  });

}).call(this);
