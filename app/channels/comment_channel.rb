class CommentChannel < ApplicationCable::Channel
  def subscribed
    stream_from "event_show_#{params[:event_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
