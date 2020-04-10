$ ->

  $('#calendar-input').click ->

    if $('#calendar-input').hasClass('open')
      $(@).removeClass('open')
      $(@).text('記録する').css(
        'color': 'white',
        'background-color': ''
      )
      $('#graph').show()
      $('#main-form').hide()

    else
      $(@).addClass('open')
      $(@).text('記録をやめる').css(
        'color': 'black',
        'background-color': 'white'
      )
      $('#graph').hide()
      $('#main-form').show()
