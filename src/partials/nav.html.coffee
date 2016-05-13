isObject = (item)->
  if item.constructor is Object then return true

parseOut = (obj)->
  for key, val of obj
    li key
    if isObject(val)
      ul ->
        parseOut(val)

#===
    
ul class:"menu vertical", "data-accordion-menu":"data-accordion-menu", "data-multi-open":"false", "data-slide-speed":"0", ->
  parseOut @document.nav

    
