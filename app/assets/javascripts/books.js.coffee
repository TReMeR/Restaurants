# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('#show-form').on 'click', (e) ->
    e.preventDefault()
    $('.book-form').toggle()

$(document).ready(ready)
$(document).on('page:load', ready)