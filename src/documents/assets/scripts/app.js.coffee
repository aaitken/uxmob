$("ul").on "click", "a", (e)->
  $this = $(this)
  e.preventDefault()
  $('a').removeClass('ama-is-active')
  $this.addClass('ama-is-active')
  target = $this.attr('data-hook')
  $('img').addClass('is-hidden')
  $("##{target}").removeClass('is-hidden')
