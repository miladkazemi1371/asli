class CreatePerformeds < ActiveRecord::Migration
  def change
    create_table :performeds do |t|
      t.integer :device_id
      t.integer :work_id

      t.timestamps null: false
    end
  end
end
