class AddReadToCommentAlerts < ActiveRecord::Migration[6.0]
  def change
    add_column :comment_alerts, :read, :boolean, default: false
  end
end
