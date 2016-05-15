impress().init()
$(document).foundation()

#active classing for menu
$menu = $("#ama-menu")
$menu.on 'click', 'a', ->
  $menu.find('a').removeClass('ama-is-active')
  $(this).addClass('ama-is-active')


#deep link functionality
$(document).ready ->

  id = document.location.href.split('#/')[1]
  $target = $("[href='#/#{id}']")
  $target.addClass('ama-is-active')
  $target.next().css('display', 'block')
  
  setUpwardStates = ->
    $target.parent().attr('aria-expanded', 'true')
    $target.parent().parent().css('display', 'block')
    $targetGreatGrand = $target.parent().parent().parent()
    if $targetGreatGrand.is('li')
      $target = $targetGreatGrand.find('a:eq(0)')
      setUpwardStates()

  setUpwardStates()
