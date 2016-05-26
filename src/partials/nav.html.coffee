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
  li class:"ama-nav-title", ": Customer Contacts"
  makeNav(@document.nav.opportunities.contactsCustomer)
  li class:"ama-nav-title", ": Procuring Brokers"
  makeNav(@document.nav.opportunities.contactsBroker)
  li class:"ama-nav-title", ": Opportunity Team"
  makeNav(@document.nav.opportunities.contactsTeam)
  li class:"ama-nav-title ama-nav-group", "Brokers"
  li class:"ama-nav-title", "Record"
  makeNav(@document.nav.brokers.record)


