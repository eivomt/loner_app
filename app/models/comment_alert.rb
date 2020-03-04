class CommentAlert < ApplicationRecord
  belongs_to :user
  belongs_to :event

  scope :not_read, -> { where(read: false) }
end
