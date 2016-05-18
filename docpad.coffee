# Define the DocPad Configuration
docpadConfig = {

  regenerateEvery: 3600000

  #env: 'development'
  env: 'production'
  outPath: 'out'

  #===========================================
    
  templateData: {}

  environments:

    production:
      ignoreCustomPatterns: /\.sass/
      templateData:
        imagesRoot: 'http://d7f3jtm2h2ycg.cloudfront.net/mocks/'

    development:
      templateData:
        imagesRoot: '/assets/images/mocks/'

  
}

# Export the DocPad Configuration
module.exports = docpadConfig
