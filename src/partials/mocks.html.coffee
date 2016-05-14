makeSlides = (obj)->
  for key, val of obj
    if val.constructor isnt Object
      div id:val, class:"step ama-slide", ->
        img src:"#{@imagesRoot}#{val}.png"
        if @getFileAtPath("includes/#{val}.html.md")
          @include("includes/#{val}.html.md")
    else
      makeSlides(val)

#===

makeSlides(@document.nav)
