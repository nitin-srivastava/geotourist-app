class ViewsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "view_analytics_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
