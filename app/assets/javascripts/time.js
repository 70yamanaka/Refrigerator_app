$(function(){
  var now = new Date();
  var y = now.getFullYear();
  var m = now.getMonth() + 1;
  var d = now.getDate();
  var w = now.getDay();
  var wd = ['日', '月', '火', '水', '木', '金', '土'];
  $('#demo1').text(y + '年');
  $('#demo2').text(m + '月' + d + '日');
  $('#demo3').text('(' + wd[w] + ')');
});