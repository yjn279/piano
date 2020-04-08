$ ->

  $('#calendar-input').click ->
    $(@).text('記録をやめる').css(
      color: 'black',
      'background-color': 'white'
      border: 'solid 1px',
    )
    $('#graph').hide()
    $('#main-form').show()


# btn で　開いたり閉じたり
