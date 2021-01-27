class View < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :tour, optional: true
  belongs_to :point, optional: true
end
