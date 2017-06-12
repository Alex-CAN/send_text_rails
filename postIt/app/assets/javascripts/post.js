$( document ).ready(function() {

    $('.send').on('submit', function(){
      event.preventDefault();
      $('.request-list').append('<%= j render()%>')
      });
    })
});