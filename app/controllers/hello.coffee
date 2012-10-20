define ['jquery'], ($) ->

  init: (name) ->
    $('h1').on 'click', ->
      $('p').text "This might a start for a beautiful program, #{name} <3"
