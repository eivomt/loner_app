class CommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @comment = Comment.new(comment_params)
    @comment.event = @event
    @comment.user = current_user
    @comment.save!

    # and then is rendering comments/create.js.erb
  end

   private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
