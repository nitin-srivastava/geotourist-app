class TourChannel < ApplicationCable::Channel
  def subscribed
    stream_from "tour_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
