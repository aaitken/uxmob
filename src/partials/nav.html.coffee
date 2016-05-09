makeMember = (subView)->
  li ->
    a href:"##{subView[1]}", subView[0]

makeFamily = (view, subViews)->
  li ->
    a href:"##{(->
      if subViews[0].constructor is Array then return subViews[0][1])()}", view
    ul class:"menu vertical nested", ->
      for subView, index in subViews
        if subView.constructor is Array 
          if index isnt 0 then makeMember(subView)
        else if subView.constructor is Object
          for view, subViews of subView
            makeFamily(view, subViews)

#===
    
ul class:"menu vertical", "data-accordion-menu":"data-accordion-menu", "data-multi-open":"false", "data-slide-speed":"0", ->
  for group, views of @document.nav
    li ->
      a group
      ul class:"menu vertical nested", style:"display: block", ->
        for view, subViews of views
          makeFamily(view, subViews)
          @deduceId()
