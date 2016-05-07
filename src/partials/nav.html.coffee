deduceId = (string)->
  string.replace(/ /g,'').toLowerCase()

makeParentWithChildren = (parent, children)->
  li ->
    a href:"##{deduceId(parent+children[0][0])}", parent
    ul class:"menu vertical nested", ->
      for child in children[1..]
        li ->
          a href:"##{deduceId(parent+child[0])}", child[0]


ul class:"menu vertical", "data-accordion-menu":"data-accordion-menu", "data-multi-open":"false", "data-slide-speed":"0", ->
  for group, views of @document.nav
    li ->
      a href:"#", group
      ul class:"menu vertical nested", ->
        for view, states of views
          if states.constructor is Array
            makeParentWithChildren(view, states)
          else
            li ->
              a href:"#", view
              ul class:"menu vertical nested", ->
                for state, subStates of states
                  makeParentWithChildren(state, subStates) 
