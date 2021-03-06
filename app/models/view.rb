class View < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :tour, optional: true
  belongs_to :point, optional: true

  geocoded_by :full_address
  after_validation :geocode, if: ->(obj) { obj.full_address.present? and obj.full_address_changed? }

  scope :user_counts, -> { where.not(user_id: nil).count }
  scope :tour_counts, -> { where.not(tour_id: nil).count }
  scope :point_counts, -> { where.not(point_id: nil).count }

  def self.max_viewed_tour
    select(:tour_id).group(:tour_id).order("COUNT(tour_id) desc").first.tour.name
  rescue
    'N/A'
  end

  def update_analytics
    ActionCable.server.broadcast('view_analytics_channel', analytics_data)
  end

  def self.add_random_views
    random_tour = Tour.order(Arel.sql('RANDOM()')).first
    random_point = Point.where(tour_id: random_tour.id).order(Arel.sql('RANDOM()')).first
    if random_point.present?
      view = View.new(full_address: Faker::Address.full_address, point_id: random_point.id,
                       user_id: random_tour.user_id, tour_id: random_tour.id)
      if view.save
        view.update_analytics
      end
    end
  end

  private

  def analytics_data
    {
      total_user_views: View.user_counts,
      total_tour_views: View.tour_counts,
      total_point_views: View.point_counts,
      most_viewed_tour: View.max_viewed_tour,
      location: self.full_address
    }
  end
end
