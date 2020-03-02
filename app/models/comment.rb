class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :event
  # belongs_to :event, class_name: "Event", foreign_key: :event_id
  after_create :broadcast_comment

  def broadcast_comment
    ActionCable.server.broadcast("event_show_#{event.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "comments/comment",
        locals: {
          comment: self,
          current_user: nil
        }
      ),
      current_user_id: user.id
    })
  end
end
