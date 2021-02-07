class User < ApplicationRecord
  include UpdatableChannels
  ## Associations
  has_many :tours, dependent: :destroy
  has_many :views
  has_many :followers, foreign_key: :follower_id , class_name: 'Friendship'
  has_many :followees, through: :followers
  has_many :followees, foreign_key: :followee_id , class_name: 'Friendship'
  has_many :followers, through: :followees

  after_create :update_analytics
  after_destroy :update_analytics
end
