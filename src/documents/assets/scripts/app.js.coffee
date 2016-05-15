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


  $target.addClass('ama-is-active')
  makeAncestors()
  ancestors.reverse()

  for ancestor in ancestors[1..]
    $menu.foundation('down', ancestor)
  if $targetChildren.length
    $menu.foundation('down', $targetChildren)
