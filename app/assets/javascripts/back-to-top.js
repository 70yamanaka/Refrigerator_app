$(document).ready(function(){
  $(window).scroll(function() {
      if($(this).scrollTop() > 100) { 
          $(".in__main__header__back-to-top").fadeIn(); 
      } else {
          $(".in__main__header__back-to-top").fadeOut();
      }
  });
  $(".in__main__header__back-to-top").click(function() {
      $("body,html").animate({scrollTop:0},1000); 
  });
});