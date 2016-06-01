# Define the DocPad Configuration
docpadConfig = {

  regenerateEvery: 3600000

  env: 'production'
  outPath: 'out'

  #===========================================
    
  templateData: {}

  environments:

    production:
      ignoreCustomPatterns: /\.sass/
      templateData:
        imagesRoot: 'http://prologis.s3.amazonaws.com/mocks/'

    development:
      templateData:
        imagesRoot: '/assets/images/mocks/'

  
}

# Export the DocPad Configuration
module.exports = docpadConfig
