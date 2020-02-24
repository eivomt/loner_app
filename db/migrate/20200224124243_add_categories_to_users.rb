class AddCategoriesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :categories, :string, array: true, default: []
  end
end
