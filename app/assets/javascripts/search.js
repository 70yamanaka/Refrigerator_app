$(function() {
  $(".search-input").on("keyup", function() {
    let input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/puts/search',
      data: { keyword: input },
      dataType: 'json'
    });
  });
});