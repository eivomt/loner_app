class AddJoinedToEventUser < ActiveRecord::Migration[6.0]
  def change
    add_column :event_users, :joined, :boolean, default: :false
  end
end
