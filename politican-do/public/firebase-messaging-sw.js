importScripts('https://www.gstatic.com/firebasejs/5.3.1/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/5.3.1/firebase-messaging.js');

firebase.initializeApp({
  'messagingSenderId': '172945067313'
});

const messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function(payload) {
  return self.registration.showNotification(payload.notification.title, payload);
});

