import consumer from "./consumer"

consumer.subscriptions.create("ViewsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    this.totalUserViews(data.total_user_views);
    this.totalTourViews(data.total_tour_views);
    this.totalPointViews(data.total_point_views);
    this.mostViewedTour(data.most_viewed_tour);
    this.latestViewLocation(data.location);
  },

  totalUserViews(count) {
    $('#total-user-views').html(count)
  },

  totalTourViews(count) {
    $('#total-tour-views').html(count)
  },

  totalPointViews(count) {
    $('#total-point-views').html(count)
  },

  mostViewedTour(tour) {
    $('#total-viewed-tour').html(tour)
  },

  latestViewLocation(location) {
    $('#latest-view-location').html(location);
  }
});
