$(document).ready(function(){
  $(window).scroll(function() {
      if($(this).scrollTop() > 100) { 
          $(".in3__main__header__back-to-top").fadeIn(); 
      } else {
          $(".in3__main__header__back-to-top").fadeOut();
      }
  });
  $(".in3__main__header__back-to-top").click(function() {
      $("body,html").animate({scrollTop:0},1000); 
  });
});