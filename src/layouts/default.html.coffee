--- cson

styles: [
  '/assets/styles/foundation.min.css'
  '/assets/styles/app.css']

scripts: [
  '/assets/scripts/jquery.js'
  '/assets/scripts/what-input.js'
  '/assets/scripts/foundation.min.js'
  '/assets/scripts/impress.js'
  '/assets/scripts/app.js']

---

doctype 5
html ->
  head ->
    meta charset:"utf-8"
    meta name:"viewport", content:"width=device-width, initial-scale=1.0"
    title "Prologis"
    #insert styles using frontend plugin
    for url in @assets('styles')
      link rel:"stylesheet", href:url, media:"all"
  body ->
    div class:"row", ->
      div class:"large-2 columns", ->
        @partial('nav.html.coffee')
      div class:"large-10 columns ama-impress-container", ->
        div id:"impress", ->
          @partial('opportunities.html.coffee')
    #this picks up incrementally-named document scripts as well
    for url in @assets('scripts')
      script src:url, defer:"defer"
