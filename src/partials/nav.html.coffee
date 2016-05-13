parseOut = (obj)->
  for key, val of obj
    if key isnt 'default'
      li ->
        a href:"#/#{val.default || val}", key 
        if val.default
          ul class:"menu nested vertical", ->
            parseOut(val)

#===
    
ul class:"menu vertical", "data-accordion-menu":"data-accordion-menu", "data-multi-open":"false", "data-slide-speed":"0", ->
  parseOut @document.nav

    
