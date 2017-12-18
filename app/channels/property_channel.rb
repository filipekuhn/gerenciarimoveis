class PropertyChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    puts "created"
    stream_from "propertynews"
  end

  def unsubscribed
   # Any cleanup needed when channel is unsubscribed
   puts "unsubscribed"
  end
end
