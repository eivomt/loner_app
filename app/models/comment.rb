class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event

  after_create :broadcast_comment, :create_notification

  def broadcast_comment
    ActionCable.server.broadcast("event_show_#{event.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "comments/comment",
        locals: {
          comment: self,
          current_user: nil
        }
      ),
      notification_partial: ApplicationController.renderer.render(
        partial: 'shared/notification',
        locals: {
          comment: self
        }
      ),
      current_user_id: user.id,
      url: "/events/#{event.id}#bottom"
    })
  end



  def create_notification
    event.users.each do |event_user|
      next if user == event_user

      @alert = CommentAlert.where(user: event_user, event: event).first_or_create
      @alert.read = false
      @alert.save
    end
  end
end
