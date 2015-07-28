$(document).on 'ready page:load', ->
  console.log("hello");
  $(".owl-carousel").owlCarousel({
    autoPlay: 200000,
    items: 1
  })
