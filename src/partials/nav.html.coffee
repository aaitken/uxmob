makeNav = (obj)->
  for key, val of obj
    if key isnt 'default'
      li ->
        a href:"#/#{val.default || val}", key 
        if val.default
          ul class:"menu nested vertical", ->
            makeNav(val)

#===

ul id:"ama-menu", class:"menu vertical", "data-accordion-menu":"true", "data-multi-open":"false", "data-slide-speed":"0", ->
  li class:"ama-nav-title ama-nav-group", "Opportunities"
  makeNav(@document.nav.opportunities.index)
  li class:"ama-nav-title", "Record"
  makeNav(@document.nav.opportunities.record)
  li class:"ama-nav-title ama-nav-group", "Brokers"
  li class:"ama-nav-title", "Record"
  makeNav(@document.nav.brokers.record)

