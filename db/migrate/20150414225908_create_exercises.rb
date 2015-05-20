class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.integer :program_id
      t.integer :user_id
      t.integer :duration

      t.timestamps null: false
    end
  end
end
