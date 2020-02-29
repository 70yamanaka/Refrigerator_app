$(document).ready(function(){
  $(window).scroll(function() {
      if($(this).scrollTop() > 100) { 
          $(".in2__main__header__back-to-top").fadeIn(); 
      } else {
          $(".in2__main__header__back-to-top").fadeOut();
      }
  });
  $(".in2__main__header__back-to-top").click(function() {
      $("body,html").animate({scrollTop:0},1000); 
  });
});