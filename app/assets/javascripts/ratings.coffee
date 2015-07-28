$(document).on 'ready page:load', ->
  console.log("hello");
  $(".owl-carousel").owlCarousel({
    autoPlay: 2000,
    items: 1
  })
