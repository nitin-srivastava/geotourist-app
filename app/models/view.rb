class View < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :tour, optional: true
  belongs_to :point, optional: true

  geocoded_by :full_address
  after_validation :geocode, if: ->(obj) { obj.full_address.present? and obj.full_address_changed? }

  def publish_location
    ActionCable.server.broadcast('view_analytics_channel', location: self.full_address)
  end
end
