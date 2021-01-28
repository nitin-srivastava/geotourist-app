import consumer from "./consumer"

consumer.subscriptions.create("TourChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#total-tours').html(data.total_tours)
  }
});
