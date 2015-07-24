# TopicsController 下所有页面的 JS 功能
$(document).on 'ready page:load', ->

  preview = ->
    body = $('#topic_body').val()
    $("#preview").text "Loading..."

    $.post "/topics/preview",
      "body": body,
      (data) ->
        console.log data.body
        $("#preview").html data.body
        $(".edit").removeClass("active")
        $(".preview").addClass("active")
        $("#preview_box").show()
        $("#topic_body").hide()

  $(".edit a").click ->
      $(".preview").removeClass("active")
      $("#preview_box").hide()
      $("#topic_body").show()

  $('.preview_button').click  preview
