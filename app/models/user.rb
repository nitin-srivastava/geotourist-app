class User < ApplicationRecord
  ## Associations
  has_many :tours, dependent: :destroy
  has_many :views
  has_many :followers, foreign_key: :follower_id , class_name: 'Friendship'
  has_many :followees, through: :followers
  has_many :followees, foreign_key: :followee_id , class_name: 'Friendship'
  has_many :followers, through: :followees

  def update_analytics
    ActionCable.server.broadcast('user_channel', total_users: User.count)
  end
end
