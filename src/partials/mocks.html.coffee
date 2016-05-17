makeSlides = (obj)->
  for key, val of obj
    if val.constructor isnt Object
      div id:val.split('?')[0], class:"step ama-slide", ->
        img src:"#{@imagesRoot}#{val.split('?')[0]}.png"
        if @getFileAtPath("notes/#{val.split('?')[0]}.html.md")
          hr()
          h3 "Notes"
          text @include("notes/#{val}.html.md")
          p "&nbsp;"
    else
      makeSlides(val)

#===

makeSlides(@document.nav)
