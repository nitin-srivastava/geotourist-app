class DashboardController < ApplicationController
  def index
    @total_users = User.count
    @total_tours = Tour.count
    @total_user_views = View.where.not(user_id: nil).count
    @total_tour_views = View.where.not(tour_id: nil).count
    @total_point_views = View.where.not(point_id: nil).count
    @most_viewed_tour = max_viewed_tour
    @total_point_visits = Visit.count
    @latest_view_location = latest_view_location
  end

  private

  def max_viewed_tour
    View.select(:tour_id).group(:tour_id).order("COUNT(tour_id) desc").first.tour.name
  rescue
    'N/A'
  end

  def latest_view_location
    View.last.full_address rescue 'N/A'
  end
end
