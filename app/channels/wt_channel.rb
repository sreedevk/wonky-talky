class WtChannel < ApplicationCable::Channel
  def subscribed
    stream_from "default-freq"
  end

  # def speak; end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
