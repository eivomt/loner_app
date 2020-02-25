class RemoveimgUrlFromEvent < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :img_url
  end
end
