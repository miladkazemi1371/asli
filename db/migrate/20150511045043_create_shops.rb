class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :device_id

      t.timestamps null: false
    end
  end
end
