$(document).ready(function(){
  $(window).scroll(function() {
      if($(this).scrollTop() > 100) { 
          $(".in__main__header__outside").fadeIn(); 
      } else {
          $(".in__main__header__outside").fadeOut();
      }
  });
  $(".in__main__header__outside").click(function() {
      $("body,html").animate({scrollTop:0},1000); 
  });
});