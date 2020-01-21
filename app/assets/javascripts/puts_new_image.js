$(function(){
  //querySelectorでfile_fieldを取得
  var file_field = document.querySelector('input[type=file]')
  //fileが選択された時に発火するイベント
  if($(".item-num-0").length == 1){
    $('#img-file').change(function(){
      //選択したfileのオブジェクトをpropで取得
      var file = $('input[type="file"]').prop('files')[0];
      //FileReaderのreadAsDataURLで指定したFileオブジェクトを読み込む
      var fileReader = new FileReader();
      fileReader.readAsDataURL(file);
      //読み込みが完了すると、srcにfileのURLを格納
      fileReader.onloadend = function() {
        var src = fileReader.result
        var html= `<div class="item-num-0">
                    <img src="${src}" width="114" height="80">
                   </div>`
        //image_box__container要素の前にhtmlを差し込む
        $('#image-box__container').before(html);
      }
    });
  }
});