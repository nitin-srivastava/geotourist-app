import consumer from "./consumer"

consumer.subscriptions.create("ViewsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    this.latestViewLocation(data.location);
  },

  latestViewLocation(location) {
    $('#latest-view-location').html(location);
  }
});
