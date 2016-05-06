meta charset:"utf-8"
meta name:"viewport", content:"width=device-width, initial-scale=1.0"
title "Prologis"

#insert styles using frontend plugin
for url in @assets('styles')
  link rel:"stylesheet", href:url, media:"all"
