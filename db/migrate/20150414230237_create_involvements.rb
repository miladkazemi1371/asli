class CreateInvolvements < ActiveRecord::Migration
  def change
    create_table :involvements do |t|
      t.integer :program_id
      t.integer :work_id

      t.timestamps null: false
    end
  end
end
