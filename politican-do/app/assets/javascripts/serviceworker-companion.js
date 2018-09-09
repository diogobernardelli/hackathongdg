$(document).on('turbolinks:load', function() {
  if (typeof firebase !== 'undefined' ) {
    console.log('oi 2');
    var messaging = firebase.messaging();
    if (navigator.serviceWorker && firebase) {

      navigator.serviceWorker.register('/serviceworker.js', { scope: './' })
        .then(function(reg) {
          messaging.usePublicVapidKey('BCKUXbQcif_gXhWTMIKz4rRLoTSJBIKNdjYWDaABTHONzXds-uApGbqlbZQvTKwTqa4Lu8LHhVzjiO-dBaVZFZQ');

          messaging.requestPermission().then(function() {
            getToken();
          });

          messaging.onTokenRefresh(function() {
            getToken();
          });
        });
    }
    function getToken() {
      messaging.getToken().then(function(currentToken) {
        sendTokentToServer(currentToken)
      });
    }

    function sendTokentToServer(token) {
      $.ajax({
        url: '/users/save_token',
        type: 'POST',
        data: {token: token}
      })
    }
  }
})