mocks = [
  ['opportunities(png)', 'opportunities'] 
  ['opportunities-new(png)', 'opportunities-new']]

for mock in mocks
  div id:mock[1], class:"step ama-slide", ->
    img src:"#{@document.roots['opportunities']}#{mock[0]}.png" 
