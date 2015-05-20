class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.integer :workout_id

      t.timestamps null: false
    end
  end
end
