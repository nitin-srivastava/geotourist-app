class View < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :tour, optional: true
  belongs_to :point, optional: true

  geocoded_by :full_address
  after_validation :geocode, if: ->(obj) { obj.full_address.present? and obj.full_address_changed? }
end
