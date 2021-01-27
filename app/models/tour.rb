class Tour < ApplicationRecord
  ## Associations
  belongs_to :user, optional: true
  has_many :views, dependent: :destroy
  has_many :points, dependent: :destroy
end
