parseOut = (obj)->
  for key, val of obj
    if key isnt 'default'
      li "#{key} #{(->
        if obj[key]?.default then obj[key].default
        else '')()}"
    if val.constructor is Object
      ul ->
        parseOut(val)

#===
    
ul class:"menu vertical", "data-accordion-menu":"data-accordion-menu", "data-multi-open":"false", "data-slide-speed":"0", ->
  parseOut @document.nav

    
