impress().init()
$(document).foundation()


#active classing for menu
$menu = $("#ama-menu")
$menu.on 'click', 'a', ->
  $menu.find('a').removeClass('ama-is-active')
  $(this).addClass('ama-is-active')


#deep link functionality
document.addEventListener "impress:stepenter", ->
  console.log document.location.href.split('#/')[1]
