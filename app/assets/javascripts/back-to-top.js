$(document).ready(function(){
  $(window).scroll(function() {
      if($(this).scrollTop() > 100) { // 100pxスクロールしていたら上に戻るボタンを表示
          $(".in__main__header__outside").fadeIn(); 
      } else {
          $(".in__main__header__outside").fadeOut();
      }
  });
  $(".in__main__header__outside").click(function() {
      $("body,html").animate({scrollTop:0},800); // 800msかけて上に戻る
  });
});