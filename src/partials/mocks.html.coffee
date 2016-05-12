makeSlides = (subViews)->
  for subView in subViews
    if subView.constructor is Array 
      div id:"#{subView[1]}", class:"step ama-slide", ->
        img src:"#{@imagesRoot}#{subView[1]}.png"
    else if subView.constructor is Object
      for view, subViews of subView
        makeSlides(subViews)

for group, views of @document.nav
  for view, subViews of views
    makeSlides(subViews)
