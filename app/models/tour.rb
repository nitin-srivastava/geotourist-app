class Tour < ApplicationRecord
  ## Associations
  belongs_to :user, optional: true
  has_many :views, dependent: :destroy
  has_many :points, dependent: :destroy

  def update_analytics
    ActionCable.server.broadcast('tour_channel', total_tours: Tour.count)
  end
end
