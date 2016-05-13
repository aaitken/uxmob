makeSlides = (obj)->
  for key, val of obj
    if val.constructor isnt Object
      div id:val, class:"step ama-slide", ->
        img src:"#{@imagesRoot}#{val}.png" 
    else
      makeSlides(val)

#===

makeSlides(@document.nav)
