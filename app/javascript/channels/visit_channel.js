import consumer from "./consumer"

consumer.subscriptions.create("VisitChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    $('#total-point-visits').html(data.total_point_visits)
  }
});
