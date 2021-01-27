class Point < ApplicationRecord
  belongs_to :tour, optional: true
  has_many :views
  has_many :visits
end
