class CommentsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])

    @comment = Comment.new(comment_params)
    @comment.event = @event
    @comment.user = current_user

    # and then is rendering comments/create.js.erb

    if @comment.save
      respond_to do |format|
        format.html { redirect_to event_path(@event) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    end
  end

   private

  def comment_params
    params.require(:comment).permit(:body)
  end
end



def create
    # [...]
    if @review.save
      respond_to do |format|
        format.html { redirect_to restaurant_path(@restaurant) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'restaurants/show' }
        format.js  # <-- idem
      end
    end
  end
