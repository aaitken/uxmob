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
  li "Opportunities"
  makeNav(@document.nav.opportunities)
  li "Brokers"
  makeNav(@document.nav.brokers)
