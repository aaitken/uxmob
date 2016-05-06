$("ul").on "click", "a", (e)->
    e.preventDefault()
    target = $(this).attr('data-hook')
    $('img').addClass('is-hidden')
    $("##{target}").removeClass('is-hidden')
