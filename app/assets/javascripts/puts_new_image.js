$('#myImage').on('change', function (e) {
  var reader = new FileReader();
  reader.onload = function (e) {
      $("#preview").attr('image', e.target.result);
  }
  reader.readAsDataURL(e.target.files[0]);
});