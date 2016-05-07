makeSlide = (parent, child)->
  div id:parent.replace(/ /g,'').toLowerCase()+child[0].replace(/ /g,'').toLowerCase(), class:"step ama-slide", ->
    img src:"#{@document.roots['opportunities']}#{child[1]}.png" 
  

for group, views of @document.nav
  for view, states of views
    if states.constructor is Array
      for state in states
        makeSlide(view, state)
    else
      for state, subStates of states
        for subState in subStates
          makeSlide(state, subState)
      
