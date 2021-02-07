class Visit < ApplicationRecord
  include UpdatableChannels
  belongs_to :point

  after_create :update_analytics
  after_destroy :update_analytics
end
