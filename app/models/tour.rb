class Tour < ApplicationRecord
  include UpdatableChannels
  ## Associations
  belongs_to :user, optional: true
  has_many :views, dependent: :destroy
  has_many :points, dependent: :destroy

  after_create :update_analytics
  after_destroy :update_analytics
end
