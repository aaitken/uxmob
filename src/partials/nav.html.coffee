deduceId = (string)->
  string.replace(/ /g,'').toLowerCase()

makeItem = (subView)->
  li ->
    a href:"#", subView[0]

makeParentWithChildren = (view, subViews)->
  li ->
    a href:"#", view
    ul class:"menu vertical nested", ->
      for subView, index in subViews
        if subView.constructor is Array 
          if index isnt 0 then makeItem(subView)
        else if subView.constructor is Object
          for view, subViews of subView
            makeParentWithChildren(view, subViews)

#===
    
ul class:"menu vertical", "data-accordion-menu":"data-accordion-menu", "data-multi-open":"false", "data-slide-speed":"0", ->
  for group, views of @document.nav
    li ->
      a href:"#", group
      ul class:"menu vertical nested", ->
        for view, subViews of views
          makeParentWithChildren(view, subViews)
