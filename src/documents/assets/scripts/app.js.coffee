impress().init()
$(document).foundation()

#active classing for menu
$menu = $("#ama-menu")
$menu.on 'click', 'a', ->
  $menu.find('a').removeClass('ama-is-active')
  $(this).addClass('ama-is-active')


#deep link functionality
#$(document).ready ->

document.addEventListener 'impress:stepenter', ->

  href = document.location.href.split('#/')[1]
  id = href.split('?')[0]
  scroll = document.location.href.split('?')[1].split('-')[0]
  $target = $("[href='#/#{href}']")
  window.$targetChildren = $target.next()
  window.$menu = $('#ama-menu')
  window.ancestors = []
  makeAncestors = ->
    $ancestor = $target.parent().parent()
    console.log $ancestor.attr('id')
    if $ancestor.is('ul')
      ancestors.push($ancestor)
      $target = $ancestor
      makeAncestors()

  $menu.find('a').removeClass('ama-is-active')
  $target.addClass('ama-is-active')
  makeAncestors()
  ancestors.reverse()
  for ancestor in ancestors
    $menu.foundation('down', ancestor)
  if $targetChildren.length
    $menu.foundation('down', $targetChildren)
  else
    if ancestors.length is 1
      $menu.foundation('hideAll')
  if scroll
    $(window).scrollTop(scroll)
