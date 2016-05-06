--- cson

styles: [
  '/assets/styles/foundation.min.css'
  '/assets/styles/app.css']

scripts: [
  '/assets/scripts/jquery.js',
  '/assets/scripts/what-input.js',
  '/assets/scripts/foundation.min.js'
  '/assets/scripts/app.js']

---

doctype 5
html ->
  head ->
    @partial('layout-head.html.coffee')
  body ->
    @partial('layout-body.html.coffee')
