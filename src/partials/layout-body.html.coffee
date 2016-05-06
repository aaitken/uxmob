div class:"row", ->
  div class:"large-2 columns", ->
    ul class:"menu vertical", ->
      li ->
        a "data-hook":"ops", href:"#", "Opportunities"
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
    img class:"", id:"ops", src:"http://d7f3jtm2h2ycg.cloudfront.net/opportunities/Opportunities%20%28png%29.png" 
    img class:"is-hidden", id:"opsNew", src:"http://prologis.s3-us-west-2.amazonaws.com/opportunities/Opportunities_%20New%20%28png%29.png"
    img class:"is-hidden", id:"opsNewHelp", src:"http://prologis.s3-us-west-2.amazonaws.com/opportunities/Opportunities_%20New%20%28png%29%20%28Type%20Help%20State%29.png"
    img class:"is-hidden", id:"opsNewError", src:"http://prologis.s3-us-west-2.amazonaws.com/opportunities/Opportunities_%20New%20%28png%29%20%28Error%20State%29.png"
    img class:"is-hidden", id:"opsNewNew", src:"http://prologis.s3-us-west-2.amazonaws.com/opportunities/Opportunities_%20New_%20New%20Customer%20Company.png"
    img class:"is-hidden", id:"op", src:"http://prologis.s3-us-west-2.amazonaws.com/opportunities/Opportunity%20-%20Overview%20%28png%29.png"
    img class:"is-hidden", id:"opInfoAcct", src:"http://prologis.s3-us-west-2.amazonaws.com/opportunities/Opportunity%20-%20Overview%20%28png%29%20%28Customer%20Account%20Info%20State%29.png"
    img class:"is-hidden", id:"opInfoBuilding", src:"http://prologis.s3-us-west-2.amazonaws.com/opportunities/Opportunity%20-%20Overview%20%28png%29%20%28Building%20Info%20State%29.png"
    img class:"is-hidden", id:"opHelpUnits", src:"http://prologis.s3-us-west-2.amazonaws.com/opportunities/Opportunity%20-%20Overview%20%28png%29%20%28Units%20Help%20State%29.png"
    img class:"is-hidden", id:"opAnalysis", src:"http://prologis.s3-us-west-2.amazonaws.com/opportunities/Opportunity%20-%20Analysis.png"

div ->
  @content

#this picks up incrementally-named document scripts as well
for url in @assets('scripts')
  script src:url, defer:"defer"
