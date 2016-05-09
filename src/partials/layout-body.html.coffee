div class:"row", ->
  div class:"large-2 columns", ->
    ul class:"menu vertical", ->
      li ->
        a class:"ama-is-active", "data-hook":"ops", href:"#", "Opportunities"
      li ->
        a "data-hook":"opsNew", href:"#", "Opportunities: New"
      li ->
        a "data-hook":"opsNewHelp", href:"#", "Opportunities: New (Tooltip)"
      li ->
        a "data-hook":"opsNewError", href:"#", "Opportunities: New (Error State)"
      li ->
        a "data-hook":"opsNewNew", href:"#", "Opportunities: New: New Customer Account"
      li ->
        a "data-hook":"op", href:"#", "Opportunity - Overview"
      li ->
        a "data-hook":"opInfoAcct", href:"#", "Opportunity - Overview (Customer Account Info State)"
      li ->
        a "data-hook":"opInfoBuilding", href:"#", "Opportunity - Overview (Building Info State)"
      li ->
        a "data-hook":"opHelpUnits", href:"#", "Opportunity - Overview (Units Help State)"
      li ->
        a "data-hook":"opAnalysis", href:"#", "Opportunity - Analysis"
  div class:"large-10 columns", ->
    img class:"", id:"ops", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunities.png" 
    img class:"is-hidden", id:"opsNew", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunities-new.png"
    img class:"is-hidden", id:"opsNewHelp", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunities-new-help-type.png"
    img class:"is-hidden", id:"opsNewError", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunities-new-error.png"
    img class:"is-hidden", id:"opsNewNew", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunities-new-new.png"
    img class:"is-hidden", id:"op", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunity-overview.png"
    img class:"is-hidden", id:"opInfoAcct", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunity-overview-info-customer.png"
    img class:"is-hidden", id:"opInfoBuilding", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunity-overview-info-building.png"
    img class:"is-hidden", id:"opHelpUnits", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunity-overview-help-units.png"
    img class:"is-hidden", id:"opAnalysis", src:"http://d7f3jtm2h2ycg.cloudfront.net/mocks/opportunity-analysis.png"

div ->
  @content

#this picks up incrementally-named document scripts as well
for url in @assets('scripts')
  script src:url, defer:"defer"
