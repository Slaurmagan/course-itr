class PostChannel < ApplicationCable::Channel
  def subscribed
    stream_for post
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_stream_for post
  end

  def post
  	Post.find(params[:post_id])
  end
end
