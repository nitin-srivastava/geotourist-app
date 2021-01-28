class VisitChannel < ApplicationCable::Channel
  def subscribed
    stream_from "visit_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
