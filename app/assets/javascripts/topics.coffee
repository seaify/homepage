# TopicsController 下所有页面的 JS 功能
$(document).on 'ready page:load', ->

  preview = ->
    body = $('#topic_body').val()
    $("#preview").text "Loading..."

    $.post "/topics/preview",
      "body": body,
      (data) ->
        $("#preview").html data.body
      "json"

  $('.preview_button').click  preview
