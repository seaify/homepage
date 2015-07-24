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
        #$(this).parent().addClass("active")
        $("#preview").show()
        $("#topic_body").hide()
        #self.preview($(textarea).val())

  $(".edit a").click ->
      $(".preview").removeClass("active")
      $(this).parent().addClass("active")
      $("#preview").hide()
      $("#topic_body").show()

  $('.preview_button').click  preview
