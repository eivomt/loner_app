class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :people_going
      t.integer :people_needed
      t.integer :age_range
      t.datetime :time

      t.timestamps
    end
  end
end
