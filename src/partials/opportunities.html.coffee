for group, views of @document.nav
  for view, states of views
    for state in states
      div id:state[0].replace(/ /g,'').toLowerCase(), class:"step ama-slide", ->
        img src:"#{@document.roots['opportunities']}#{state[1]}.png" 
