class DashboardController < ApplicationController
  def index
    @total_users = User.count
    @total_tours = Tour.count
    @total_user_views = View.user_counts
    @total_tour_views = View.tour_counts
    @total_point_views = View.point_counts
    @most_viewed_tour = View.max_viewed_tour
    @total_point_visits = Visit.count
    @latest_view_location = latest_view_location
  end

  private

  def latest_view_location
    View.last.full_address rescue 'N/A'
  end
end
