makeNav = (obj)->
  for key, val of obj
    if key isnt 'default'
      li ->
        if !val.views
          a href:"#/#{val.default || val}", key 
          if val.default
            ul class:"menu nested vertical", ->
              makeNav(val)
        else
          a "data-id":"ama-delegator", key
          ul class:"menu nested vertical", ->
              makeNav(val.views)
          

#===

ul id:"ama-menu", class:"menu vertical", "data-accordion-menu":"true", "data-multi-open":"false", "data-slide-speed":"0", ->
  li "Opportunities"
  makeNav(@document.nav.opportunities)
  li "Brokers"
  makeNav(@document.nav.brokers)
