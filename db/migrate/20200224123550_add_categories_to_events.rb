class AddCategoriesToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :categories, :string
  end
end
