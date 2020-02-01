module ApplicationCable
  class Channel < ActionCable::Channel::Base
    def subscribed
      stream_from "channel-1"
    end

    # def unsubscribed; end
    # def speak; end
  end
end
