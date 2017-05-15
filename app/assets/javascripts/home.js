$(function() {
  $('.heart').click(function(event) {
    var token = $('meta[name="csrf-token"]').attr('content');
    var $target = $(event.target);
    var $thumbnail = $(event.target).closest('.thumbnail');
    var $likes = $thumbnail.find('.likes');
    var stringId = $(event.target).closest('.thumbnail').attr('id');
    var id = parseInt(stringId.split('-')[1])

    $.ajax({
      url: '/api/v1/favorite_photos/' + id,
      type: 'DELETE',
      beforeSend: function(xhr) {
        xhr.setRequestHeader('X-CSRF-Token', token)
      }
    })
    .done(function() {
      $target.addClass('heart-empty');
      $target.addClass('glyphicon-heart-empty');
      $target.removeClass('glyphicon-heart');
      $target.removeClass('heart');
      $likes.text(parseInt($likes.text()) - 1);
    })
    .fail(function(jqXHR, textStatus) {
      console.log("error", jqXHR.status);
    })
    .always(function() {
      console.log("complete");
    });
  });

  $('.heart-empty').click(function(event) {
    var token = $('meta[name="csrf-token"]').attr('content');
    var $target = $(event.target);
    var $thumbnail = $(event.target).closest('.thumbnail');
    var $likes = $thumbnail.find('.likes');
    var stringId = $(event.target).closest('.thumbnail').attr('id');
    var id = parseInt(stringId.split('-')[1])

    $.ajax({
      url: '/api/v1/favorite_photos/' + id,
      type: 'PUT',
      beforeSend: function(xhr) {
        xhr.setRequestHeader('X-CSRF-Token', token)
      }
    })
    .done(function() {
      $target.removeClass('heart-empty');
      $target.removeClass('glyphicon-heart-empty');
      $target.addClass('glyphicon-heart');
      $target.addClass('heart');
      $likes.text(parseInt($likes.text()) + 1);
    })
    .fail(function(jqXHR, textStatus) {
      if(jqXHR.status == 401) {
        alert("Log in to favorite items...");
      }
    })
    .always(function() {
      console.log( "complete" );
    });
  });
});
