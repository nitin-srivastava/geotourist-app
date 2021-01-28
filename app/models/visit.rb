class Visit < ApplicationRecord
  belongs_to :point

  def update_analytics
    ActionCable.server.broadcast('visit_channel', total_point_visits: Visit.count)
  end
end
