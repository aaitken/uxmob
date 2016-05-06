# Define the DocPad Configuration
docpadConfig = {

  regenerateEvery: 3600000

  #env: 'development'
  env: 'production'
  outPath: 'out'

  #===========================================

  environments:
    production:
      ignoreCustomPatterns: /\.sass/
}

# Export the DocPad Configuration
module.exports = docpadConfig
