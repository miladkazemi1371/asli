class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :age
      t.string :gender
      t.integer :height
      t.integer :weight
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
