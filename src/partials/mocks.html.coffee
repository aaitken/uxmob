makeSlides = (obj)->
  for key, val of obj
    if val.constructor isnt Object
      div id:val, class:"step ama-slide", ->
        img src:"#{@imagesRoot}#{val}.png"
        if @getFileAtPath("notes/#{val}.html.md")
          hr()
          h3 "Notes"
          @include("notes/#{val}.html.md")
    else
      makeSlides(val)

#===

makeSlides(@document.nav)
