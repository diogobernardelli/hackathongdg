$(document).on('turbolinks:load', function() {
  if (typeof firebase !== 'undefined' ) {
    firebase.auth().signInAnonymously().then(function(response) {
      if (response.user) {
        var data = {
          uid_firebase: response.user.uid
        }

        createUser(data);
      }
    }).catch(function(error) {
      console.log('error', error);
      // Handle Errors here.
      var errorCode = error.code;
      var errorMessage = error.message;
    });
  };

  function createUser(data) {
    $.ajax({
      url: '/users',
      type: 'POST',
      data: data
    })
  }
});