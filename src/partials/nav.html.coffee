ul class:"menu vertical", ->
  for group, views of @document.nav
    li ->
      a href:"#", group
      ul class:"menu vertical nested", ->
        for view, states of views
          li ->
            a href:"#", view
            ul class:"menu vertical nested", ->
              for state in states
                li ->
                  a href:"##{state[0].replace(/ /g,'').toLowerCase()}", state[0]
