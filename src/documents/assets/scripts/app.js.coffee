impress().init()
$(document).foundation()


$menu = $("#ama-menu")
$menu.on 'click', 'a', ->
  $menu.find('a').removeClass('ama-is-active')
  $(this).addClass('ama-is-active')
