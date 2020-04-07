$ ->

  $('#signup-show').click ->
    $('#top-modal').fadeIn().css('display', 'flex')
    $('#signup-form').fadeIn().css('display', 'flex')

  $('#login-show').click ->
    $('#top-modal').fadeIn().css('display', 'flex')
    $('#login-form').fadeIn().css('display', 'flex')

  $('#close-modal').click ->
    $('#top-modal').fadeOut()
    $('#signup-form').fadeOut()
    $('#login-form').fadeOut()
