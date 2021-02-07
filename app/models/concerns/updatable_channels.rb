module UpdatableChannels

  private

  def update_analytics
    ActionCable.server.broadcast(broadcast_channel, broadcast_data_hash)
  end

  def broadcast_channel
    case self.class.name
    when 'User' then 'user_channel'
    when 'Tour' then 'tour_channel'
    when 'Visit' then 'visit_channel'
    end
  end

  def broadcast_data_hash
    case self.class.name
    when 'User'
      { total_users: User.count }
    when 'Tour'
      { total_tours: Tour.count }
    when 'Visit'
      { total_point_visits: Visit.count}
    end
  end
end