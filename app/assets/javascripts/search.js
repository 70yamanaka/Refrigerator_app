$(function() {

  var search_list = $("#result");

  function appendPut(put) {
    var html = `<div class="in__main__center__search__main__data")">
                  <div class= "in__main__center__search__main__data__link">
                    <a href="/puts/${put.id}" "method="get"></a>
                    <div class= "in__main__center__search__main__data__link__image" >
                    <img src=${put.image.url} width="120" height="120" style= "border-radius: 30px;">
                      <div class= "in__main__center__search__main__data__link__image__name">
                        ${put.name}
                      </div>
                      <div class= "in__main__center__search__main__data__link__image__bestby_date">
                        ${put.bestby_date_y}/${put.bestby_date_m}/${put.bestby_date_d}
                      </div>
                    </div>
                  </div>
                </div>`
    search_list.append(html);
  }

  function appendErrMsgToHTML(msg) {
  var html = `<div class='name'>${ msg }</div>`
  search_list.append(html);
  }

  $(".in__main__header__search-form__search-input").on("keyup", function() {
    var input = $(".in__main__header__search-form__search-input").val();
    $.ajax({
      type: 'GET',
      url: '/puts/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(puts) {
      $("#result").empty();
      if (puts.length !== 0) {
        puts.forEach(function(put){
          appendPut(put);
        });
      }
      else {
        appendErrMsgToHTML("一致する商品がありません");
      }
    })
  });
});